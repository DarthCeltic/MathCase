import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard006

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_32799 : ∀ k : Nat,
    iterate (1048576 * k + 32799) 32 = 531441 * k + 16624 ∧
      531441 * k + 16624 < 1048576 * k + 32799 := by
  intro k
  have h1 : C (1048576 * k + 32799) = 3145728 * k + 98398 := by
    unfold C
    simp [show (1048576 * k + 32799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 98398) = 1572864 * k + 49199 := by
    unfold C
    simp [show (3145728 * k + 98398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 49199) = 4718592 * k + 147598 := by
    unfold C
    simp [show (1572864 * k + 49199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 147598) = 2359296 * k + 73799 := by
    unfold C
    simp [show (4718592 * k + 147598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 73799) = 7077888 * k + 221398 := by
    unfold C
    simp [show (2359296 * k + 73799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 221398) = 3538944 * k + 110699 := by
    unfold C
    simp [show (7077888 * k + 221398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 110699) = 10616832 * k + 332098 := by
    unfold C
    simp [show (3538944 * k + 110699) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 332098) = 5308416 * k + 166049 := by
    unfold C
    simp [show (10616832 * k + 332098) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 166049) = 15925248 * k + 498148 := by
    unfold C
    simp [show (5308416 * k + 166049) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 498148) = 7962624 * k + 249074 := by
    unfold C
    simp [show (15925248 * k + 498148) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 249074) = 3981312 * k + 124537 := by
    unfold C
    simp [show (7962624 * k + 249074) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 124537) = 11943936 * k + 373612 := by
    unfold C
    simp [show (3981312 * k + 124537) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 373612) = 5971968 * k + 186806 := by
    unfold C
    simp [show (11943936 * k + 373612) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 186806) = 2985984 * k + 93403 := by
    unfold C
    simp [show (5971968 * k + 186806) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 93403) = 8957952 * k + 280210 := by
    unfold C
    simp [show (2985984 * k + 93403) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 280210) = 4478976 * k + 140105 := by
    unfold C
    simp [show (8957952 * k + 280210) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 140105) = 13436928 * k + 420316 := by
    unfold C
    simp [show (4478976 * k + 140105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 420316) = 6718464 * k + 210158 := by
    unfold C
    simp [show (13436928 * k + 420316) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 210158) = 3359232 * k + 105079 := by
    unfold C
    simp [show (6718464 * k + 210158) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 105079) = 10077696 * k + 315238 := by
    unfold C
    simp [show (3359232 * k + 105079) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 315238) = 5038848 * k + 157619 := by
    unfold C
    simp [show (10077696 * k + 315238) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 157619) = 15116544 * k + 472858 := by
    unfold C
    simp [show (5038848 * k + 157619) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 472858) = 7558272 * k + 236429 := by
    unfold C
    simp [show (15116544 * k + 472858) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 236429) = 22674816 * k + 709288 := by
    unfold C
    simp [show (7558272 * k + 236429) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 709288) = 11337408 * k + 354644 := by
    unfold C
    simp [show (22674816 * k + 709288) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 354644) = 5668704 * k + 177322 := by
    unfold C
    simp [show (11337408 * k + 354644) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 177322) = 2834352 * k + 88661 := by
    unfold C
    simp [show (5668704 * k + 177322) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 88661) = 8503056 * k + 265984 := by
    unfold C
    simp [show (2834352 * k + 88661) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 265984) = 4251528 * k + 132992 := by
    unfold C
    simp [show (8503056 * k + 265984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 132992) = 2125764 * k + 66496 := by
    unfold C
    simp [show (4251528 * k + 132992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 66496) = 1062882 * k + 33248 := by
    unfold C
    simp [show (2125764 * k + 66496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 33248) = 531441 * k + 16624 := by
    unfold C
    simp [show (1062882 * k + 33248) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 32799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 32799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_32935 : ∀ k : Nat,
    iterate (1048576 * k + 32935) 32 = 531441 * k + 16693 ∧
      531441 * k + 16693 < 1048576 * k + 32935 := by
  intro k
  have h1 : C (1048576 * k + 32935) = 3145728 * k + 98806 := by
    unfold C
    simp [show (1048576 * k + 32935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 98806) = 1572864 * k + 49403 := by
    unfold C
    simp [show (3145728 * k + 98806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 49403) = 4718592 * k + 148210 := by
    unfold C
    simp [show (1572864 * k + 49403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 148210) = 2359296 * k + 74105 := by
    unfold C
    simp [show (4718592 * k + 148210) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 74105) = 7077888 * k + 222316 := by
    unfold C
    simp [show (2359296 * k + 74105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 222316) = 3538944 * k + 111158 := by
    unfold C
    simp [show (7077888 * k + 222316) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 111158) = 1769472 * k + 55579 := by
    unfold C
    simp [show (3538944 * k + 111158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 55579) = 5308416 * k + 166738 := by
    unfold C
    simp [show (1769472 * k + 55579) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 166738) = 2654208 * k + 83369 := by
    unfold C
    simp [show (5308416 * k + 166738) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 83369) = 7962624 * k + 250108 := by
    unfold C
    simp [show (2654208 * k + 83369) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 250108) = 3981312 * k + 125054 := by
    unfold C
    simp [show (7962624 * k + 250108) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 125054) = 1990656 * k + 62527 := by
    unfold C
    simp [show (3981312 * k + 125054) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 62527) = 5971968 * k + 187582 := by
    unfold C
    simp [show (1990656 * k + 62527) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 187582) = 2985984 * k + 93791 := by
    unfold C
    simp [show (5971968 * k + 187582) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 93791) = 8957952 * k + 281374 := by
    unfold C
    simp [show (2985984 * k + 93791) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 281374) = 4478976 * k + 140687 := by
    unfold C
    simp [show (8957952 * k + 281374) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 140687) = 13436928 * k + 422062 := by
    unfold C
    simp [show (4478976 * k + 140687) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 422062) = 6718464 * k + 211031 := by
    unfold C
    simp [show (13436928 * k + 422062) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 211031) = 20155392 * k + 633094 := by
    unfold C
    simp [show (6718464 * k + 211031) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 633094) = 10077696 * k + 316547 := by
    unfold C
    simp [show (20155392 * k + 633094) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 316547) = 30233088 * k + 949642 := by
    unfold C
    simp [show (10077696 * k + 316547) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 949642) = 15116544 * k + 474821 := by
    unfold C
    simp [show (30233088 * k + 949642) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 474821) = 45349632 * k + 1424464 := by
    unfold C
    simp [show (15116544 * k + 474821) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 1424464) = 22674816 * k + 712232 := by
    unfold C
    simp [show (45349632 * k + 1424464) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 712232) = 11337408 * k + 356116 := by
    unfold C
    simp [show (22674816 * k + 712232) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 356116) = 5668704 * k + 178058 := by
    unfold C
    simp [show (11337408 * k + 356116) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 178058) = 2834352 * k + 89029 := by
    unfold C
    simp [show (5668704 * k + 178058) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 89029) = 8503056 * k + 267088 := by
    unfold C
    simp [show (2834352 * k + 89029) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 267088) = 4251528 * k + 133544 := by
    unfold C
    simp [show (8503056 * k + 267088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 133544) = 2125764 * k + 66772 := by
    unfold C
    simp [show (4251528 * k + 133544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 66772) = 1062882 * k + 33386 := by
    unfold C
    simp [show (2125764 * k + 66772) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 33386) = 531441 * k + 16693 := by
    unfold C
    simp [show (1062882 * k + 33386) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 32935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 32935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_33511 : ∀ k : Nat,
    iterate (1048576 * k + 33511) 32 = 531441 * k + 16985 ∧
      531441 * k + 16985 < 1048576 * k + 33511 := by
  intro k
  have h1 : C (1048576 * k + 33511) = 3145728 * k + 100534 := by
    unfold C
    simp [show (1048576 * k + 33511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 100534) = 1572864 * k + 50267 := by
    unfold C
    simp [show (3145728 * k + 100534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 50267) = 4718592 * k + 150802 := by
    unfold C
    simp [show (1572864 * k + 50267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 150802) = 2359296 * k + 75401 := by
    unfold C
    simp [show (4718592 * k + 150802) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 75401) = 7077888 * k + 226204 := by
    unfold C
    simp [show (2359296 * k + 75401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 226204) = 3538944 * k + 113102 := by
    unfold C
    simp [show (7077888 * k + 226204) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 113102) = 1769472 * k + 56551 := by
    unfold C
    simp [show (3538944 * k + 113102) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 56551) = 5308416 * k + 169654 := by
    unfold C
    simp [show (1769472 * k + 56551) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 169654) = 2654208 * k + 84827 := by
    unfold C
    simp [show (5308416 * k + 169654) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 84827) = 7962624 * k + 254482 := by
    unfold C
    simp [show (2654208 * k + 84827) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 254482) = 3981312 * k + 127241 := by
    unfold C
    simp [show (7962624 * k + 254482) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 127241) = 11943936 * k + 381724 := by
    unfold C
    simp [show (3981312 * k + 127241) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 381724) = 5971968 * k + 190862 := by
    unfold C
    simp [show (11943936 * k + 381724) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 190862) = 2985984 * k + 95431 := by
    unfold C
    simp [show (5971968 * k + 190862) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 95431) = 8957952 * k + 286294 := by
    unfold C
    simp [show (2985984 * k + 95431) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 286294) = 4478976 * k + 143147 := by
    unfold C
    simp [show (8957952 * k + 286294) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 143147) = 13436928 * k + 429442 := by
    unfold C
    simp [show (4478976 * k + 143147) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 429442) = 6718464 * k + 214721 := by
    unfold C
    simp [show (13436928 * k + 429442) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 214721) = 20155392 * k + 644164 := by
    unfold C
    simp [show (6718464 * k + 214721) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 644164) = 10077696 * k + 322082 := by
    unfold C
    simp [show (20155392 * k + 644164) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 322082) = 5038848 * k + 161041 := by
    unfold C
    simp [show (10077696 * k + 322082) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 161041) = 15116544 * k + 483124 := by
    unfold C
    simp [show (5038848 * k + 161041) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 483124) = 7558272 * k + 241562 := by
    unfold C
    simp [show (15116544 * k + 483124) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 241562) = 3779136 * k + 120781 := by
    unfold C
    simp [show (7558272 * k + 241562) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 120781) = 11337408 * k + 362344 := by
    unfold C
    simp [show (3779136 * k + 120781) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 362344) = 5668704 * k + 181172 := by
    unfold C
    simp [show (11337408 * k + 362344) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 181172) = 2834352 * k + 90586 := by
    unfold C
    simp [show (5668704 * k + 181172) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 90586) = 1417176 * k + 45293 := by
    unfold C
    simp [show (2834352 * k + 90586) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 45293) = 4251528 * k + 135880 := by
    unfold C
    simp [show (1417176 * k + 45293) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 135880) = 2125764 * k + 67940 := by
    unfold C
    simp [show (4251528 * k + 135880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 67940) = 1062882 * k + 33970 := by
    unfold C
    simp [show (2125764 * k + 67940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 33970) = 531441 * k + 16985 := by
    unfold C
    simp [show (1062882 * k + 33970) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 33511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 33511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_33535 : ∀ k : Nat,
    iterate (1048576 * k + 33535) 32 = 531441 * k + 16997 ∧
      531441 * k + 16997 < 1048576 * k + 33535 := by
  intro k
  have h1 : C (1048576 * k + 33535) = 3145728 * k + 100606 := by
    unfold C
    simp [show (1048576 * k + 33535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 100606) = 1572864 * k + 50303 := by
    unfold C
    simp [show (3145728 * k + 100606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 50303) = 4718592 * k + 150910 := by
    unfold C
    simp [show (1572864 * k + 50303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 150910) = 2359296 * k + 75455 := by
    unfold C
    simp [show (4718592 * k + 150910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 75455) = 7077888 * k + 226366 := by
    unfold C
    simp [show (2359296 * k + 75455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 226366) = 3538944 * k + 113183 := by
    unfold C
    simp [show (7077888 * k + 226366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 113183) = 10616832 * k + 339550 := by
    unfold C
    simp [show (3538944 * k + 113183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 339550) = 5308416 * k + 169775 := by
    unfold C
    simp [show (10616832 * k + 339550) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 169775) = 15925248 * k + 509326 := by
    unfold C
    simp [show (5308416 * k + 169775) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 509326) = 7962624 * k + 254663 := by
    unfold C
    simp [show (15925248 * k + 509326) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 254663) = 23887872 * k + 763990 := by
    unfold C
    simp [show (7962624 * k + 254663) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 763990) = 11943936 * k + 381995 := by
    unfold C
    simp [show (23887872 * k + 763990) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 381995) = 35831808 * k + 1145986 := by
    unfold C
    simp [show (11943936 * k + 381995) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1145986) = 17915904 * k + 572993 := by
    unfold C
    simp [show (35831808 * k + 1145986) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 572993) = 53747712 * k + 1718980 := by
    unfold C
    simp [show (17915904 * k + 572993) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 1718980) = 26873856 * k + 859490 := by
    unfold C
    simp [show (53747712 * k + 1718980) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 859490) = 13436928 * k + 429745 := by
    unfold C
    simp [show (26873856 * k + 859490) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 429745) = 40310784 * k + 1289236 := by
    unfold C
    simp [show (13436928 * k + 429745) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 1289236) = 20155392 * k + 644618 := by
    unfold C
    simp [show (40310784 * k + 1289236) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 644618) = 10077696 * k + 322309 := by
    unfold C
    simp [show (20155392 * k + 644618) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 322309) = 30233088 * k + 966928 := by
    unfold C
    simp [show (10077696 * k + 322309) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 966928) = 15116544 * k + 483464 := by
    unfold C
    simp [show (30233088 * k + 966928) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 483464) = 7558272 * k + 241732 := by
    unfold C
    simp [show (15116544 * k + 483464) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 241732) = 3779136 * k + 120866 := by
    unfold C
    simp [show (7558272 * k + 241732) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 120866) = 1889568 * k + 60433 := by
    unfold C
    simp [show (3779136 * k + 120866) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 60433) = 5668704 * k + 181300 := by
    unfold C
    simp [show (1889568 * k + 60433) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 181300) = 2834352 * k + 90650 := by
    unfold C
    simp [show (5668704 * k + 181300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 90650) = 1417176 * k + 45325 := by
    unfold C
    simp [show (2834352 * k + 90650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 45325) = 4251528 * k + 135976 := by
    unfold C
    simp [show (1417176 * k + 45325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 135976) = 2125764 * k + 67988 := by
    unfold C
    simp [show (4251528 * k + 135976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 67988) = 1062882 * k + 33994 := by
    unfold C
    simp [show (2125764 * k + 67988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 33994) = 531441 * k + 16997 := by
    unfold C
    simp [show (1062882 * k + 33994) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 33535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 33535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_33819 : ∀ k : Nat,
    iterate (1048576 * k + 33819) 32 = 531441 * k + 17141 ∧
      531441 * k + 17141 < 1048576 * k + 33819 := by
  intro k
  have h1 : C (1048576 * k + 33819) = 3145728 * k + 101458 := by
    unfold C
    simp [show (1048576 * k + 33819) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 101458) = 1572864 * k + 50729 := by
    unfold C
    simp [show (3145728 * k + 101458) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 50729) = 4718592 * k + 152188 := by
    unfold C
    simp [show (1572864 * k + 50729) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 152188) = 2359296 * k + 76094 := by
    unfold C
    simp [show (4718592 * k + 152188) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 76094) = 1179648 * k + 38047 := by
    unfold C
    simp [show (2359296 * k + 76094) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 38047) = 3538944 * k + 114142 := by
    unfold C
    simp [show (1179648 * k + 38047) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 114142) = 1769472 * k + 57071 := by
    unfold C
    simp [show (3538944 * k + 114142) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 57071) = 5308416 * k + 171214 := by
    unfold C
    simp [show (1769472 * k + 57071) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 171214) = 2654208 * k + 85607 := by
    unfold C
    simp [show (5308416 * k + 171214) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 85607) = 7962624 * k + 256822 := by
    unfold C
    simp [show (2654208 * k + 85607) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 256822) = 3981312 * k + 128411 := by
    unfold C
    simp [show (7962624 * k + 256822) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 128411) = 11943936 * k + 385234 := by
    unfold C
    simp [show (3981312 * k + 128411) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 385234) = 5971968 * k + 192617 := by
    unfold C
    simp [show (11943936 * k + 385234) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 192617) = 17915904 * k + 577852 := by
    unfold C
    simp [show (5971968 * k + 192617) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 577852) = 8957952 * k + 288926 := by
    unfold C
    simp [show (17915904 * k + 577852) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 288926) = 4478976 * k + 144463 := by
    unfold C
    simp [show (8957952 * k + 288926) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 144463) = 13436928 * k + 433390 := by
    unfold C
    simp [show (4478976 * k + 144463) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 433390) = 6718464 * k + 216695 := by
    unfold C
    simp [show (13436928 * k + 433390) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 216695) = 20155392 * k + 650086 := by
    unfold C
    simp [show (6718464 * k + 216695) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 650086) = 10077696 * k + 325043 := by
    unfold C
    simp [show (20155392 * k + 650086) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 325043) = 30233088 * k + 975130 := by
    unfold C
    simp [show (10077696 * k + 325043) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 975130) = 15116544 * k + 487565 := by
    unfold C
    simp [show (30233088 * k + 975130) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 487565) = 45349632 * k + 1462696 := by
    unfold C
    simp [show (15116544 * k + 487565) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 1462696) = 22674816 * k + 731348 := by
    unfold C
    simp [show (45349632 * k + 1462696) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 731348) = 11337408 * k + 365674 := by
    unfold C
    simp [show (22674816 * k + 731348) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 365674) = 5668704 * k + 182837 := by
    unfold C
    simp [show (11337408 * k + 365674) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 182837) = 17006112 * k + 548512 := by
    unfold C
    simp [show (5668704 * k + 182837) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 548512) = 8503056 * k + 274256 := by
    unfold C
    simp [show (17006112 * k + 548512) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 274256) = 4251528 * k + 137128 := by
    unfold C
    simp [show (8503056 * k + 274256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 137128) = 2125764 * k + 68564 := by
    unfold C
    simp [show (4251528 * k + 137128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 68564) = 1062882 * k + 34282 := by
    unfold C
    simp [show (2125764 * k + 68564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 34282) = 531441 * k + 17141 := by
    unfold C
    simp [show (1062882 * k + 34282) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 33819) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 33819)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_34983 : ∀ k : Nat,
    iterate (1048576 * k + 34983) 32 = 531441 * k + 17731 ∧
      531441 * k + 17731 < 1048576 * k + 34983 := by
  intro k
  have h1 : C (1048576 * k + 34983) = 3145728 * k + 104950 := by
    unfold C
    simp [show (1048576 * k + 34983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 104950) = 1572864 * k + 52475 := by
    unfold C
    simp [show (3145728 * k + 104950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 52475) = 4718592 * k + 157426 := by
    unfold C
    simp [show (1572864 * k + 52475) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 157426) = 2359296 * k + 78713 := by
    unfold C
    simp [show (4718592 * k + 157426) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 78713) = 7077888 * k + 236140 := by
    unfold C
    simp [show (2359296 * k + 78713) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 236140) = 3538944 * k + 118070 := by
    unfold C
    simp [show (7077888 * k + 236140) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 118070) = 1769472 * k + 59035 := by
    unfold C
    simp [show (3538944 * k + 118070) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 59035) = 5308416 * k + 177106 := by
    unfold C
    simp [show (1769472 * k + 59035) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 177106) = 2654208 * k + 88553 := by
    unfold C
    simp [show (5308416 * k + 177106) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 88553) = 7962624 * k + 265660 := by
    unfold C
    simp [show (2654208 * k + 88553) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 265660) = 3981312 * k + 132830 := by
    unfold C
    simp [show (7962624 * k + 265660) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 132830) = 1990656 * k + 66415 := by
    unfold C
    simp [show (3981312 * k + 132830) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 66415) = 5971968 * k + 199246 := by
    unfold C
    simp [show (1990656 * k + 66415) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 199246) = 2985984 * k + 99623 := by
    unfold C
    simp [show (5971968 * k + 199246) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 99623) = 8957952 * k + 298870 := by
    unfold C
    simp [show (2985984 * k + 99623) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 298870) = 4478976 * k + 149435 := by
    unfold C
    simp [show (8957952 * k + 298870) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 149435) = 13436928 * k + 448306 := by
    unfold C
    simp [show (4478976 * k + 149435) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 448306) = 6718464 * k + 224153 := by
    unfold C
    simp [show (13436928 * k + 448306) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 224153) = 20155392 * k + 672460 := by
    unfold C
    simp [show (6718464 * k + 224153) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 672460) = 10077696 * k + 336230 := by
    unfold C
    simp [show (20155392 * k + 672460) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 336230) = 5038848 * k + 168115 := by
    unfold C
    simp [show (10077696 * k + 336230) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 168115) = 15116544 * k + 504346 := by
    unfold C
    simp [show (5038848 * k + 168115) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 504346) = 7558272 * k + 252173 := by
    unfold C
    simp [show (15116544 * k + 504346) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 252173) = 22674816 * k + 756520 := by
    unfold C
    simp [show (7558272 * k + 252173) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 756520) = 11337408 * k + 378260 := by
    unfold C
    simp [show (22674816 * k + 756520) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 378260) = 5668704 * k + 189130 := by
    unfold C
    simp [show (11337408 * k + 378260) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 189130) = 2834352 * k + 94565 := by
    unfold C
    simp [show (5668704 * k + 189130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 94565) = 8503056 * k + 283696 := by
    unfold C
    simp [show (2834352 * k + 94565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 283696) = 4251528 * k + 141848 := by
    unfold C
    simp [show (8503056 * k + 283696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 141848) = 2125764 * k + 70924 := by
    unfold C
    simp [show (4251528 * k + 141848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 70924) = 1062882 * k + 35462 := by
    unfold C
    simp [show (2125764 * k + 70924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 35462) = 531441 * k + 17731 := by
    unfold C
    simp [show (1062882 * k + 35462) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 34983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 34983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_35327 : ∀ k : Nat,
    iterate (1048576 * k + 35327) 32 = 531441 * k + 17905 ∧
      531441 * k + 17905 < 1048576 * k + 35327 := by
  intro k
  have h1 : C (1048576 * k + 35327) = 3145728 * k + 105982 := by
    unfold C
    simp [show (1048576 * k + 35327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 105982) = 1572864 * k + 52991 := by
    unfold C
    simp [show (3145728 * k + 105982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 52991) = 4718592 * k + 158974 := by
    unfold C
    simp [show (1572864 * k + 52991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 158974) = 2359296 * k + 79487 := by
    unfold C
    simp [show (4718592 * k + 158974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 79487) = 7077888 * k + 238462 := by
    unfold C
    simp [show (2359296 * k + 79487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 238462) = 3538944 * k + 119231 := by
    unfold C
    simp [show (7077888 * k + 238462) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 119231) = 10616832 * k + 357694 := by
    unfold C
    simp [show (3538944 * k + 119231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 357694) = 5308416 * k + 178847 := by
    unfold C
    simp [show (10616832 * k + 357694) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 178847) = 15925248 * k + 536542 := by
    unfold C
    simp [show (5308416 * k + 178847) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 536542) = 7962624 * k + 268271 := by
    unfold C
    simp [show (15925248 * k + 536542) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 268271) = 23887872 * k + 804814 := by
    unfold C
    simp [show (7962624 * k + 268271) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 804814) = 11943936 * k + 402407 := by
    unfold C
    simp [show (23887872 * k + 804814) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 402407) = 35831808 * k + 1207222 := by
    unfold C
    simp [show (11943936 * k + 402407) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1207222) = 17915904 * k + 603611 := by
    unfold C
    simp [show (35831808 * k + 1207222) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 603611) = 53747712 * k + 1810834 := by
    unfold C
    simp [show (17915904 * k + 603611) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 1810834) = 26873856 * k + 905417 := by
    unfold C
    simp [show (53747712 * k + 1810834) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 905417) = 80621568 * k + 2716252 := by
    unfold C
    simp [show (26873856 * k + 905417) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 2716252) = 40310784 * k + 1358126 := by
    unfold C
    simp [show (80621568 * k + 2716252) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 1358126) = 20155392 * k + 679063 := by
    unfold C
    simp [show (40310784 * k + 1358126) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 679063) = 60466176 * k + 2037190 := by
    unfold C
    simp [show (20155392 * k + 679063) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 2037190) = 30233088 * k + 1018595 := by
    unfold C
    simp [show (60466176 * k + 2037190) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 1018595) = 90699264 * k + 3055786 := by
    unfold C
    simp [show (30233088 * k + 1018595) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 3055786) = 45349632 * k + 1527893 := by
    unfold C
    simp [show (90699264 * k + 3055786) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 1527893) = 136048896 * k + 4583680 := by
    unfold C
    simp [show (45349632 * k + 1527893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 4583680) = 68024448 * k + 2291840 := by
    unfold C
    simp [show (136048896 * k + 4583680) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 2291840) = 34012224 * k + 1145920 := by
    unfold C
    simp [show (68024448 * k + 2291840) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 1145920) = 17006112 * k + 572960 := by
    unfold C
    simp [show (34012224 * k + 1145920) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 572960) = 8503056 * k + 286480 := by
    unfold C
    simp [show (17006112 * k + 572960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 286480) = 4251528 * k + 143240 := by
    unfold C
    simp [show (8503056 * k + 286480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 143240) = 2125764 * k + 71620 := by
    unfold C
    simp [show (4251528 * k + 143240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 71620) = 1062882 * k + 35810 := by
    unfold C
    simp [show (2125764 * k + 71620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 35810) = 531441 * k + 17905 := by
    unfold C
    simp [show (1062882 * k + 35810) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 35327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 35327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_35559 : ∀ k : Nat,
    iterate (1048576 * k + 35559) 32 = 531441 * k + 18023 ∧
      531441 * k + 18023 < 1048576 * k + 35559 := by
  intro k
  have h1 : C (1048576 * k + 35559) = 3145728 * k + 106678 := by
    unfold C
    simp [show (1048576 * k + 35559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 106678) = 1572864 * k + 53339 := by
    unfold C
    simp [show (3145728 * k + 106678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 53339) = 4718592 * k + 160018 := by
    unfold C
    simp [show (1572864 * k + 53339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 160018) = 2359296 * k + 80009 := by
    unfold C
    simp [show (4718592 * k + 160018) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 80009) = 7077888 * k + 240028 := by
    unfold C
    simp [show (2359296 * k + 80009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 240028) = 3538944 * k + 120014 := by
    unfold C
    simp [show (7077888 * k + 240028) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 120014) = 1769472 * k + 60007 := by
    unfold C
    simp [show (3538944 * k + 120014) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 60007) = 5308416 * k + 180022 := by
    unfold C
    simp [show (1769472 * k + 60007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 180022) = 2654208 * k + 90011 := by
    unfold C
    simp [show (5308416 * k + 180022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 90011) = 7962624 * k + 270034 := by
    unfold C
    simp [show (2654208 * k + 90011) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 270034) = 3981312 * k + 135017 := by
    unfold C
    simp [show (7962624 * k + 270034) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 135017) = 11943936 * k + 405052 := by
    unfold C
    simp [show (3981312 * k + 135017) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 405052) = 5971968 * k + 202526 := by
    unfold C
    simp [show (11943936 * k + 405052) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 202526) = 2985984 * k + 101263 := by
    unfold C
    simp [show (5971968 * k + 202526) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 101263) = 8957952 * k + 303790 := by
    unfold C
    simp [show (2985984 * k + 101263) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 303790) = 4478976 * k + 151895 := by
    unfold C
    simp [show (8957952 * k + 303790) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 151895) = 13436928 * k + 455686 := by
    unfold C
    simp [show (4478976 * k + 151895) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 455686) = 6718464 * k + 227843 := by
    unfold C
    simp [show (13436928 * k + 455686) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 227843) = 20155392 * k + 683530 := by
    unfold C
    simp [show (6718464 * k + 227843) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 683530) = 10077696 * k + 341765 := by
    unfold C
    simp [show (20155392 * k + 683530) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 341765) = 30233088 * k + 1025296 := by
    unfold C
    simp [show (10077696 * k + 341765) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1025296) = 15116544 * k + 512648 := by
    unfold C
    simp [show (30233088 * k + 1025296) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 512648) = 7558272 * k + 256324 := by
    unfold C
    simp [show (15116544 * k + 512648) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 256324) = 3779136 * k + 128162 := by
    unfold C
    simp [show (7558272 * k + 256324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 128162) = 1889568 * k + 64081 := by
    unfold C
    simp [show (3779136 * k + 128162) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 64081) = 5668704 * k + 192244 := by
    unfold C
    simp [show (1889568 * k + 64081) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 192244) = 2834352 * k + 96122 := by
    unfold C
    simp [show (5668704 * k + 192244) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 96122) = 1417176 * k + 48061 := by
    unfold C
    simp [show (2834352 * k + 96122) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 48061) = 4251528 * k + 144184 := by
    unfold C
    simp [show (1417176 * k + 48061) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 144184) = 2125764 * k + 72092 := by
    unfold C
    simp [show (4251528 * k + 144184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 72092) = 1062882 * k + 36046 := by
    unfold C
    simp [show (2125764 * k + 72092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 36046) = 531441 * k + 18023 := by
    unfold C
    simp [show (1062882 * k + 36046) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 35559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 35559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_35867 : ∀ k : Nat,
    iterate (1048576 * k + 35867) 32 = 531441 * k + 18179 ∧
      531441 * k + 18179 < 1048576 * k + 35867 := by
  intro k
  have h1 : C (1048576 * k + 35867) = 3145728 * k + 107602 := by
    unfold C
    simp [show (1048576 * k + 35867) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 107602) = 1572864 * k + 53801 := by
    unfold C
    simp [show (3145728 * k + 107602) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 53801) = 4718592 * k + 161404 := by
    unfold C
    simp [show (1572864 * k + 53801) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 161404) = 2359296 * k + 80702 := by
    unfold C
    simp [show (4718592 * k + 161404) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 80702) = 1179648 * k + 40351 := by
    unfold C
    simp [show (2359296 * k + 80702) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 40351) = 3538944 * k + 121054 := by
    unfold C
    simp [show (1179648 * k + 40351) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 121054) = 1769472 * k + 60527 := by
    unfold C
    simp [show (3538944 * k + 121054) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 60527) = 5308416 * k + 181582 := by
    unfold C
    simp [show (1769472 * k + 60527) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 181582) = 2654208 * k + 90791 := by
    unfold C
    simp [show (5308416 * k + 181582) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 90791) = 7962624 * k + 272374 := by
    unfold C
    simp [show (2654208 * k + 90791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 272374) = 3981312 * k + 136187 := by
    unfold C
    simp [show (7962624 * k + 272374) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 136187) = 11943936 * k + 408562 := by
    unfold C
    simp [show (3981312 * k + 136187) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 408562) = 5971968 * k + 204281 := by
    unfold C
    simp [show (11943936 * k + 408562) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 204281) = 17915904 * k + 612844 := by
    unfold C
    simp [show (5971968 * k + 204281) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 612844) = 8957952 * k + 306422 := by
    unfold C
    simp [show (17915904 * k + 612844) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 306422) = 4478976 * k + 153211 := by
    unfold C
    simp [show (8957952 * k + 306422) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 153211) = 13436928 * k + 459634 := by
    unfold C
    simp [show (4478976 * k + 153211) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 459634) = 6718464 * k + 229817 := by
    unfold C
    simp [show (13436928 * k + 459634) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 229817) = 20155392 * k + 689452 := by
    unfold C
    simp [show (6718464 * k + 229817) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 689452) = 10077696 * k + 344726 := by
    unfold C
    simp [show (20155392 * k + 689452) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 344726) = 5038848 * k + 172363 := by
    unfold C
    simp [show (10077696 * k + 344726) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 172363) = 15116544 * k + 517090 := by
    unfold C
    simp [show (5038848 * k + 172363) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 517090) = 7558272 * k + 258545 := by
    unfold C
    simp [show (15116544 * k + 517090) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 258545) = 22674816 * k + 775636 := by
    unfold C
    simp [show (7558272 * k + 258545) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 775636) = 11337408 * k + 387818 := by
    unfold C
    simp [show (22674816 * k + 775636) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 387818) = 5668704 * k + 193909 := by
    unfold C
    simp [show (11337408 * k + 387818) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 193909) = 17006112 * k + 581728 := by
    unfold C
    simp [show (5668704 * k + 193909) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 581728) = 8503056 * k + 290864 := by
    unfold C
    simp [show (17006112 * k + 581728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 290864) = 4251528 * k + 145432 := by
    unfold C
    simp [show (8503056 * k + 290864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 145432) = 2125764 * k + 72716 := by
    unfold C
    simp [show (4251528 * k + 145432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 72716) = 1062882 * k + 36358 := by
    unfold C
    simp [show (2125764 * k + 72716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 36358) = 531441 * k + 18179 := by
    unfold C
    simp [show (1062882 * k + 36358) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 35867) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 35867)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_35871 : ∀ k : Nat,
    iterate (1048576 * k + 35871) 32 = 531441 * k + 18181 ∧
      531441 * k + 18181 < 1048576 * k + 35871 := by
  intro k
  have h1 : C (1048576 * k + 35871) = 3145728 * k + 107614 := by
    unfold C
    simp [show (1048576 * k + 35871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 107614) = 1572864 * k + 53807 := by
    unfold C
    simp [show (3145728 * k + 107614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 53807) = 4718592 * k + 161422 := by
    unfold C
    simp [show (1572864 * k + 53807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 161422) = 2359296 * k + 80711 := by
    unfold C
    simp [show (4718592 * k + 161422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 80711) = 7077888 * k + 242134 := by
    unfold C
    simp [show (2359296 * k + 80711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 242134) = 3538944 * k + 121067 := by
    unfold C
    simp [show (7077888 * k + 242134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 121067) = 10616832 * k + 363202 := by
    unfold C
    simp [show (3538944 * k + 121067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 363202) = 5308416 * k + 181601 := by
    unfold C
    simp [show (10616832 * k + 363202) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 181601) = 15925248 * k + 544804 := by
    unfold C
    simp [show (5308416 * k + 181601) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 544804) = 7962624 * k + 272402 := by
    unfold C
    simp [show (15925248 * k + 544804) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 272402) = 3981312 * k + 136201 := by
    unfold C
    simp [show (7962624 * k + 272402) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 136201) = 11943936 * k + 408604 := by
    unfold C
    simp [show (3981312 * k + 136201) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 408604) = 5971968 * k + 204302 := by
    unfold C
    simp [show (11943936 * k + 408604) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 204302) = 2985984 * k + 102151 := by
    unfold C
    simp [show (5971968 * k + 204302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 102151) = 8957952 * k + 306454 := by
    unfold C
    simp [show (2985984 * k + 102151) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 306454) = 4478976 * k + 153227 := by
    unfold C
    simp [show (8957952 * k + 306454) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 153227) = 13436928 * k + 459682 := by
    unfold C
    simp [show (4478976 * k + 153227) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 459682) = 6718464 * k + 229841 := by
    unfold C
    simp [show (13436928 * k + 459682) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 229841) = 20155392 * k + 689524 := by
    unfold C
    simp [show (6718464 * k + 229841) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 689524) = 10077696 * k + 344762 := by
    unfold C
    simp [show (20155392 * k + 689524) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 344762) = 5038848 * k + 172381 := by
    unfold C
    simp [show (10077696 * k + 344762) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 172381) = 15116544 * k + 517144 := by
    unfold C
    simp [show (5038848 * k + 172381) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 517144) = 7558272 * k + 258572 := by
    unfold C
    simp [show (15116544 * k + 517144) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 258572) = 3779136 * k + 129286 := by
    unfold C
    simp [show (7558272 * k + 258572) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 129286) = 1889568 * k + 64643 := by
    unfold C
    simp [show (3779136 * k + 129286) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 64643) = 5668704 * k + 193930 := by
    unfold C
    simp [show (1889568 * k + 64643) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 193930) = 2834352 * k + 96965 := by
    unfold C
    simp [show (5668704 * k + 193930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 96965) = 8503056 * k + 290896 := by
    unfold C
    simp [show (2834352 * k + 96965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 290896) = 4251528 * k + 145448 := by
    unfold C
    simp [show (8503056 * k + 290896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 145448) = 2125764 * k + 72724 := by
    unfold C
    simp [show (4251528 * k + 145448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 72724) = 1062882 * k + 36362 := by
    unfold C
    simp [show (2125764 * k + 72724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 36362) = 531441 * k + 18181 := by
    unfold C
    simp [show (1062882 * k + 36362) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 35871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 35871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_35995 : ∀ k : Nat,
    iterate (1048576 * k + 35995) 32 = 531441 * k + 18244 ∧
      531441 * k + 18244 < 1048576 * k + 35995 := by
  intro k
  have h1 : C (1048576 * k + 35995) = 3145728 * k + 107986 := by
    unfold C
    simp [show (1048576 * k + 35995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 107986) = 1572864 * k + 53993 := by
    unfold C
    simp [show (3145728 * k + 107986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 53993) = 4718592 * k + 161980 := by
    unfold C
    simp [show (1572864 * k + 53993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 161980) = 2359296 * k + 80990 := by
    unfold C
    simp [show (4718592 * k + 161980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 80990) = 1179648 * k + 40495 := by
    unfold C
    simp [show (2359296 * k + 80990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 40495) = 3538944 * k + 121486 := by
    unfold C
    simp [show (1179648 * k + 40495) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 121486) = 1769472 * k + 60743 := by
    unfold C
    simp [show (3538944 * k + 121486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 60743) = 5308416 * k + 182230 := by
    unfold C
    simp [show (1769472 * k + 60743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 182230) = 2654208 * k + 91115 := by
    unfold C
    simp [show (5308416 * k + 182230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 91115) = 7962624 * k + 273346 := by
    unfold C
    simp [show (2654208 * k + 91115) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 273346) = 3981312 * k + 136673 := by
    unfold C
    simp [show (7962624 * k + 273346) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 136673) = 11943936 * k + 410020 := by
    unfold C
    simp [show (3981312 * k + 136673) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 410020) = 5971968 * k + 205010 := by
    unfold C
    simp [show (11943936 * k + 410020) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 205010) = 2985984 * k + 102505 := by
    unfold C
    simp [show (5971968 * k + 205010) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 102505) = 8957952 * k + 307516 := by
    unfold C
    simp [show (2985984 * k + 102505) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 307516) = 4478976 * k + 153758 := by
    unfold C
    simp [show (8957952 * k + 307516) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 153758) = 2239488 * k + 76879 := by
    unfold C
    simp [show (4478976 * k + 153758) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 76879) = 6718464 * k + 230638 := by
    unfold C
    simp [show (2239488 * k + 76879) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 230638) = 3359232 * k + 115319 := by
    unfold C
    simp [show (6718464 * k + 230638) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 115319) = 10077696 * k + 345958 := by
    unfold C
    simp [show (3359232 * k + 115319) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 345958) = 5038848 * k + 172979 := by
    unfold C
    simp [show (10077696 * k + 345958) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 172979) = 15116544 * k + 518938 := by
    unfold C
    simp [show (5038848 * k + 172979) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 518938) = 7558272 * k + 259469 := by
    unfold C
    simp [show (15116544 * k + 518938) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 259469) = 22674816 * k + 778408 := by
    unfold C
    simp [show (7558272 * k + 259469) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 778408) = 11337408 * k + 389204 := by
    unfold C
    simp [show (22674816 * k + 778408) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 389204) = 5668704 * k + 194602 := by
    unfold C
    simp [show (11337408 * k + 389204) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 194602) = 2834352 * k + 97301 := by
    unfold C
    simp [show (5668704 * k + 194602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 97301) = 8503056 * k + 291904 := by
    unfold C
    simp [show (2834352 * k + 97301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 291904) = 4251528 * k + 145952 := by
    unfold C
    simp [show (8503056 * k + 291904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 145952) = 2125764 * k + 72976 := by
    unfold C
    simp [show (4251528 * k + 145952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 72976) = 1062882 * k + 36488 := by
    unfold C
    simp [show (2125764 * k + 72976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 36488) = 531441 * k + 18244 := by
    unfold C
    simp [show (1062882 * k + 36488) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 35995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 35995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_36895 : ∀ k : Nat,
    iterate (1048576 * k + 36895) 32 = 531441 * k + 18700 ∧
      531441 * k + 18700 < 1048576 * k + 36895 := by
  intro k
  have h1 : C (1048576 * k + 36895) = 3145728 * k + 110686 := by
    unfold C
    simp [show (1048576 * k + 36895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 110686) = 1572864 * k + 55343 := by
    unfold C
    simp [show (3145728 * k + 110686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 55343) = 4718592 * k + 166030 := by
    unfold C
    simp [show (1572864 * k + 55343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 166030) = 2359296 * k + 83015 := by
    unfold C
    simp [show (4718592 * k + 166030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 83015) = 7077888 * k + 249046 := by
    unfold C
    simp [show (2359296 * k + 83015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 249046) = 3538944 * k + 124523 := by
    unfold C
    simp [show (7077888 * k + 249046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 124523) = 10616832 * k + 373570 := by
    unfold C
    simp [show (3538944 * k + 124523) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 373570) = 5308416 * k + 186785 := by
    unfold C
    simp [show (10616832 * k + 373570) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 186785) = 15925248 * k + 560356 := by
    unfold C
    simp [show (5308416 * k + 186785) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 560356) = 7962624 * k + 280178 := by
    unfold C
    simp [show (15925248 * k + 560356) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 280178) = 3981312 * k + 140089 := by
    unfold C
    simp [show (7962624 * k + 280178) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 140089) = 11943936 * k + 420268 := by
    unfold C
    simp [show (3981312 * k + 140089) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 420268) = 5971968 * k + 210134 := by
    unfold C
    simp [show (11943936 * k + 420268) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 210134) = 2985984 * k + 105067 := by
    unfold C
    simp [show (5971968 * k + 210134) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 105067) = 8957952 * k + 315202 := by
    unfold C
    simp [show (2985984 * k + 105067) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 315202) = 4478976 * k + 157601 := by
    unfold C
    simp [show (8957952 * k + 315202) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 157601) = 13436928 * k + 472804 := by
    unfold C
    simp [show (4478976 * k + 157601) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 472804) = 6718464 * k + 236402 := by
    unfold C
    simp [show (13436928 * k + 472804) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 236402) = 3359232 * k + 118201 := by
    unfold C
    simp [show (6718464 * k + 236402) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 118201) = 10077696 * k + 354604 := by
    unfold C
    simp [show (3359232 * k + 118201) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 354604) = 5038848 * k + 177302 := by
    unfold C
    simp [show (10077696 * k + 354604) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 177302) = 2519424 * k + 88651 := by
    unfold C
    simp [show (5038848 * k + 177302) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 88651) = 7558272 * k + 265954 := by
    unfold C
    simp [show (2519424 * k + 88651) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 265954) = 3779136 * k + 132977 := by
    unfold C
    simp [show (7558272 * k + 265954) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 132977) = 11337408 * k + 398932 := by
    unfold C
    simp [show (3779136 * k + 132977) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 398932) = 5668704 * k + 199466 := by
    unfold C
    simp [show (11337408 * k + 398932) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 199466) = 2834352 * k + 99733 := by
    unfold C
    simp [show (5668704 * k + 199466) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 99733) = 8503056 * k + 299200 := by
    unfold C
    simp [show (2834352 * k + 99733) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 299200) = 4251528 * k + 149600 := by
    unfold C
    simp [show (8503056 * k + 299200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 149600) = 2125764 * k + 74800 := by
    unfold C
    simp [show (4251528 * k + 149600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 74800) = 1062882 * k + 37400 := by
    unfold C
    simp [show (2125764 * k + 74800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 37400) = 531441 * k + 18700 := by
    unfold C
    simp [show (1062882 * k + 37400) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 36895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 36895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_37359 : ∀ k : Nat,
    iterate (1048576 * k + 37359) 32 = 531441 * k + 18935 ∧
      531441 * k + 18935 < 1048576 * k + 37359 := by
  intro k
  have h1 : C (1048576 * k + 37359) = 3145728 * k + 112078 := by
    unfold C
    simp [show (1048576 * k + 37359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 112078) = 1572864 * k + 56039 := by
    unfold C
    simp [show (3145728 * k + 112078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 56039) = 4718592 * k + 168118 := by
    unfold C
    simp [show (1572864 * k + 56039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 168118) = 2359296 * k + 84059 := by
    unfold C
    simp [show (4718592 * k + 168118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 84059) = 7077888 * k + 252178 := by
    unfold C
    simp [show (2359296 * k + 84059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 252178) = 3538944 * k + 126089 := by
    unfold C
    simp [show (7077888 * k + 252178) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 126089) = 10616832 * k + 378268 := by
    unfold C
    simp [show (3538944 * k + 126089) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 378268) = 5308416 * k + 189134 := by
    unfold C
    simp [show (10616832 * k + 378268) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 189134) = 2654208 * k + 94567 := by
    unfold C
    simp [show (5308416 * k + 189134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 94567) = 7962624 * k + 283702 := by
    unfold C
    simp [show (2654208 * k + 94567) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 283702) = 3981312 * k + 141851 := by
    unfold C
    simp [show (7962624 * k + 283702) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 141851) = 11943936 * k + 425554 := by
    unfold C
    simp [show (3981312 * k + 141851) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 425554) = 5971968 * k + 212777 := by
    unfold C
    simp [show (11943936 * k + 425554) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 212777) = 17915904 * k + 638332 := by
    unfold C
    simp [show (5971968 * k + 212777) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 638332) = 8957952 * k + 319166 := by
    unfold C
    simp [show (17915904 * k + 638332) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 319166) = 4478976 * k + 159583 := by
    unfold C
    simp [show (8957952 * k + 319166) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 159583) = 13436928 * k + 478750 := by
    unfold C
    simp [show (4478976 * k + 159583) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 478750) = 6718464 * k + 239375 := by
    unfold C
    simp [show (13436928 * k + 478750) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 239375) = 20155392 * k + 718126 := by
    unfold C
    simp [show (6718464 * k + 239375) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 718126) = 10077696 * k + 359063 := by
    unfold C
    simp [show (20155392 * k + 718126) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 359063) = 30233088 * k + 1077190 := by
    unfold C
    simp [show (10077696 * k + 359063) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1077190) = 15116544 * k + 538595 := by
    unfold C
    simp [show (30233088 * k + 1077190) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 538595) = 45349632 * k + 1615786 := by
    unfold C
    simp [show (15116544 * k + 538595) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 1615786) = 22674816 * k + 807893 := by
    unfold C
    simp [show (45349632 * k + 1615786) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 807893) = 68024448 * k + 2423680 := by
    unfold C
    simp [show (22674816 * k + 807893) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 2423680) = 34012224 * k + 1211840 := by
    unfold C
    simp [show (68024448 * k + 2423680) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 1211840) = 17006112 * k + 605920 := by
    unfold C
    simp [show (34012224 * k + 1211840) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 605920) = 8503056 * k + 302960 := by
    unfold C
    simp [show (17006112 * k + 605920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 302960) = 4251528 * k + 151480 := by
    unfold C
    simp [show (8503056 * k + 302960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 151480) = 2125764 * k + 75740 := by
    unfold C
    simp [show (4251528 * k + 151480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 75740) = 1062882 * k + 37870 := by
    unfold C
    simp [show (2125764 * k + 75740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 37870) = 531441 * k + 18935 := by
    unfold C
    simp [show (1062882 * k + 37870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 37359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 37359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_37375 : ∀ k : Nat,
    iterate (1048576 * k + 37375) 32 = 531441 * k + 18943 ∧
      531441 * k + 18943 < 1048576 * k + 37375 := by
  intro k
  have h1 : C (1048576 * k + 37375) = 3145728 * k + 112126 := by
    unfold C
    simp [show (1048576 * k + 37375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 112126) = 1572864 * k + 56063 := by
    unfold C
    simp [show (3145728 * k + 112126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 56063) = 4718592 * k + 168190 := by
    unfold C
    simp [show (1572864 * k + 56063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 168190) = 2359296 * k + 84095 := by
    unfold C
    simp [show (4718592 * k + 168190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 84095) = 7077888 * k + 252286 := by
    unfold C
    simp [show (2359296 * k + 84095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 252286) = 3538944 * k + 126143 := by
    unfold C
    simp [show (7077888 * k + 252286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 126143) = 10616832 * k + 378430 := by
    unfold C
    simp [show (3538944 * k + 126143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 378430) = 5308416 * k + 189215 := by
    unfold C
    simp [show (10616832 * k + 378430) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 189215) = 15925248 * k + 567646 := by
    unfold C
    simp [show (5308416 * k + 189215) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 567646) = 7962624 * k + 283823 := by
    unfold C
    simp [show (15925248 * k + 567646) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 283823) = 23887872 * k + 851470 := by
    unfold C
    simp [show (7962624 * k + 283823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 851470) = 11943936 * k + 425735 := by
    unfold C
    simp [show (23887872 * k + 851470) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 425735) = 35831808 * k + 1277206 := by
    unfold C
    simp [show (11943936 * k + 425735) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1277206) = 17915904 * k + 638603 := by
    unfold C
    simp [show (35831808 * k + 1277206) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 638603) = 53747712 * k + 1915810 := by
    unfold C
    simp [show (17915904 * k + 638603) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 1915810) = 26873856 * k + 957905 := by
    unfold C
    simp [show (53747712 * k + 1915810) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 957905) = 80621568 * k + 2873716 := by
    unfold C
    simp [show (26873856 * k + 957905) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 2873716) = 40310784 * k + 1436858 := by
    unfold C
    simp [show (80621568 * k + 2873716) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 1436858) = 20155392 * k + 718429 := by
    unfold C
    simp [show (40310784 * k + 1436858) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 718429) = 60466176 * k + 2155288 := by
    unfold C
    simp [show (20155392 * k + 718429) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 2155288) = 30233088 * k + 1077644 := by
    unfold C
    simp [show (60466176 * k + 2155288) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 1077644) = 15116544 * k + 538822 := by
    unfold C
    simp [show (30233088 * k + 1077644) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 538822) = 7558272 * k + 269411 := by
    unfold C
    simp [show (15116544 * k + 538822) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 269411) = 22674816 * k + 808234 := by
    unfold C
    simp [show (7558272 * k + 269411) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 808234) = 11337408 * k + 404117 := by
    unfold C
    simp [show (22674816 * k + 808234) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 404117) = 34012224 * k + 1212352 := by
    unfold C
    simp [show (11337408 * k + 404117) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 1212352) = 17006112 * k + 606176 := by
    unfold C
    simp [show (34012224 * k + 1212352) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 606176) = 8503056 * k + 303088 := by
    unfold C
    simp [show (17006112 * k + 606176) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 303088) = 4251528 * k + 151544 := by
    unfold C
    simp [show (8503056 * k + 303088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 151544) = 2125764 * k + 75772 := by
    unfold C
    simp [show (4251528 * k + 151544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 75772) = 1062882 * k + 37886 := by
    unfold C
    simp [show (2125764 * k + 75772) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 37886) = 531441 * k + 18943 := by
    unfold C
    simp [show (1062882 * k + 37886) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 37375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 37375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_37583 : ∀ k : Nat,
    iterate (1048576 * k + 37583) 32 = 531441 * k + 19049 ∧
      531441 * k + 19049 < 1048576 * k + 37583 := by
  intro k
  have h1 : C (1048576 * k + 37583) = 3145728 * k + 112750 := by
    unfold C
    simp [show (1048576 * k + 37583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 112750) = 1572864 * k + 56375 := by
    unfold C
    simp [show (3145728 * k + 112750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 56375) = 4718592 * k + 169126 := by
    unfold C
    simp [show (1572864 * k + 56375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 169126) = 2359296 * k + 84563 := by
    unfold C
    simp [show (4718592 * k + 169126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 84563) = 7077888 * k + 253690 := by
    unfold C
    simp [show (2359296 * k + 84563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 253690) = 3538944 * k + 126845 := by
    unfold C
    simp [show (7077888 * k + 253690) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 126845) = 10616832 * k + 380536 := by
    unfold C
    simp [show (3538944 * k + 126845) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 380536) = 5308416 * k + 190268 := by
    unfold C
    simp [show (10616832 * k + 380536) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 190268) = 2654208 * k + 95134 := by
    unfold C
    simp [show (5308416 * k + 190268) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 95134) = 1327104 * k + 47567 := by
    unfold C
    simp [show (2654208 * k + 95134) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 47567) = 3981312 * k + 142702 := by
    unfold C
    simp [show (1327104 * k + 47567) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 142702) = 1990656 * k + 71351 := by
    unfold C
    simp [show (3981312 * k + 142702) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 71351) = 5971968 * k + 214054 := by
    unfold C
    simp [show (1990656 * k + 71351) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 214054) = 2985984 * k + 107027 := by
    unfold C
    simp [show (5971968 * k + 214054) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 107027) = 8957952 * k + 321082 := by
    unfold C
    simp [show (2985984 * k + 107027) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 321082) = 4478976 * k + 160541 := by
    unfold C
    simp [show (8957952 * k + 321082) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 160541) = 13436928 * k + 481624 := by
    unfold C
    simp [show (4478976 * k + 160541) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 481624) = 6718464 * k + 240812 := by
    unfold C
    simp [show (13436928 * k + 481624) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 240812) = 3359232 * k + 120406 := by
    unfold C
    simp [show (6718464 * k + 240812) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 120406) = 1679616 * k + 60203 := by
    unfold C
    simp [show (3359232 * k + 120406) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 60203) = 5038848 * k + 180610 := by
    unfold C
    simp [show (1679616 * k + 60203) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 180610) = 2519424 * k + 90305 := by
    unfold C
    simp [show (5038848 * k + 180610) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 90305) = 7558272 * k + 270916 := by
    unfold C
    simp [show (2519424 * k + 90305) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 270916) = 3779136 * k + 135458 := by
    unfold C
    simp [show (7558272 * k + 270916) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 135458) = 1889568 * k + 67729 := by
    unfold C
    simp [show (3779136 * k + 135458) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 67729) = 5668704 * k + 203188 := by
    unfold C
    simp [show (1889568 * k + 67729) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 203188) = 2834352 * k + 101594 := by
    unfold C
    simp [show (5668704 * k + 203188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 101594) = 1417176 * k + 50797 := by
    unfold C
    simp [show (2834352 * k + 101594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 50797) = 4251528 * k + 152392 := by
    unfold C
    simp [show (1417176 * k + 50797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 152392) = 2125764 * k + 76196 := by
    unfold C
    simp [show (4251528 * k + 152392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 76196) = 1062882 * k + 38098 := by
    unfold C
    simp [show (2125764 * k + 76196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 38098) = 531441 * k + 19049 := by
    unfold C
    simp [show (1062882 * k + 38098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 37583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 37583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_38631 : ∀ k : Nat,
    iterate (1048576 * k + 38631) 32 = 531441 * k + 19580 ∧
      531441 * k + 19580 < 1048576 * k + 38631 := by
  intro k
  have h1 : C (1048576 * k + 38631) = 3145728 * k + 115894 := by
    unfold C
    simp [show (1048576 * k + 38631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 115894) = 1572864 * k + 57947 := by
    unfold C
    simp [show (3145728 * k + 115894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 57947) = 4718592 * k + 173842 := by
    unfold C
    simp [show (1572864 * k + 57947) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 173842) = 2359296 * k + 86921 := by
    unfold C
    simp [show (4718592 * k + 173842) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 86921) = 7077888 * k + 260764 := by
    unfold C
    simp [show (2359296 * k + 86921) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 260764) = 3538944 * k + 130382 := by
    unfold C
    simp [show (7077888 * k + 260764) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 130382) = 1769472 * k + 65191 := by
    unfold C
    simp [show (3538944 * k + 130382) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 65191) = 5308416 * k + 195574 := by
    unfold C
    simp [show (1769472 * k + 65191) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 195574) = 2654208 * k + 97787 := by
    unfold C
    simp [show (5308416 * k + 195574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 97787) = 7962624 * k + 293362 := by
    unfold C
    simp [show (2654208 * k + 97787) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 293362) = 3981312 * k + 146681 := by
    unfold C
    simp [show (7962624 * k + 293362) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 146681) = 11943936 * k + 440044 := by
    unfold C
    simp [show (3981312 * k + 146681) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 440044) = 5971968 * k + 220022 := by
    unfold C
    simp [show (11943936 * k + 440044) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 220022) = 2985984 * k + 110011 := by
    unfold C
    simp [show (5971968 * k + 220022) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 110011) = 8957952 * k + 330034 := by
    unfold C
    simp [show (2985984 * k + 110011) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 330034) = 4478976 * k + 165017 := by
    unfold C
    simp [show (8957952 * k + 330034) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 165017) = 13436928 * k + 495052 := by
    unfold C
    simp [show (4478976 * k + 165017) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 495052) = 6718464 * k + 247526 := by
    unfold C
    simp [show (13436928 * k + 495052) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 247526) = 3359232 * k + 123763 := by
    unfold C
    simp [show (6718464 * k + 247526) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 123763) = 10077696 * k + 371290 := by
    unfold C
    simp [show (3359232 * k + 123763) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 371290) = 5038848 * k + 185645 := by
    unfold C
    simp [show (10077696 * k + 371290) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 185645) = 15116544 * k + 556936 := by
    unfold C
    simp [show (5038848 * k + 185645) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 556936) = 7558272 * k + 278468 := by
    unfold C
    simp [show (15116544 * k + 556936) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 278468) = 3779136 * k + 139234 := by
    unfold C
    simp [show (7558272 * k + 278468) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 139234) = 1889568 * k + 69617 := by
    unfold C
    simp [show (3779136 * k + 139234) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 69617) = 5668704 * k + 208852 := by
    unfold C
    simp [show (1889568 * k + 69617) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 208852) = 2834352 * k + 104426 := by
    unfold C
    simp [show (5668704 * k + 208852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 104426) = 1417176 * k + 52213 := by
    unfold C
    simp [show (2834352 * k + 104426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 52213) = 4251528 * k + 156640 := by
    unfold C
    simp [show (1417176 * k + 52213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 156640) = 2125764 * k + 78320 := by
    unfold C
    simp [show (4251528 * k + 156640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 78320) = 1062882 * k + 39160 := by
    unfold C
    simp [show (2125764 * k + 78320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 39160) = 531441 * k + 19580 := by
    unfold C
    simp [show (1062882 * k + 39160) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 38631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 38631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_39079 : ∀ k : Nat,
    iterate (1048576 * k + 39079) 32 = 531441 * k + 19807 ∧
      531441 * k + 19807 < 1048576 * k + 39079 := by
  intro k
  have h1 : C (1048576 * k + 39079) = 3145728 * k + 117238 := by
    unfold C
    simp [show (1048576 * k + 39079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 117238) = 1572864 * k + 58619 := by
    unfold C
    simp [show (3145728 * k + 117238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 58619) = 4718592 * k + 175858 := by
    unfold C
    simp [show (1572864 * k + 58619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 175858) = 2359296 * k + 87929 := by
    unfold C
    simp [show (4718592 * k + 175858) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 87929) = 7077888 * k + 263788 := by
    unfold C
    simp [show (2359296 * k + 87929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 263788) = 3538944 * k + 131894 := by
    unfold C
    simp [show (7077888 * k + 263788) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 131894) = 1769472 * k + 65947 := by
    unfold C
    simp [show (3538944 * k + 131894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 65947) = 5308416 * k + 197842 := by
    unfold C
    simp [show (1769472 * k + 65947) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 197842) = 2654208 * k + 98921 := by
    unfold C
    simp [show (5308416 * k + 197842) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 98921) = 7962624 * k + 296764 := by
    unfold C
    simp [show (2654208 * k + 98921) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 296764) = 3981312 * k + 148382 := by
    unfold C
    simp [show (7962624 * k + 296764) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 148382) = 1990656 * k + 74191 := by
    unfold C
    simp [show (3981312 * k + 148382) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 74191) = 5971968 * k + 222574 := by
    unfold C
    simp [show (1990656 * k + 74191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 222574) = 2985984 * k + 111287 := by
    unfold C
    simp [show (5971968 * k + 222574) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 111287) = 8957952 * k + 333862 := by
    unfold C
    simp [show (2985984 * k + 111287) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 333862) = 4478976 * k + 166931 := by
    unfold C
    simp [show (8957952 * k + 333862) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 166931) = 13436928 * k + 500794 := by
    unfold C
    simp [show (4478976 * k + 166931) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 500794) = 6718464 * k + 250397 := by
    unfold C
    simp [show (13436928 * k + 500794) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 250397) = 20155392 * k + 751192 := by
    unfold C
    simp [show (6718464 * k + 250397) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 751192) = 10077696 * k + 375596 := by
    unfold C
    simp [show (20155392 * k + 751192) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 375596) = 5038848 * k + 187798 := by
    unfold C
    simp [show (10077696 * k + 375596) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 187798) = 2519424 * k + 93899 := by
    unfold C
    simp [show (5038848 * k + 187798) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 93899) = 7558272 * k + 281698 := by
    unfold C
    simp [show (2519424 * k + 93899) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 281698) = 3779136 * k + 140849 := by
    unfold C
    simp [show (7558272 * k + 281698) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 140849) = 11337408 * k + 422548 := by
    unfold C
    simp [show (3779136 * k + 140849) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 422548) = 5668704 * k + 211274 := by
    unfold C
    simp [show (11337408 * k + 422548) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 211274) = 2834352 * k + 105637 := by
    unfold C
    simp [show (5668704 * k + 211274) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 105637) = 8503056 * k + 316912 := by
    unfold C
    simp [show (2834352 * k + 105637) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 316912) = 4251528 * k + 158456 := by
    unfold C
    simp [show (8503056 * k + 316912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 158456) = 2125764 * k + 79228 := by
    unfold C
    simp [show (4251528 * k + 158456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 79228) = 1062882 * k + 39614 := by
    unfold C
    simp [show (2125764 * k + 79228) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 39614) = 531441 * k + 19807 := by
    unfold C
    simp [show (1062882 * k + 39614) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 39079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 39079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_39323 : ∀ k : Nat,
    iterate (1048576 * k + 39323) 32 = 531441 * k + 19931 ∧
      531441 * k + 19931 < 1048576 * k + 39323 := by
  intro k
  have h1 : C (1048576 * k + 39323) = 3145728 * k + 117970 := by
    unfold C
    simp [show (1048576 * k + 39323) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 117970) = 1572864 * k + 58985 := by
    unfold C
    simp [show (3145728 * k + 117970) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 58985) = 4718592 * k + 176956 := by
    unfold C
    simp [show (1572864 * k + 58985) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 176956) = 2359296 * k + 88478 := by
    unfold C
    simp [show (4718592 * k + 176956) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 88478) = 1179648 * k + 44239 := by
    unfold C
    simp [show (2359296 * k + 88478) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 44239) = 3538944 * k + 132718 := by
    unfold C
    simp [show (1179648 * k + 44239) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 132718) = 1769472 * k + 66359 := by
    unfold C
    simp [show (3538944 * k + 132718) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 66359) = 5308416 * k + 199078 := by
    unfold C
    simp [show (1769472 * k + 66359) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 199078) = 2654208 * k + 99539 := by
    unfold C
    simp [show (5308416 * k + 199078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 99539) = 7962624 * k + 298618 := by
    unfold C
    simp [show (2654208 * k + 99539) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 298618) = 3981312 * k + 149309 := by
    unfold C
    simp [show (7962624 * k + 298618) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 149309) = 11943936 * k + 447928 := by
    unfold C
    simp [show (3981312 * k + 149309) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 447928) = 5971968 * k + 223964 := by
    unfold C
    simp [show (11943936 * k + 447928) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 223964) = 2985984 * k + 111982 := by
    unfold C
    simp [show (5971968 * k + 223964) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 111982) = 1492992 * k + 55991 := by
    unfold C
    simp [show (2985984 * k + 111982) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 55991) = 4478976 * k + 167974 := by
    unfold C
    simp [show (1492992 * k + 55991) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 167974) = 2239488 * k + 83987 := by
    unfold C
    simp [show (4478976 * k + 167974) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 83987) = 6718464 * k + 251962 := by
    unfold C
    simp [show (2239488 * k + 83987) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 251962) = 3359232 * k + 125981 := by
    unfold C
    simp [show (6718464 * k + 251962) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 125981) = 10077696 * k + 377944 := by
    unfold C
    simp [show (3359232 * k + 125981) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 377944) = 5038848 * k + 188972 := by
    unfold C
    simp [show (10077696 * k + 377944) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 188972) = 2519424 * k + 94486 := by
    unfold C
    simp [show (5038848 * k + 188972) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 94486) = 1259712 * k + 47243 := by
    unfold C
    simp [show (2519424 * k + 94486) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 47243) = 3779136 * k + 141730 := by
    unfold C
    simp [show (1259712 * k + 47243) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 141730) = 1889568 * k + 70865 := by
    unfold C
    simp [show (3779136 * k + 141730) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 70865) = 5668704 * k + 212596 := by
    unfold C
    simp [show (1889568 * k + 70865) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 212596) = 2834352 * k + 106298 := by
    unfold C
    simp [show (5668704 * k + 212596) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 106298) = 1417176 * k + 53149 := by
    unfold C
    simp [show (2834352 * k + 106298) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 53149) = 4251528 * k + 159448 := by
    unfold C
    simp [show (1417176 * k + 53149) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 159448) = 2125764 * k + 79724 := by
    unfold C
    simp [show (4251528 * k + 159448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 79724) = 1062882 * k + 39862 := by
    unfold C
    simp [show (2125764 * k + 79724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 39862) = 531441 * k + 19931 := by
    unfold C
    simp [show (1062882 * k + 39862) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 39323) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 39323)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_39423 : ∀ k : Nat,
    iterate (1048576 * k + 39423) 32 = 531441 * k + 19981 ∧
      531441 * k + 19981 < 1048576 * k + 39423 := by
  intro k
  have h1 : C (1048576 * k + 39423) = 3145728 * k + 118270 := by
    unfold C
    simp [show (1048576 * k + 39423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 118270) = 1572864 * k + 59135 := by
    unfold C
    simp [show (3145728 * k + 118270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 59135) = 4718592 * k + 177406 := by
    unfold C
    simp [show (1572864 * k + 59135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 177406) = 2359296 * k + 88703 := by
    unfold C
    simp [show (4718592 * k + 177406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 88703) = 7077888 * k + 266110 := by
    unfold C
    simp [show (2359296 * k + 88703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 266110) = 3538944 * k + 133055 := by
    unfold C
    simp [show (7077888 * k + 266110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 133055) = 10616832 * k + 399166 := by
    unfold C
    simp [show (3538944 * k + 133055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 399166) = 5308416 * k + 199583 := by
    unfold C
    simp [show (10616832 * k + 399166) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 199583) = 15925248 * k + 598750 := by
    unfold C
    simp [show (5308416 * k + 199583) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 598750) = 7962624 * k + 299375 := by
    unfold C
    simp [show (15925248 * k + 598750) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 299375) = 23887872 * k + 898126 := by
    unfold C
    simp [show (7962624 * k + 299375) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 898126) = 11943936 * k + 449063 := by
    unfold C
    simp [show (23887872 * k + 898126) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 449063) = 35831808 * k + 1347190 := by
    unfold C
    simp [show (11943936 * k + 449063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1347190) = 17915904 * k + 673595 := by
    unfold C
    simp [show (35831808 * k + 1347190) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 673595) = 53747712 * k + 2020786 := by
    unfold C
    simp [show (17915904 * k + 673595) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 2020786) = 26873856 * k + 1010393 := by
    unfold C
    simp [show (53747712 * k + 2020786) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1010393) = 80621568 * k + 3031180 := by
    unfold C
    simp [show (26873856 * k + 1010393) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 3031180) = 40310784 * k + 1515590 := by
    unfold C
    simp [show (80621568 * k + 3031180) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 1515590) = 20155392 * k + 757795 := by
    unfold C
    simp [show (40310784 * k + 1515590) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 757795) = 60466176 * k + 2273386 := by
    unfold C
    simp [show (20155392 * k + 757795) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 2273386) = 30233088 * k + 1136693 := by
    unfold C
    simp [show (60466176 * k + 2273386) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 1136693) = 90699264 * k + 3410080 := by
    unfold C
    simp [show (30233088 * k + 1136693) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 3410080) = 45349632 * k + 1705040 := by
    unfold C
    simp [show (90699264 * k + 3410080) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 1705040) = 22674816 * k + 852520 := by
    unfold C
    simp [show (45349632 * k + 1705040) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 852520) = 11337408 * k + 426260 := by
    unfold C
    simp [show (22674816 * k + 852520) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 426260) = 5668704 * k + 213130 := by
    unfold C
    simp [show (11337408 * k + 426260) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 213130) = 2834352 * k + 106565 := by
    unfold C
    simp [show (5668704 * k + 213130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 106565) = 8503056 * k + 319696 := by
    unfold C
    simp [show (2834352 * k + 106565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 319696) = 4251528 * k + 159848 := by
    unfold C
    simp [show (8503056 * k + 319696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 159848) = 2125764 * k + 79924 := by
    unfold C
    simp [show (4251528 * k + 159848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 79924) = 1062882 * k + 39962 := by
    unfold C
    simp [show (2125764 * k + 79924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 39962) = 531441 * k + 19981 := by
    unfold C
    simp [show (1062882 * k + 39962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 39423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 39423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_39963 : ∀ k : Nat,
    iterate (1048576 * k + 39963) 32 = 531441 * k + 20255 ∧
      531441 * k + 20255 < 1048576 * k + 39963 := by
  intro k
  have h1 : C (1048576 * k + 39963) = 3145728 * k + 119890 := by
    unfold C
    simp [show (1048576 * k + 39963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 119890) = 1572864 * k + 59945 := by
    unfold C
    simp [show (3145728 * k + 119890) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 59945) = 4718592 * k + 179836 := by
    unfold C
    simp [show (1572864 * k + 59945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 179836) = 2359296 * k + 89918 := by
    unfold C
    simp [show (4718592 * k + 179836) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 89918) = 1179648 * k + 44959 := by
    unfold C
    simp [show (2359296 * k + 89918) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 44959) = 3538944 * k + 134878 := by
    unfold C
    simp [show (1179648 * k + 44959) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 134878) = 1769472 * k + 67439 := by
    unfold C
    simp [show (3538944 * k + 134878) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 67439) = 5308416 * k + 202318 := by
    unfold C
    simp [show (1769472 * k + 67439) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 202318) = 2654208 * k + 101159 := by
    unfold C
    simp [show (5308416 * k + 202318) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 101159) = 7962624 * k + 303478 := by
    unfold C
    simp [show (2654208 * k + 101159) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 303478) = 3981312 * k + 151739 := by
    unfold C
    simp [show (7962624 * k + 303478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 151739) = 11943936 * k + 455218 := by
    unfold C
    simp [show (3981312 * k + 151739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 455218) = 5971968 * k + 227609 := by
    unfold C
    simp [show (11943936 * k + 455218) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 227609) = 17915904 * k + 682828 := by
    unfold C
    simp [show (5971968 * k + 227609) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 682828) = 8957952 * k + 341414 := by
    unfold C
    simp [show (17915904 * k + 682828) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 341414) = 4478976 * k + 170707 := by
    unfold C
    simp [show (8957952 * k + 341414) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 170707) = 13436928 * k + 512122 := by
    unfold C
    simp [show (4478976 * k + 170707) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 512122) = 6718464 * k + 256061 := by
    unfold C
    simp [show (13436928 * k + 512122) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 256061) = 20155392 * k + 768184 := by
    unfold C
    simp [show (6718464 * k + 256061) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 768184) = 10077696 * k + 384092 := by
    unfold C
    simp [show (20155392 * k + 768184) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 384092) = 5038848 * k + 192046 := by
    unfold C
    simp [show (10077696 * k + 384092) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 192046) = 2519424 * k + 96023 := by
    unfold C
    simp [show (5038848 * k + 192046) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 96023) = 7558272 * k + 288070 := by
    unfold C
    simp [show (2519424 * k + 96023) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 288070) = 3779136 * k + 144035 := by
    unfold C
    simp [show (7558272 * k + 288070) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 144035) = 11337408 * k + 432106 := by
    unfold C
    simp [show (3779136 * k + 144035) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 432106) = 5668704 * k + 216053 := by
    unfold C
    simp [show (11337408 * k + 432106) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 216053) = 17006112 * k + 648160 := by
    unfold C
    simp [show (5668704 * k + 216053) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 648160) = 8503056 * k + 324080 := by
    unfold C
    simp [show (17006112 * k + 648160) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 324080) = 4251528 * k + 162040 := by
    unfold C
    simp [show (8503056 * k + 324080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 162040) = 2125764 * k + 81020 := by
    unfold C
    simp [show (4251528 * k + 162040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 81020) = 1062882 * k + 40510 := by
    unfold C
    simp [show (2125764 * k + 81020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 40510) = 531441 * k + 20255 := by
    unfold C
    simp [show (1062882 * k + 40510) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 39963) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 39963)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard006
