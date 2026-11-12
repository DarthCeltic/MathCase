import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard093

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_717247 : ∀ k : Nat,
    iterate (1048576 * k + 717247) 32 = 531441 * k + 363517 ∧
      531441 * k + 363517 < 1048576 * k + 717247 := by
  intro k
  have h1 : C (1048576 * k + 717247) = 3145728 * k + 2151742 := by
    unfold C
    simp [show (1048576 * k + 717247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2151742) = 1572864 * k + 1075871 := by
    unfold C
    simp [show (3145728 * k + 2151742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1075871) = 4718592 * k + 3227614 := by
    unfold C
    simp [show (1572864 * k + 1075871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3227614) = 2359296 * k + 1613807 := by
    unfold C
    simp [show (4718592 * k + 3227614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1613807) = 7077888 * k + 4841422 := by
    unfold C
    simp [show (2359296 * k + 1613807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4841422) = 3538944 * k + 2420711 := by
    unfold C
    simp [show (7077888 * k + 4841422) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2420711) = 10616832 * k + 7262134 := by
    unfold C
    simp [show (3538944 * k + 2420711) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7262134) = 5308416 * k + 3631067 := by
    unfold C
    simp [show (10616832 * k + 7262134) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3631067) = 15925248 * k + 10893202 := by
    unfold C
    simp [show (5308416 * k + 3631067) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10893202) = 7962624 * k + 5446601 := by
    unfold C
    simp [show (15925248 * k + 10893202) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5446601) = 23887872 * k + 16339804 := by
    unfold C
    simp [show (7962624 * k + 5446601) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16339804) = 11943936 * k + 8169902 := by
    unfold C
    simp [show (23887872 * k + 16339804) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8169902) = 5971968 * k + 4084951 := by
    unfold C
    simp [show (11943936 * k + 8169902) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4084951) = 17915904 * k + 12254854 := by
    unfold C
    simp [show (5971968 * k + 4084951) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12254854) = 8957952 * k + 6127427 := by
    unfold C
    simp [show (17915904 * k + 12254854) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6127427) = 26873856 * k + 18382282 := by
    unfold C
    simp [show (8957952 * k + 6127427) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18382282) = 13436928 * k + 9191141 := by
    unfold C
    simp [show (26873856 * k + 18382282) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9191141) = 40310784 * k + 27573424 := by
    unfold C
    simp [show (13436928 * k + 9191141) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27573424) = 20155392 * k + 13786712 := by
    unfold C
    simp [show (40310784 * k + 27573424) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13786712) = 10077696 * k + 6893356 := by
    unfold C
    simp [show (20155392 * k + 13786712) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6893356) = 5038848 * k + 3446678 := by
    unfold C
    simp [show (10077696 * k + 6893356) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3446678) = 2519424 * k + 1723339 := by
    unfold C
    simp [show (5038848 * k + 3446678) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1723339) = 7558272 * k + 5170018 := by
    unfold C
    simp [show (2519424 * k + 1723339) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5170018) = 3779136 * k + 2585009 := by
    unfold C
    simp [show (7558272 * k + 5170018) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2585009) = 11337408 * k + 7755028 := by
    unfold C
    simp [show (3779136 * k + 2585009) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7755028) = 5668704 * k + 3877514 := by
    unfold C
    simp [show (11337408 * k + 7755028) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3877514) = 2834352 * k + 1938757 := by
    unfold C
    simp [show (5668704 * k + 3877514) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1938757) = 8503056 * k + 5816272 := by
    unfold C
    simp [show (2834352 * k + 1938757) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5816272) = 4251528 * k + 2908136 := by
    unfold C
    simp [show (8503056 * k + 5816272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2908136) = 2125764 * k + 1454068 := by
    unfold C
    simp [show (4251528 * k + 2908136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1454068) = 1062882 * k + 727034 := by
    unfold C
    simp [show (2125764 * k + 1454068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 727034) = 531441 * k + 363517 := by
    unfold C
    simp [show (1062882 * k + 727034) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 717247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 717247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_717343 : ∀ k : Nat,
    iterate (1048576 * k + 717343) 32 = 531441 * k + 363566 ∧
      531441 * k + 363566 < 1048576 * k + 717343 := by
  intro k
  have h1 : C (1048576 * k + 717343) = 3145728 * k + 2152030 := by
    unfold C
    simp [show (1048576 * k + 717343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2152030) = 1572864 * k + 1076015 := by
    unfold C
    simp [show (3145728 * k + 2152030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1076015) = 4718592 * k + 3228046 := by
    unfold C
    simp [show (1572864 * k + 1076015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3228046) = 2359296 * k + 1614023 := by
    unfold C
    simp [show (4718592 * k + 3228046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1614023) = 7077888 * k + 4842070 := by
    unfold C
    simp [show (2359296 * k + 1614023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4842070) = 3538944 * k + 2421035 := by
    unfold C
    simp [show (7077888 * k + 4842070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2421035) = 10616832 * k + 7263106 := by
    unfold C
    simp [show (3538944 * k + 2421035) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7263106) = 5308416 * k + 3631553 := by
    unfold C
    simp [show (10616832 * k + 7263106) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3631553) = 15925248 * k + 10894660 := by
    unfold C
    simp [show (5308416 * k + 3631553) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10894660) = 7962624 * k + 5447330 := by
    unfold C
    simp [show (15925248 * k + 10894660) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5447330) = 3981312 * k + 2723665 := by
    unfold C
    simp [show (7962624 * k + 5447330) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2723665) = 11943936 * k + 8170996 := by
    unfold C
    simp [show (3981312 * k + 2723665) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8170996) = 5971968 * k + 4085498 := by
    unfold C
    simp [show (11943936 * k + 8170996) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4085498) = 2985984 * k + 2042749 := by
    unfold C
    simp [show (5971968 * k + 4085498) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2042749) = 8957952 * k + 6128248 := by
    unfold C
    simp [show (2985984 * k + 2042749) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6128248) = 4478976 * k + 3064124 := by
    unfold C
    simp [show (8957952 * k + 6128248) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3064124) = 2239488 * k + 1532062 := by
    unfold C
    simp [show (4478976 * k + 3064124) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1532062) = 1119744 * k + 766031 := by
    unfold C
    simp [show (2239488 * k + 1532062) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 766031) = 3359232 * k + 2298094 := by
    unfold C
    simp [show (1119744 * k + 766031) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2298094) = 1679616 * k + 1149047 := by
    unfold C
    simp [show (3359232 * k + 2298094) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1149047) = 5038848 * k + 3447142 := by
    unfold C
    simp [show (1679616 * k + 1149047) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3447142) = 2519424 * k + 1723571 := by
    unfold C
    simp [show (5038848 * k + 3447142) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1723571) = 7558272 * k + 5170714 := by
    unfold C
    simp [show (2519424 * k + 1723571) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5170714) = 3779136 * k + 2585357 := by
    unfold C
    simp [show (7558272 * k + 5170714) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2585357) = 11337408 * k + 7756072 := by
    unfold C
    simp [show (3779136 * k + 2585357) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7756072) = 5668704 * k + 3878036 := by
    unfold C
    simp [show (11337408 * k + 7756072) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3878036) = 2834352 * k + 1939018 := by
    unfold C
    simp [show (5668704 * k + 3878036) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1939018) = 1417176 * k + 969509 := by
    unfold C
    simp [show (2834352 * k + 1939018) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 969509) = 4251528 * k + 2908528 := by
    unfold C
    simp [show (1417176 * k + 969509) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2908528) = 2125764 * k + 1454264 := by
    unfold C
    simp [show (4251528 * k + 2908528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1454264) = 1062882 * k + 727132 := by
    unfold C
    simp [show (2125764 * k + 1454264) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 727132) = 531441 * k + 363566 := by
    unfold C
    simp [show (1062882 * k + 727132) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 717343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 717343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_717359 : ∀ k : Nat,
    iterate (1048576 * k + 717359) 32 = 531441 * k + 363574 ∧
      531441 * k + 363574 < 1048576 * k + 717359 := by
  intro k
  have h1 : C (1048576 * k + 717359) = 3145728 * k + 2152078 := by
    unfold C
    simp [show (1048576 * k + 717359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2152078) = 1572864 * k + 1076039 := by
    unfold C
    simp [show (3145728 * k + 2152078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1076039) = 4718592 * k + 3228118 := by
    unfold C
    simp [show (1572864 * k + 1076039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3228118) = 2359296 * k + 1614059 := by
    unfold C
    simp [show (4718592 * k + 3228118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1614059) = 7077888 * k + 4842178 := by
    unfold C
    simp [show (2359296 * k + 1614059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4842178) = 3538944 * k + 2421089 := by
    unfold C
    simp [show (7077888 * k + 4842178) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2421089) = 10616832 * k + 7263268 := by
    unfold C
    simp [show (3538944 * k + 2421089) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7263268) = 5308416 * k + 3631634 := by
    unfold C
    simp [show (10616832 * k + 7263268) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3631634) = 2654208 * k + 1815817 := by
    unfold C
    simp [show (5308416 * k + 3631634) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1815817) = 7962624 * k + 5447452 := by
    unfold C
    simp [show (2654208 * k + 1815817) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5447452) = 3981312 * k + 2723726 := by
    unfold C
    simp [show (7962624 * k + 5447452) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2723726) = 1990656 * k + 1361863 := by
    unfold C
    simp [show (3981312 * k + 2723726) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1361863) = 5971968 * k + 4085590 := by
    unfold C
    simp [show (1990656 * k + 1361863) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4085590) = 2985984 * k + 2042795 := by
    unfold C
    simp [show (5971968 * k + 4085590) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2042795) = 8957952 * k + 6128386 := by
    unfold C
    simp [show (2985984 * k + 2042795) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6128386) = 4478976 * k + 3064193 := by
    unfold C
    simp [show (8957952 * k + 6128386) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3064193) = 13436928 * k + 9192580 := by
    unfold C
    simp [show (4478976 * k + 3064193) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9192580) = 6718464 * k + 4596290 := by
    unfold C
    simp [show (13436928 * k + 9192580) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4596290) = 3359232 * k + 2298145 := by
    unfold C
    simp [show (6718464 * k + 4596290) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2298145) = 10077696 * k + 6894436 := by
    unfold C
    simp [show (3359232 * k + 2298145) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6894436) = 5038848 * k + 3447218 := by
    unfold C
    simp [show (10077696 * k + 6894436) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3447218) = 2519424 * k + 1723609 := by
    unfold C
    simp [show (5038848 * k + 3447218) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1723609) = 7558272 * k + 5170828 := by
    unfold C
    simp [show (2519424 * k + 1723609) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5170828) = 3779136 * k + 2585414 := by
    unfold C
    simp [show (7558272 * k + 5170828) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2585414) = 1889568 * k + 1292707 := by
    unfold C
    simp [show (3779136 * k + 2585414) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1292707) = 5668704 * k + 3878122 := by
    unfold C
    simp [show (1889568 * k + 1292707) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3878122) = 2834352 * k + 1939061 := by
    unfold C
    simp [show (5668704 * k + 3878122) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1939061) = 8503056 * k + 5817184 := by
    unfold C
    simp [show (2834352 * k + 1939061) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5817184) = 4251528 * k + 2908592 := by
    unfold C
    simp [show (8503056 * k + 5817184) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2908592) = 2125764 * k + 1454296 := by
    unfold C
    simp [show (4251528 * k + 2908592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1454296) = 1062882 * k + 727148 := by
    unfold C
    simp [show (2125764 * k + 1454296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 727148) = 531441 * k + 363574 := by
    unfold C
    simp [show (1062882 * k + 727148) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 717359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 717359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_717551 : ∀ k : Nat,
    iterate (1048576 * k + 717551) 32 = 531441 * k + 363671 ∧
      531441 * k + 363671 < 1048576 * k + 717551 := by
  intro k
  have h1 : C (1048576 * k + 717551) = 3145728 * k + 2152654 := by
    unfold C
    simp [show (1048576 * k + 717551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2152654) = 1572864 * k + 1076327 := by
    unfold C
    simp [show (3145728 * k + 2152654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1076327) = 4718592 * k + 3228982 := by
    unfold C
    simp [show (1572864 * k + 1076327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3228982) = 2359296 * k + 1614491 := by
    unfold C
    simp [show (4718592 * k + 3228982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1614491) = 7077888 * k + 4843474 := by
    unfold C
    simp [show (2359296 * k + 1614491) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4843474) = 3538944 * k + 2421737 := by
    unfold C
    simp [show (7077888 * k + 4843474) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2421737) = 10616832 * k + 7265212 := by
    unfold C
    simp [show (3538944 * k + 2421737) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7265212) = 5308416 * k + 3632606 := by
    unfold C
    simp [show (10616832 * k + 7265212) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3632606) = 2654208 * k + 1816303 := by
    unfold C
    simp [show (5308416 * k + 3632606) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1816303) = 7962624 * k + 5448910 := by
    unfold C
    simp [show (2654208 * k + 1816303) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5448910) = 3981312 * k + 2724455 := by
    unfold C
    simp [show (7962624 * k + 5448910) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2724455) = 11943936 * k + 8173366 := by
    unfold C
    simp [show (3981312 * k + 2724455) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8173366) = 5971968 * k + 4086683 := by
    unfold C
    simp [show (11943936 * k + 8173366) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4086683) = 17915904 * k + 12260050 := by
    unfold C
    simp [show (5971968 * k + 4086683) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12260050) = 8957952 * k + 6130025 := by
    unfold C
    simp [show (17915904 * k + 12260050) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6130025) = 26873856 * k + 18390076 := by
    unfold C
    simp [show (8957952 * k + 6130025) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18390076) = 13436928 * k + 9195038 := by
    unfold C
    simp [show (26873856 * k + 18390076) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9195038) = 6718464 * k + 4597519 := by
    unfold C
    simp [show (13436928 * k + 9195038) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4597519) = 20155392 * k + 13792558 := by
    unfold C
    simp [show (6718464 * k + 4597519) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13792558) = 10077696 * k + 6896279 := by
    unfold C
    simp [show (20155392 * k + 13792558) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6896279) = 30233088 * k + 20688838 := by
    unfold C
    simp [show (10077696 * k + 6896279) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20688838) = 15116544 * k + 10344419 := by
    unfold C
    simp [show (30233088 * k + 20688838) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10344419) = 45349632 * k + 31033258 := by
    unfold C
    simp [show (15116544 * k + 10344419) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 31033258) = 22674816 * k + 15516629 := by
    unfold C
    simp [show (45349632 * k + 31033258) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15516629) = 68024448 * k + 46549888 := by
    unfold C
    simp [show (22674816 * k + 15516629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 46549888) = 34012224 * k + 23274944 := by
    unfold C
    simp [show (68024448 * k + 46549888) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 23274944) = 17006112 * k + 11637472 := by
    unfold C
    simp [show (34012224 * k + 23274944) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11637472) = 8503056 * k + 5818736 := by
    unfold C
    simp [show (17006112 * k + 11637472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5818736) = 4251528 * k + 2909368 := by
    unfold C
    simp [show (8503056 * k + 5818736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2909368) = 2125764 * k + 1454684 := by
    unfold C
    simp [show (4251528 * k + 2909368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1454684) = 1062882 * k + 727342 := by
    unfold C
    simp [show (2125764 * k + 1454684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 727342) = 531441 * k + 363671 := by
    unfold C
    simp [show (1062882 * k + 727342) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 717551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 717551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_717935 : ∀ k : Nat,
    iterate (1048576 * k + 717935) 32 = 531441 * k + 363866 ∧
      531441 * k + 363866 < 1048576 * k + 717935 := by
  intro k
  have h1 : C (1048576 * k + 717935) = 3145728 * k + 2153806 := by
    unfold C
    simp [show (1048576 * k + 717935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2153806) = 1572864 * k + 1076903 := by
    unfold C
    simp [show (3145728 * k + 2153806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1076903) = 4718592 * k + 3230710 := by
    unfold C
    simp [show (1572864 * k + 1076903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3230710) = 2359296 * k + 1615355 := by
    unfold C
    simp [show (4718592 * k + 3230710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1615355) = 7077888 * k + 4846066 := by
    unfold C
    simp [show (2359296 * k + 1615355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4846066) = 3538944 * k + 2423033 := by
    unfold C
    simp [show (7077888 * k + 4846066) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2423033) = 10616832 * k + 7269100 := by
    unfold C
    simp [show (3538944 * k + 2423033) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7269100) = 5308416 * k + 3634550 := by
    unfold C
    simp [show (10616832 * k + 7269100) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3634550) = 2654208 * k + 1817275 := by
    unfold C
    simp [show (5308416 * k + 3634550) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1817275) = 7962624 * k + 5451826 := by
    unfold C
    simp [show (2654208 * k + 1817275) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5451826) = 3981312 * k + 2725913 := by
    unfold C
    simp [show (7962624 * k + 5451826) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2725913) = 11943936 * k + 8177740 := by
    unfold C
    simp [show (3981312 * k + 2725913) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8177740) = 5971968 * k + 4088870 := by
    unfold C
    simp [show (11943936 * k + 8177740) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4088870) = 2985984 * k + 2044435 := by
    unfold C
    simp [show (5971968 * k + 4088870) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2044435) = 8957952 * k + 6133306 := by
    unfold C
    simp [show (2985984 * k + 2044435) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6133306) = 4478976 * k + 3066653 := by
    unfold C
    simp [show (8957952 * k + 6133306) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3066653) = 13436928 * k + 9199960 := by
    unfold C
    simp [show (4478976 * k + 3066653) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9199960) = 6718464 * k + 4599980 := by
    unfold C
    simp [show (13436928 * k + 9199960) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4599980) = 3359232 * k + 2299990 := by
    unfold C
    simp [show (6718464 * k + 4599980) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2299990) = 1679616 * k + 1149995 := by
    unfold C
    simp [show (3359232 * k + 2299990) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1149995) = 5038848 * k + 3449986 := by
    unfold C
    simp [show (1679616 * k + 1149995) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3449986) = 2519424 * k + 1724993 := by
    unfold C
    simp [show (5038848 * k + 3449986) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1724993) = 7558272 * k + 5174980 := by
    unfold C
    simp [show (2519424 * k + 1724993) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5174980) = 3779136 * k + 2587490 := by
    unfold C
    simp [show (7558272 * k + 5174980) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2587490) = 1889568 * k + 1293745 := by
    unfold C
    simp [show (3779136 * k + 2587490) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1293745) = 5668704 * k + 3881236 := by
    unfold C
    simp [show (1889568 * k + 1293745) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3881236) = 2834352 * k + 1940618 := by
    unfold C
    simp [show (5668704 * k + 3881236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1940618) = 1417176 * k + 970309 := by
    unfold C
    simp [show (2834352 * k + 1940618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 970309) = 4251528 * k + 2910928 := by
    unfold C
    simp [show (1417176 * k + 970309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2910928) = 2125764 * k + 1455464 := by
    unfold C
    simp [show (4251528 * k + 2910928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1455464) = 1062882 * k + 727732 := by
    unfold C
    simp [show (2125764 * k + 1455464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 727732) = 531441 * k + 363866 := by
    unfold C
    simp [show (1062882 * k + 727732) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 717935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 717935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_718591 : ∀ k : Nat,
    iterate (1048576 * k + 718591) 32 = 531441 * k + 364198 ∧
      531441 * k + 364198 < 1048576 * k + 718591 := by
  intro k
  have h1 : C (1048576 * k + 718591) = 3145728 * k + 2155774 := by
    unfold C
    simp [show (1048576 * k + 718591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2155774) = 1572864 * k + 1077887 := by
    unfold C
    simp [show (3145728 * k + 2155774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1077887) = 4718592 * k + 3233662 := by
    unfold C
    simp [show (1572864 * k + 1077887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3233662) = 2359296 * k + 1616831 := by
    unfold C
    simp [show (4718592 * k + 3233662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1616831) = 7077888 * k + 4850494 := by
    unfold C
    simp [show (2359296 * k + 1616831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4850494) = 3538944 * k + 2425247 := by
    unfold C
    simp [show (7077888 * k + 4850494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2425247) = 10616832 * k + 7275742 := by
    unfold C
    simp [show (3538944 * k + 2425247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7275742) = 5308416 * k + 3637871 := by
    unfold C
    simp [show (10616832 * k + 7275742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3637871) = 15925248 * k + 10913614 := by
    unfold C
    simp [show (5308416 * k + 3637871) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10913614) = 7962624 * k + 5456807 := by
    unfold C
    simp [show (15925248 * k + 10913614) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5456807) = 23887872 * k + 16370422 := by
    unfold C
    simp [show (7962624 * k + 5456807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16370422) = 11943936 * k + 8185211 := by
    unfold C
    simp [show (23887872 * k + 16370422) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8185211) = 35831808 * k + 24555634 := by
    unfold C
    simp [show (11943936 * k + 8185211) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24555634) = 17915904 * k + 12277817 := by
    unfold C
    simp [show (35831808 * k + 24555634) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12277817) = 53747712 * k + 36833452 := by
    unfold C
    simp [show (17915904 * k + 12277817) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 36833452) = 26873856 * k + 18416726 := by
    unfold C
    simp [show (53747712 * k + 36833452) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 18416726) = 13436928 * k + 9208363 := by
    unfold C
    simp [show (26873856 * k + 18416726) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9208363) = 40310784 * k + 27625090 := by
    unfold C
    simp [show (13436928 * k + 9208363) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27625090) = 20155392 * k + 13812545 := by
    unfold C
    simp [show (40310784 * k + 27625090) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13812545) = 60466176 * k + 41437636 := by
    unfold C
    simp [show (20155392 * k + 13812545) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 41437636) = 30233088 * k + 20718818 := by
    unfold C
    simp [show (60466176 * k + 41437636) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20718818) = 15116544 * k + 10359409 := by
    unfold C
    simp [show (30233088 * k + 20718818) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10359409) = 45349632 * k + 31078228 := by
    unfold C
    simp [show (15116544 * k + 10359409) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 31078228) = 22674816 * k + 15539114 := by
    unfold C
    simp [show (45349632 * k + 31078228) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15539114) = 11337408 * k + 7769557 := by
    unfold C
    simp [show (22674816 * k + 15539114) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7769557) = 34012224 * k + 23308672 := by
    unfold C
    simp [show (11337408 * k + 7769557) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 23308672) = 17006112 * k + 11654336 := by
    unfold C
    simp [show (34012224 * k + 23308672) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11654336) = 8503056 * k + 5827168 := by
    unfold C
    simp [show (17006112 * k + 11654336) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5827168) = 4251528 * k + 2913584 := by
    unfold C
    simp [show (8503056 * k + 5827168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2913584) = 2125764 * k + 1456792 := by
    unfold C
    simp [show (4251528 * k + 2913584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1456792) = 1062882 * k + 728396 := by
    unfold C
    simp [show (2125764 * k + 1456792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 728396) = 531441 * k + 364198 := by
    unfold C
    simp [show (1062882 * k + 728396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 718591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 718591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_719099 : ∀ k : Nat,
    iterate (1048576 * k + 719099) 32 = 531441 * k + 364456 ∧
      531441 * k + 364456 < 1048576 * k + 719099 := by
  intro k
  have h1 : C (1048576 * k + 719099) = 3145728 * k + 2157298 := by
    unfold C
    simp [show (1048576 * k + 719099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2157298) = 1572864 * k + 1078649 := by
    unfold C
    simp [show (3145728 * k + 2157298) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1078649) = 4718592 * k + 3235948 := by
    unfold C
    simp [show (1572864 * k + 1078649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3235948) = 2359296 * k + 1617974 := by
    unfold C
    simp [show (4718592 * k + 3235948) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1617974) = 1179648 * k + 808987 := by
    unfold C
    simp [show (2359296 * k + 1617974) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 808987) = 3538944 * k + 2426962 := by
    unfold C
    simp [show (1179648 * k + 808987) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2426962) = 1769472 * k + 1213481 := by
    unfold C
    simp [show (3538944 * k + 2426962) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1213481) = 5308416 * k + 3640444 := by
    unfold C
    simp [show (1769472 * k + 1213481) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3640444) = 2654208 * k + 1820222 := by
    unfold C
    simp [show (5308416 * k + 3640444) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1820222) = 1327104 * k + 910111 := by
    unfold C
    simp [show (2654208 * k + 1820222) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 910111) = 3981312 * k + 2730334 := by
    unfold C
    simp [show (1327104 * k + 910111) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2730334) = 1990656 * k + 1365167 := by
    unfold C
    simp [show (3981312 * k + 2730334) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1365167) = 5971968 * k + 4095502 := by
    unfold C
    simp [show (1990656 * k + 1365167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4095502) = 2985984 * k + 2047751 := by
    unfold C
    simp [show (5971968 * k + 4095502) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2047751) = 8957952 * k + 6143254 := by
    unfold C
    simp [show (2985984 * k + 2047751) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6143254) = 4478976 * k + 3071627 := by
    unfold C
    simp [show (8957952 * k + 6143254) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3071627) = 13436928 * k + 9214882 := by
    unfold C
    simp [show (4478976 * k + 3071627) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9214882) = 6718464 * k + 4607441 := by
    unfold C
    simp [show (13436928 * k + 9214882) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4607441) = 20155392 * k + 13822324 := by
    unfold C
    simp [show (6718464 * k + 4607441) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13822324) = 10077696 * k + 6911162 := by
    unfold C
    simp [show (20155392 * k + 13822324) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6911162) = 5038848 * k + 3455581 := by
    unfold C
    simp [show (10077696 * k + 6911162) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3455581) = 15116544 * k + 10366744 := by
    unfold C
    simp [show (5038848 * k + 3455581) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10366744) = 7558272 * k + 5183372 := by
    unfold C
    simp [show (15116544 * k + 10366744) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5183372) = 3779136 * k + 2591686 := by
    unfold C
    simp [show (7558272 * k + 5183372) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2591686) = 1889568 * k + 1295843 := by
    unfold C
    simp [show (3779136 * k + 2591686) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1295843) = 5668704 * k + 3887530 := by
    unfold C
    simp [show (1889568 * k + 1295843) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3887530) = 2834352 * k + 1943765 := by
    unfold C
    simp [show (5668704 * k + 3887530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1943765) = 8503056 * k + 5831296 := by
    unfold C
    simp [show (2834352 * k + 1943765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5831296) = 4251528 * k + 2915648 := by
    unfold C
    simp [show (8503056 * k + 5831296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2915648) = 2125764 * k + 1457824 := by
    unfold C
    simp [show (4251528 * k + 2915648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1457824) = 1062882 * k + 728912 := by
    unfold C
    simp [show (2125764 * k + 1457824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 728912) = 531441 * k + 364456 := by
    unfold C
    simp [show (1062882 * k + 728912) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 719099) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 719099)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_720031 : ∀ k : Nat,
    iterate (1048576 * k + 720031) 32 = 531441 * k + 364928 ∧
      531441 * k + 364928 < 1048576 * k + 720031 := by
  intro k
  have h1 : C (1048576 * k + 720031) = 3145728 * k + 2160094 := by
    unfold C
    simp [show (1048576 * k + 720031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2160094) = 1572864 * k + 1080047 := by
    unfold C
    simp [show (3145728 * k + 2160094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1080047) = 4718592 * k + 3240142 := by
    unfold C
    simp [show (1572864 * k + 1080047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3240142) = 2359296 * k + 1620071 := by
    unfold C
    simp [show (4718592 * k + 3240142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1620071) = 7077888 * k + 4860214 := by
    unfold C
    simp [show (2359296 * k + 1620071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4860214) = 3538944 * k + 2430107 := by
    unfold C
    simp [show (7077888 * k + 4860214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2430107) = 10616832 * k + 7290322 := by
    unfold C
    simp [show (3538944 * k + 2430107) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7290322) = 5308416 * k + 3645161 := by
    unfold C
    simp [show (10616832 * k + 7290322) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3645161) = 15925248 * k + 10935484 := by
    unfold C
    simp [show (5308416 * k + 3645161) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10935484) = 7962624 * k + 5467742 := by
    unfold C
    simp [show (15925248 * k + 10935484) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5467742) = 3981312 * k + 2733871 := by
    unfold C
    simp [show (7962624 * k + 5467742) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2733871) = 11943936 * k + 8201614 := by
    unfold C
    simp [show (3981312 * k + 2733871) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8201614) = 5971968 * k + 4100807 := by
    unfold C
    simp [show (11943936 * k + 8201614) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4100807) = 17915904 * k + 12302422 := by
    unfold C
    simp [show (5971968 * k + 4100807) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12302422) = 8957952 * k + 6151211 := by
    unfold C
    simp [show (17915904 * k + 12302422) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6151211) = 26873856 * k + 18453634 := by
    unfold C
    simp [show (8957952 * k + 6151211) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18453634) = 13436928 * k + 9226817 := by
    unfold C
    simp [show (26873856 * k + 18453634) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9226817) = 40310784 * k + 27680452 := by
    unfold C
    simp [show (13436928 * k + 9226817) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27680452) = 20155392 * k + 13840226 := by
    unfold C
    simp [show (40310784 * k + 27680452) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13840226) = 10077696 * k + 6920113 := by
    unfold C
    simp [show (20155392 * k + 13840226) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6920113) = 30233088 * k + 20760340 := by
    unfold C
    simp [show (10077696 * k + 6920113) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20760340) = 15116544 * k + 10380170 := by
    unfold C
    simp [show (30233088 * k + 20760340) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10380170) = 7558272 * k + 5190085 := by
    unfold C
    simp [show (15116544 * k + 10380170) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5190085) = 22674816 * k + 15570256 := by
    unfold C
    simp [show (7558272 * k + 5190085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15570256) = 11337408 * k + 7785128 := by
    unfold C
    simp [show (22674816 * k + 15570256) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7785128) = 5668704 * k + 3892564 := by
    unfold C
    simp [show (11337408 * k + 7785128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3892564) = 2834352 * k + 1946282 := by
    unfold C
    simp [show (5668704 * k + 3892564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1946282) = 1417176 * k + 973141 := by
    unfold C
    simp [show (2834352 * k + 1946282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 973141) = 4251528 * k + 2919424 := by
    unfold C
    simp [show (1417176 * k + 973141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2919424) = 2125764 * k + 1459712 := by
    unfold C
    simp [show (4251528 * k + 2919424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1459712) = 1062882 * k + 729856 := by
    unfold C
    simp [show (2125764 * k + 1459712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 729856) = 531441 * k + 364928 := by
    unfold C
    simp [show (1062882 * k + 729856) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 720031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 720031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_720123 : ∀ k : Nat,
    iterate (1048576 * k + 720123) 32 = 531441 * k + 364975 ∧
      531441 * k + 364975 < 1048576 * k + 720123 := by
  intro k
  have h1 : C (1048576 * k + 720123) = 3145728 * k + 2160370 := by
    unfold C
    simp [show (1048576 * k + 720123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2160370) = 1572864 * k + 1080185 := by
    unfold C
    simp [show (3145728 * k + 2160370) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1080185) = 4718592 * k + 3240556 := by
    unfold C
    simp [show (1572864 * k + 1080185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3240556) = 2359296 * k + 1620278 := by
    unfold C
    simp [show (4718592 * k + 3240556) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1620278) = 1179648 * k + 810139 := by
    unfold C
    simp [show (2359296 * k + 1620278) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 810139) = 3538944 * k + 2430418 := by
    unfold C
    simp [show (1179648 * k + 810139) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2430418) = 1769472 * k + 1215209 := by
    unfold C
    simp [show (3538944 * k + 2430418) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1215209) = 5308416 * k + 3645628 := by
    unfold C
    simp [show (1769472 * k + 1215209) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3645628) = 2654208 * k + 1822814 := by
    unfold C
    simp [show (5308416 * k + 3645628) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1822814) = 1327104 * k + 911407 := by
    unfold C
    simp [show (2654208 * k + 1822814) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 911407) = 3981312 * k + 2734222 := by
    unfold C
    simp [show (1327104 * k + 911407) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2734222) = 1990656 * k + 1367111 := by
    unfold C
    simp [show (3981312 * k + 2734222) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1367111) = 5971968 * k + 4101334 := by
    unfold C
    simp [show (1990656 * k + 1367111) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4101334) = 2985984 * k + 2050667 := by
    unfold C
    simp [show (5971968 * k + 4101334) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2050667) = 8957952 * k + 6152002 := by
    unfold C
    simp [show (2985984 * k + 2050667) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6152002) = 4478976 * k + 3076001 := by
    unfold C
    simp [show (8957952 * k + 6152002) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3076001) = 13436928 * k + 9228004 := by
    unfold C
    simp [show (4478976 * k + 3076001) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9228004) = 6718464 * k + 4614002 := by
    unfold C
    simp [show (13436928 * k + 9228004) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4614002) = 3359232 * k + 2307001 := by
    unfold C
    simp [show (6718464 * k + 4614002) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2307001) = 10077696 * k + 6921004 := by
    unfold C
    simp [show (3359232 * k + 2307001) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6921004) = 5038848 * k + 3460502 := by
    unfold C
    simp [show (10077696 * k + 6921004) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3460502) = 2519424 * k + 1730251 := by
    unfold C
    simp [show (5038848 * k + 3460502) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1730251) = 7558272 * k + 5190754 := by
    unfold C
    simp [show (2519424 * k + 1730251) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5190754) = 3779136 * k + 2595377 := by
    unfold C
    simp [show (7558272 * k + 5190754) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2595377) = 11337408 * k + 7786132 := by
    unfold C
    simp [show (3779136 * k + 2595377) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7786132) = 5668704 * k + 3893066 := by
    unfold C
    simp [show (11337408 * k + 7786132) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3893066) = 2834352 * k + 1946533 := by
    unfold C
    simp [show (5668704 * k + 3893066) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1946533) = 8503056 * k + 5839600 := by
    unfold C
    simp [show (2834352 * k + 1946533) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5839600) = 4251528 * k + 2919800 := by
    unfold C
    simp [show (8503056 * k + 5839600) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2919800) = 2125764 * k + 1459900 := by
    unfold C
    simp [show (4251528 * k + 2919800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1459900) = 1062882 * k + 729950 := by
    unfold C
    simp [show (2125764 * k + 1459900) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 729950) = 531441 * k + 364975 := by
    unfold C
    simp [show (1062882 * k + 729950) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 720123) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 720123)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_720155 : ∀ k : Nat,
    iterate (1048576 * k + 720155) 32 = 531441 * k + 364991 ∧
      531441 * k + 364991 < 1048576 * k + 720155 := by
  intro k
  have h1 : C (1048576 * k + 720155) = 3145728 * k + 2160466 := by
    unfold C
    simp [show (1048576 * k + 720155) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2160466) = 1572864 * k + 1080233 := by
    unfold C
    simp [show (3145728 * k + 2160466) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1080233) = 4718592 * k + 3240700 := by
    unfold C
    simp [show (1572864 * k + 1080233) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3240700) = 2359296 * k + 1620350 := by
    unfold C
    simp [show (4718592 * k + 3240700) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1620350) = 1179648 * k + 810175 := by
    unfold C
    simp [show (2359296 * k + 1620350) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 810175) = 3538944 * k + 2430526 := by
    unfold C
    simp [show (1179648 * k + 810175) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2430526) = 1769472 * k + 1215263 := by
    unfold C
    simp [show (3538944 * k + 2430526) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1215263) = 5308416 * k + 3645790 := by
    unfold C
    simp [show (1769472 * k + 1215263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3645790) = 2654208 * k + 1822895 := by
    unfold C
    simp [show (5308416 * k + 3645790) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1822895) = 7962624 * k + 5468686 := by
    unfold C
    simp [show (2654208 * k + 1822895) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5468686) = 3981312 * k + 2734343 := by
    unfold C
    simp [show (7962624 * k + 5468686) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2734343) = 11943936 * k + 8203030 := by
    unfold C
    simp [show (3981312 * k + 2734343) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8203030) = 5971968 * k + 4101515 := by
    unfold C
    simp [show (11943936 * k + 8203030) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4101515) = 17915904 * k + 12304546 := by
    unfold C
    simp [show (5971968 * k + 4101515) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12304546) = 8957952 * k + 6152273 := by
    unfold C
    simp [show (17915904 * k + 12304546) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6152273) = 26873856 * k + 18456820 := by
    unfold C
    simp [show (8957952 * k + 6152273) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18456820) = 13436928 * k + 9228410 := by
    unfold C
    simp [show (26873856 * k + 18456820) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9228410) = 6718464 * k + 4614205 := by
    unfold C
    simp [show (13436928 * k + 9228410) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4614205) = 20155392 * k + 13842616 := by
    unfold C
    simp [show (6718464 * k + 4614205) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13842616) = 10077696 * k + 6921308 := by
    unfold C
    simp [show (20155392 * k + 13842616) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6921308) = 5038848 * k + 3460654 := by
    unfold C
    simp [show (10077696 * k + 6921308) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3460654) = 2519424 * k + 1730327 := by
    unfold C
    simp [show (5038848 * k + 3460654) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1730327) = 7558272 * k + 5190982 := by
    unfold C
    simp [show (2519424 * k + 1730327) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5190982) = 3779136 * k + 2595491 := by
    unfold C
    simp [show (7558272 * k + 5190982) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2595491) = 11337408 * k + 7786474 := by
    unfold C
    simp [show (3779136 * k + 2595491) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7786474) = 5668704 * k + 3893237 := by
    unfold C
    simp [show (11337408 * k + 7786474) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3893237) = 17006112 * k + 11679712 := by
    unfold C
    simp [show (5668704 * k + 3893237) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11679712) = 8503056 * k + 5839856 := by
    unfold C
    simp [show (17006112 * k + 11679712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5839856) = 4251528 * k + 2919928 := by
    unfold C
    simp [show (8503056 * k + 5839856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2919928) = 2125764 * k + 1459964 := by
    unfold C
    simp [show (4251528 * k + 2919928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1459964) = 1062882 * k + 729982 := by
    unfold C
    simp [show (2125764 * k + 1459964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 729982) = 531441 * k + 364991 := by
    unfold C
    simp [show (1062882 * k + 729982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 720155) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 720155)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_720431 : ∀ k : Nat,
    iterate (1048576 * k + 720431) 32 = 531441 * k + 365131 ∧
      531441 * k + 365131 < 1048576 * k + 720431 := by
  intro k
  have h1 : C (1048576 * k + 720431) = 3145728 * k + 2161294 := by
    unfold C
    simp [show (1048576 * k + 720431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2161294) = 1572864 * k + 1080647 := by
    unfold C
    simp [show (3145728 * k + 2161294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1080647) = 4718592 * k + 3241942 := by
    unfold C
    simp [show (1572864 * k + 1080647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3241942) = 2359296 * k + 1620971 := by
    unfold C
    simp [show (4718592 * k + 3241942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1620971) = 7077888 * k + 4862914 := by
    unfold C
    simp [show (2359296 * k + 1620971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4862914) = 3538944 * k + 2431457 := by
    unfold C
    simp [show (7077888 * k + 4862914) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2431457) = 10616832 * k + 7294372 := by
    unfold C
    simp [show (3538944 * k + 2431457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7294372) = 5308416 * k + 3647186 := by
    unfold C
    simp [show (10616832 * k + 7294372) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3647186) = 2654208 * k + 1823593 := by
    unfold C
    simp [show (5308416 * k + 3647186) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1823593) = 7962624 * k + 5470780 := by
    unfold C
    simp [show (2654208 * k + 1823593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5470780) = 3981312 * k + 2735390 := by
    unfold C
    simp [show (7962624 * k + 5470780) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2735390) = 1990656 * k + 1367695 := by
    unfold C
    simp [show (3981312 * k + 2735390) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1367695) = 5971968 * k + 4103086 := by
    unfold C
    simp [show (1990656 * k + 1367695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4103086) = 2985984 * k + 2051543 := by
    unfold C
    simp [show (5971968 * k + 4103086) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2051543) = 8957952 * k + 6154630 := by
    unfold C
    simp [show (2985984 * k + 2051543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6154630) = 4478976 * k + 3077315 := by
    unfold C
    simp [show (8957952 * k + 6154630) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3077315) = 13436928 * k + 9231946 := by
    unfold C
    simp [show (4478976 * k + 3077315) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9231946) = 6718464 * k + 4615973 := by
    unfold C
    simp [show (13436928 * k + 9231946) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4615973) = 20155392 * k + 13847920 := by
    unfold C
    simp [show (6718464 * k + 4615973) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13847920) = 10077696 * k + 6923960 := by
    unfold C
    simp [show (20155392 * k + 13847920) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6923960) = 5038848 * k + 3461980 := by
    unfold C
    simp [show (10077696 * k + 6923960) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3461980) = 2519424 * k + 1730990 := by
    unfold C
    simp [show (5038848 * k + 3461980) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1730990) = 1259712 * k + 865495 := by
    unfold C
    simp [show (2519424 * k + 1730990) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 865495) = 3779136 * k + 2596486 := by
    unfold C
    simp [show (1259712 * k + 865495) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2596486) = 1889568 * k + 1298243 := by
    unfold C
    simp [show (3779136 * k + 2596486) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1298243) = 5668704 * k + 3894730 := by
    unfold C
    simp [show (1889568 * k + 1298243) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3894730) = 2834352 * k + 1947365 := by
    unfold C
    simp [show (5668704 * k + 3894730) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1947365) = 8503056 * k + 5842096 := by
    unfold C
    simp [show (2834352 * k + 1947365) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5842096) = 4251528 * k + 2921048 := by
    unfold C
    simp [show (8503056 * k + 5842096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2921048) = 2125764 * k + 1460524 := by
    unfold C
    simp [show (4251528 * k + 2921048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1460524) = 1062882 * k + 730262 := by
    unfold C
    simp [show (2125764 * k + 1460524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 730262) = 531441 * k + 365131 := by
    unfold C
    simp [show (1062882 * k + 730262) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 720431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 720431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_721055 : ∀ k : Nat,
    iterate (1048576 * k + 721055) 32 = 531441 * k + 365447 ∧
      531441 * k + 365447 < 1048576 * k + 721055 := by
  intro k
  have h1 : C (1048576 * k + 721055) = 3145728 * k + 2163166 := by
    unfold C
    simp [show (1048576 * k + 721055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2163166) = 1572864 * k + 1081583 := by
    unfold C
    simp [show (3145728 * k + 2163166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1081583) = 4718592 * k + 3244750 := by
    unfold C
    simp [show (1572864 * k + 1081583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3244750) = 2359296 * k + 1622375 := by
    unfold C
    simp [show (4718592 * k + 3244750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1622375) = 7077888 * k + 4867126 := by
    unfold C
    simp [show (2359296 * k + 1622375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4867126) = 3538944 * k + 2433563 := by
    unfold C
    simp [show (7077888 * k + 4867126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2433563) = 10616832 * k + 7300690 := by
    unfold C
    simp [show (3538944 * k + 2433563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7300690) = 5308416 * k + 3650345 := by
    unfold C
    simp [show (10616832 * k + 7300690) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3650345) = 15925248 * k + 10951036 := by
    unfold C
    simp [show (5308416 * k + 3650345) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10951036) = 7962624 * k + 5475518 := by
    unfold C
    simp [show (15925248 * k + 10951036) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5475518) = 3981312 * k + 2737759 := by
    unfold C
    simp [show (7962624 * k + 5475518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2737759) = 11943936 * k + 8213278 := by
    unfold C
    simp [show (3981312 * k + 2737759) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8213278) = 5971968 * k + 4106639 := by
    unfold C
    simp [show (11943936 * k + 8213278) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4106639) = 17915904 * k + 12319918 := by
    unfold C
    simp [show (5971968 * k + 4106639) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12319918) = 8957952 * k + 6159959 := by
    unfold C
    simp [show (17915904 * k + 12319918) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6159959) = 26873856 * k + 18479878 := by
    unfold C
    simp [show (8957952 * k + 6159959) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18479878) = 13436928 * k + 9239939 := by
    unfold C
    simp [show (26873856 * k + 18479878) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9239939) = 40310784 * k + 27719818 := by
    unfold C
    simp [show (13436928 * k + 9239939) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27719818) = 20155392 * k + 13859909 := by
    unfold C
    simp [show (40310784 * k + 27719818) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13859909) = 60466176 * k + 41579728 := by
    unfold C
    simp [show (20155392 * k + 13859909) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 41579728) = 30233088 * k + 20789864 := by
    unfold C
    simp [show (60466176 * k + 41579728) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20789864) = 15116544 * k + 10394932 := by
    unfold C
    simp [show (30233088 * k + 20789864) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10394932) = 7558272 * k + 5197466 := by
    unfold C
    simp [show (15116544 * k + 10394932) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5197466) = 3779136 * k + 2598733 := by
    unfold C
    simp [show (7558272 * k + 5197466) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2598733) = 11337408 * k + 7796200 := by
    unfold C
    simp [show (3779136 * k + 2598733) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7796200) = 5668704 * k + 3898100 := by
    unfold C
    simp [show (11337408 * k + 7796200) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3898100) = 2834352 * k + 1949050 := by
    unfold C
    simp [show (5668704 * k + 3898100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1949050) = 1417176 * k + 974525 := by
    unfold C
    simp [show (2834352 * k + 1949050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 974525) = 4251528 * k + 2923576 := by
    unfold C
    simp [show (1417176 * k + 974525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2923576) = 2125764 * k + 1461788 := by
    unfold C
    simp [show (4251528 * k + 2923576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1461788) = 1062882 * k + 730894 := by
    unfold C
    simp [show (2125764 * k + 1461788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 730894) = 531441 * k + 365447 := by
    unfold C
    simp [show (1062882 * k + 730894) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 721055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 721055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_721647 : ∀ k : Nat,
    iterate (1048576 * k + 721647) 32 = 531441 * k + 365747 ∧
      531441 * k + 365747 < 1048576 * k + 721647 := by
  intro k
  have h1 : C (1048576 * k + 721647) = 3145728 * k + 2164942 := by
    unfold C
    simp [show (1048576 * k + 721647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2164942) = 1572864 * k + 1082471 := by
    unfold C
    simp [show (3145728 * k + 2164942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1082471) = 4718592 * k + 3247414 := by
    unfold C
    simp [show (1572864 * k + 1082471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3247414) = 2359296 * k + 1623707 := by
    unfold C
    simp [show (4718592 * k + 3247414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1623707) = 7077888 * k + 4871122 := by
    unfold C
    simp [show (2359296 * k + 1623707) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4871122) = 3538944 * k + 2435561 := by
    unfold C
    simp [show (7077888 * k + 4871122) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2435561) = 10616832 * k + 7306684 := by
    unfold C
    simp [show (3538944 * k + 2435561) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7306684) = 5308416 * k + 3653342 := by
    unfold C
    simp [show (10616832 * k + 7306684) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3653342) = 2654208 * k + 1826671 := by
    unfold C
    simp [show (5308416 * k + 3653342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1826671) = 7962624 * k + 5480014 := by
    unfold C
    simp [show (2654208 * k + 1826671) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5480014) = 3981312 * k + 2740007 := by
    unfold C
    simp [show (7962624 * k + 5480014) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2740007) = 11943936 * k + 8220022 := by
    unfold C
    simp [show (3981312 * k + 2740007) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8220022) = 5971968 * k + 4110011 := by
    unfold C
    simp [show (11943936 * k + 8220022) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4110011) = 17915904 * k + 12330034 := by
    unfold C
    simp [show (5971968 * k + 4110011) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12330034) = 8957952 * k + 6165017 := by
    unfold C
    simp [show (17915904 * k + 12330034) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6165017) = 26873856 * k + 18495052 := by
    unfold C
    simp [show (8957952 * k + 6165017) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18495052) = 13436928 * k + 9247526 := by
    unfold C
    simp [show (26873856 * k + 18495052) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9247526) = 6718464 * k + 4623763 := by
    unfold C
    simp [show (13436928 * k + 9247526) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4623763) = 20155392 * k + 13871290 := by
    unfold C
    simp [show (6718464 * k + 4623763) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13871290) = 10077696 * k + 6935645 := by
    unfold C
    simp [show (20155392 * k + 13871290) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6935645) = 30233088 * k + 20806936 := by
    unfold C
    simp [show (10077696 * k + 6935645) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20806936) = 15116544 * k + 10403468 := by
    unfold C
    simp [show (30233088 * k + 20806936) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10403468) = 7558272 * k + 5201734 := by
    unfold C
    simp [show (15116544 * k + 10403468) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5201734) = 3779136 * k + 2600867 := by
    unfold C
    simp [show (7558272 * k + 5201734) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2600867) = 11337408 * k + 7802602 := by
    unfold C
    simp [show (3779136 * k + 2600867) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7802602) = 5668704 * k + 3901301 := by
    unfold C
    simp [show (11337408 * k + 7802602) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3901301) = 17006112 * k + 11703904 := by
    unfold C
    simp [show (5668704 * k + 3901301) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11703904) = 8503056 * k + 5851952 := by
    unfold C
    simp [show (17006112 * k + 11703904) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5851952) = 4251528 * k + 2925976 := by
    unfold C
    simp [show (8503056 * k + 5851952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2925976) = 2125764 * k + 1462988 := by
    unfold C
    simp [show (4251528 * k + 2925976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1462988) = 1062882 * k + 731494 := by
    unfold C
    simp [show (2125764 * k + 1462988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 731494) = 531441 * k + 365747 := by
    unfold C
    simp [show (1062882 * k + 731494) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 721647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 721647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_722687 : ∀ k : Nat,
    iterate (1048576 * k + 722687) 32 = 531441 * k + 366274 ∧
      531441 * k + 366274 < 1048576 * k + 722687 := by
  intro k
  have h1 : C (1048576 * k + 722687) = 3145728 * k + 2168062 := by
    unfold C
    simp [show (1048576 * k + 722687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2168062) = 1572864 * k + 1084031 := by
    unfold C
    simp [show (3145728 * k + 2168062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1084031) = 4718592 * k + 3252094 := by
    unfold C
    simp [show (1572864 * k + 1084031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3252094) = 2359296 * k + 1626047 := by
    unfold C
    simp [show (4718592 * k + 3252094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1626047) = 7077888 * k + 4878142 := by
    unfold C
    simp [show (2359296 * k + 1626047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4878142) = 3538944 * k + 2439071 := by
    unfold C
    simp [show (7077888 * k + 4878142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2439071) = 10616832 * k + 7317214 := by
    unfold C
    simp [show (3538944 * k + 2439071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7317214) = 5308416 * k + 3658607 := by
    unfold C
    simp [show (10616832 * k + 7317214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3658607) = 15925248 * k + 10975822 := by
    unfold C
    simp [show (5308416 * k + 3658607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10975822) = 7962624 * k + 5487911 := by
    unfold C
    simp [show (15925248 * k + 10975822) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5487911) = 23887872 * k + 16463734 := by
    unfold C
    simp [show (7962624 * k + 5487911) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16463734) = 11943936 * k + 8231867 := by
    unfold C
    simp [show (23887872 * k + 16463734) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8231867) = 35831808 * k + 24695602 := by
    unfold C
    simp [show (11943936 * k + 8231867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24695602) = 17915904 * k + 12347801 := by
    unfold C
    simp [show (35831808 * k + 24695602) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12347801) = 53747712 * k + 37043404 := by
    unfold C
    simp [show (17915904 * k + 12347801) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 37043404) = 26873856 * k + 18521702 := by
    unfold C
    simp [show (53747712 * k + 37043404) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 18521702) = 13436928 * k + 9260851 := by
    unfold C
    simp [show (26873856 * k + 18521702) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9260851) = 40310784 * k + 27782554 := by
    unfold C
    simp [show (13436928 * k + 9260851) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27782554) = 20155392 * k + 13891277 := by
    unfold C
    simp [show (40310784 * k + 27782554) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13891277) = 60466176 * k + 41673832 := by
    unfold C
    simp [show (20155392 * k + 13891277) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 41673832) = 30233088 * k + 20836916 := by
    unfold C
    simp [show (60466176 * k + 41673832) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20836916) = 15116544 * k + 10418458 := by
    unfold C
    simp [show (30233088 * k + 20836916) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10418458) = 7558272 * k + 5209229 := by
    unfold C
    simp [show (15116544 * k + 10418458) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5209229) = 22674816 * k + 15627688 := by
    unfold C
    simp [show (7558272 * k + 5209229) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15627688) = 11337408 * k + 7813844 := by
    unfold C
    simp [show (22674816 * k + 15627688) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7813844) = 5668704 * k + 3906922 := by
    unfold C
    simp [show (11337408 * k + 7813844) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3906922) = 2834352 * k + 1953461 := by
    unfold C
    simp [show (5668704 * k + 3906922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1953461) = 8503056 * k + 5860384 := by
    unfold C
    simp [show (2834352 * k + 1953461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5860384) = 4251528 * k + 2930192 := by
    unfold C
    simp [show (8503056 * k + 5860384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2930192) = 2125764 * k + 1465096 := by
    unfold C
    simp [show (4251528 * k + 2930192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1465096) = 1062882 * k + 732548 := by
    unfold C
    simp [show (2125764 * k + 1465096) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 732548) = 531441 * k + 366274 := by
    unfold C
    simp [show (1062882 * k + 732548) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 722687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 722687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_723355 : ∀ k : Nat,
    iterate (1048576 * k + 723355) 32 = 531441 * k + 366613 ∧
      531441 * k + 366613 < 1048576 * k + 723355 := by
  intro k
  have h1 : C (1048576 * k + 723355) = 3145728 * k + 2170066 := by
    unfold C
    simp [show (1048576 * k + 723355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2170066) = 1572864 * k + 1085033 := by
    unfold C
    simp [show (3145728 * k + 2170066) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1085033) = 4718592 * k + 3255100 := by
    unfold C
    simp [show (1572864 * k + 1085033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3255100) = 2359296 * k + 1627550 := by
    unfold C
    simp [show (4718592 * k + 3255100) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1627550) = 1179648 * k + 813775 := by
    unfold C
    simp [show (2359296 * k + 1627550) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 813775) = 3538944 * k + 2441326 := by
    unfold C
    simp [show (1179648 * k + 813775) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2441326) = 1769472 * k + 1220663 := by
    unfold C
    simp [show (3538944 * k + 2441326) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1220663) = 5308416 * k + 3661990 := by
    unfold C
    simp [show (1769472 * k + 1220663) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3661990) = 2654208 * k + 1830995 := by
    unfold C
    simp [show (5308416 * k + 3661990) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1830995) = 7962624 * k + 5492986 := by
    unfold C
    simp [show (2654208 * k + 1830995) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5492986) = 3981312 * k + 2746493 := by
    unfold C
    simp [show (7962624 * k + 5492986) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2746493) = 11943936 * k + 8239480 := by
    unfold C
    simp [show (3981312 * k + 2746493) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8239480) = 5971968 * k + 4119740 := by
    unfold C
    simp [show (11943936 * k + 8239480) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4119740) = 2985984 * k + 2059870 := by
    unfold C
    simp [show (5971968 * k + 4119740) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2059870) = 1492992 * k + 1029935 := by
    unfold C
    simp [show (2985984 * k + 2059870) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1029935) = 4478976 * k + 3089806 := by
    unfold C
    simp [show (1492992 * k + 1029935) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3089806) = 2239488 * k + 1544903 := by
    unfold C
    simp [show (4478976 * k + 3089806) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1544903) = 6718464 * k + 4634710 := by
    unfold C
    simp [show (2239488 * k + 1544903) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4634710) = 3359232 * k + 2317355 := by
    unfold C
    simp [show (6718464 * k + 4634710) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2317355) = 10077696 * k + 6952066 := by
    unfold C
    simp [show (3359232 * k + 2317355) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6952066) = 5038848 * k + 3476033 := by
    unfold C
    simp [show (10077696 * k + 6952066) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3476033) = 15116544 * k + 10428100 := by
    unfold C
    simp [show (5038848 * k + 3476033) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10428100) = 7558272 * k + 5214050 := by
    unfold C
    simp [show (15116544 * k + 10428100) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5214050) = 3779136 * k + 2607025 := by
    unfold C
    simp [show (7558272 * k + 5214050) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2607025) = 11337408 * k + 7821076 := by
    unfold C
    simp [show (3779136 * k + 2607025) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7821076) = 5668704 * k + 3910538 := by
    unfold C
    simp [show (11337408 * k + 7821076) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3910538) = 2834352 * k + 1955269 := by
    unfold C
    simp [show (5668704 * k + 3910538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1955269) = 8503056 * k + 5865808 := by
    unfold C
    simp [show (2834352 * k + 1955269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5865808) = 4251528 * k + 2932904 := by
    unfold C
    simp [show (8503056 * k + 5865808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2932904) = 2125764 * k + 1466452 := by
    unfold C
    simp [show (4251528 * k + 2932904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1466452) = 1062882 * k + 733226 := by
    unfold C
    simp [show (2125764 * k + 1466452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 733226) = 531441 * k + 366613 := by
    unfold C
    simp [show (1062882 * k + 733226) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 723355) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 723355)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_724251 : ∀ k : Nat,
    iterate (1048576 * k + 724251) 32 = 531441 * k + 367067 ∧
      531441 * k + 367067 < 1048576 * k + 724251 := by
  intro k
  have h1 : C (1048576 * k + 724251) = 3145728 * k + 2172754 := by
    unfold C
    simp [show (1048576 * k + 724251) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2172754) = 1572864 * k + 1086377 := by
    unfold C
    simp [show (3145728 * k + 2172754) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1086377) = 4718592 * k + 3259132 := by
    unfold C
    simp [show (1572864 * k + 1086377) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3259132) = 2359296 * k + 1629566 := by
    unfold C
    simp [show (4718592 * k + 3259132) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1629566) = 1179648 * k + 814783 := by
    unfold C
    simp [show (2359296 * k + 1629566) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 814783) = 3538944 * k + 2444350 := by
    unfold C
    simp [show (1179648 * k + 814783) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2444350) = 1769472 * k + 1222175 := by
    unfold C
    simp [show (3538944 * k + 2444350) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1222175) = 5308416 * k + 3666526 := by
    unfold C
    simp [show (1769472 * k + 1222175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3666526) = 2654208 * k + 1833263 := by
    unfold C
    simp [show (5308416 * k + 3666526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1833263) = 7962624 * k + 5499790 := by
    unfold C
    simp [show (2654208 * k + 1833263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5499790) = 3981312 * k + 2749895 := by
    unfold C
    simp [show (7962624 * k + 5499790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2749895) = 11943936 * k + 8249686 := by
    unfold C
    simp [show (3981312 * k + 2749895) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8249686) = 5971968 * k + 4124843 := by
    unfold C
    simp [show (11943936 * k + 8249686) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4124843) = 17915904 * k + 12374530 := by
    unfold C
    simp [show (5971968 * k + 4124843) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12374530) = 8957952 * k + 6187265 := by
    unfold C
    simp [show (17915904 * k + 12374530) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6187265) = 26873856 * k + 18561796 := by
    unfold C
    simp [show (8957952 * k + 6187265) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18561796) = 13436928 * k + 9280898 := by
    unfold C
    simp [show (26873856 * k + 18561796) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9280898) = 6718464 * k + 4640449 := by
    unfold C
    simp [show (13436928 * k + 9280898) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4640449) = 20155392 * k + 13921348 := by
    unfold C
    simp [show (6718464 * k + 4640449) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13921348) = 10077696 * k + 6960674 := by
    unfold C
    simp [show (20155392 * k + 13921348) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6960674) = 5038848 * k + 3480337 := by
    unfold C
    simp [show (10077696 * k + 6960674) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3480337) = 15116544 * k + 10441012 := by
    unfold C
    simp [show (5038848 * k + 3480337) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10441012) = 7558272 * k + 5220506 := by
    unfold C
    simp [show (15116544 * k + 10441012) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5220506) = 3779136 * k + 2610253 := by
    unfold C
    simp [show (7558272 * k + 5220506) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2610253) = 11337408 * k + 7830760 := by
    unfold C
    simp [show (3779136 * k + 2610253) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7830760) = 5668704 * k + 3915380 := by
    unfold C
    simp [show (11337408 * k + 7830760) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3915380) = 2834352 * k + 1957690 := by
    unfold C
    simp [show (5668704 * k + 3915380) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1957690) = 1417176 * k + 978845 := by
    unfold C
    simp [show (2834352 * k + 1957690) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 978845) = 4251528 * k + 2936536 := by
    unfold C
    simp [show (1417176 * k + 978845) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2936536) = 2125764 * k + 1468268 := by
    unfold C
    simp [show (4251528 * k + 2936536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1468268) = 1062882 * k + 734134 := by
    unfold C
    simp [show (2125764 * k + 1468268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 734134) = 531441 * k + 367067 := by
    unfold C
    simp [show (1062882 * k + 734134) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 724251) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 724251)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_724647 : ∀ k : Nat,
    iterate (1048576 * k + 724647) 32 = 531441 * k + 367268 ∧
      531441 * k + 367268 < 1048576 * k + 724647 := by
  intro k
  have h1 : C (1048576 * k + 724647) = 3145728 * k + 2173942 := by
    unfold C
    simp [show (1048576 * k + 724647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2173942) = 1572864 * k + 1086971 := by
    unfold C
    simp [show (3145728 * k + 2173942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1086971) = 4718592 * k + 3260914 := by
    unfold C
    simp [show (1572864 * k + 1086971) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3260914) = 2359296 * k + 1630457 := by
    unfold C
    simp [show (4718592 * k + 3260914) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1630457) = 7077888 * k + 4891372 := by
    unfold C
    simp [show (2359296 * k + 1630457) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4891372) = 3538944 * k + 2445686 := by
    unfold C
    simp [show (7077888 * k + 4891372) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2445686) = 1769472 * k + 1222843 := by
    unfold C
    simp [show (3538944 * k + 2445686) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1222843) = 5308416 * k + 3668530 := by
    unfold C
    simp [show (1769472 * k + 1222843) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3668530) = 2654208 * k + 1834265 := by
    unfold C
    simp [show (5308416 * k + 3668530) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1834265) = 7962624 * k + 5502796 := by
    unfold C
    simp [show (2654208 * k + 1834265) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5502796) = 3981312 * k + 2751398 := by
    unfold C
    simp [show (7962624 * k + 5502796) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2751398) = 1990656 * k + 1375699 := by
    unfold C
    simp [show (3981312 * k + 2751398) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1375699) = 5971968 * k + 4127098 := by
    unfold C
    simp [show (1990656 * k + 1375699) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4127098) = 2985984 * k + 2063549 := by
    unfold C
    simp [show (5971968 * k + 4127098) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2063549) = 8957952 * k + 6190648 := by
    unfold C
    simp [show (2985984 * k + 2063549) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6190648) = 4478976 * k + 3095324 := by
    unfold C
    simp [show (8957952 * k + 6190648) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3095324) = 2239488 * k + 1547662 := by
    unfold C
    simp [show (4478976 * k + 3095324) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1547662) = 1119744 * k + 773831 := by
    unfold C
    simp [show (2239488 * k + 1547662) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 773831) = 3359232 * k + 2321494 := by
    unfold C
    simp [show (1119744 * k + 773831) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2321494) = 1679616 * k + 1160747 := by
    unfold C
    simp [show (3359232 * k + 2321494) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1160747) = 5038848 * k + 3482242 := by
    unfold C
    simp [show (1679616 * k + 1160747) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3482242) = 2519424 * k + 1741121 := by
    unfold C
    simp [show (5038848 * k + 3482242) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1741121) = 7558272 * k + 5223364 := by
    unfold C
    simp [show (2519424 * k + 1741121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5223364) = 3779136 * k + 2611682 := by
    unfold C
    simp [show (7558272 * k + 5223364) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2611682) = 1889568 * k + 1305841 := by
    unfold C
    simp [show (3779136 * k + 2611682) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1305841) = 5668704 * k + 3917524 := by
    unfold C
    simp [show (1889568 * k + 1305841) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3917524) = 2834352 * k + 1958762 := by
    unfold C
    simp [show (5668704 * k + 3917524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1958762) = 1417176 * k + 979381 := by
    unfold C
    simp [show (2834352 * k + 1958762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 979381) = 4251528 * k + 2938144 := by
    unfold C
    simp [show (1417176 * k + 979381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2938144) = 2125764 * k + 1469072 := by
    unfold C
    simp [show (4251528 * k + 2938144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1469072) = 1062882 * k + 734536 := by
    unfold C
    simp [show (2125764 * k + 1469072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 734536) = 531441 * k + 367268 := by
    unfold C
    simp [show (1062882 * k + 734536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 724647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 724647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_724719 : ∀ k : Nat,
    iterate (1048576 * k + 724719) 32 = 531441 * k + 367304 ∧
      531441 * k + 367304 < 1048576 * k + 724719 := by
  intro k
  have h1 : C (1048576 * k + 724719) = 3145728 * k + 2174158 := by
    unfold C
    simp [show (1048576 * k + 724719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2174158) = 1572864 * k + 1087079 := by
    unfold C
    simp [show (3145728 * k + 2174158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1087079) = 4718592 * k + 3261238 := by
    unfold C
    simp [show (1572864 * k + 1087079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3261238) = 2359296 * k + 1630619 := by
    unfold C
    simp [show (4718592 * k + 3261238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1630619) = 7077888 * k + 4891858 := by
    unfold C
    simp [show (2359296 * k + 1630619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4891858) = 3538944 * k + 2445929 := by
    unfold C
    simp [show (7077888 * k + 4891858) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2445929) = 10616832 * k + 7337788 := by
    unfold C
    simp [show (3538944 * k + 2445929) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7337788) = 5308416 * k + 3668894 := by
    unfold C
    simp [show (10616832 * k + 7337788) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3668894) = 2654208 * k + 1834447 := by
    unfold C
    simp [show (5308416 * k + 3668894) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1834447) = 7962624 * k + 5503342 := by
    unfold C
    simp [show (2654208 * k + 1834447) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5503342) = 3981312 * k + 2751671 := by
    unfold C
    simp [show (7962624 * k + 5503342) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2751671) = 11943936 * k + 8255014 := by
    unfold C
    simp [show (3981312 * k + 2751671) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8255014) = 5971968 * k + 4127507 := by
    unfold C
    simp [show (11943936 * k + 8255014) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4127507) = 17915904 * k + 12382522 := by
    unfold C
    simp [show (5971968 * k + 4127507) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12382522) = 8957952 * k + 6191261 := by
    unfold C
    simp [show (17915904 * k + 12382522) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6191261) = 26873856 * k + 18573784 := by
    unfold C
    simp [show (8957952 * k + 6191261) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18573784) = 13436928 * k + 9286892 := by
    unfold C
    simp [show (26873856 * k + 18573784) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9286892) = 6718464 * k + 4643446 := by
    unfold C
    simp [show (13436928 * k + 9286892) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4643446) = 3359232 * k + 2321723 := by
    unfold C
    simp [show (6718464 * k + 4643446) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2321723) = 10077696 * k + 6965170 := by
    unfold C
    simp [show (3359232 * k + 2321723) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6965170) = 5038848 * k + 3482585 := by
    unfold C
    simp [show (10077696 * k + 6965170) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3482585) = 15116544 * k + 10447756 := by
    unfold C
    simp [show (5038848 * k + 3482585) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10447756) = 7558272 * k + 5223878 := by
    unfold C
    simp [show (15116544 * k + 10447756) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5223878) = 3779136 * k + 2611939 := by
    unfold C
    simp [show (7558272 * k + 5223878) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2611939) = 11337408 * k + 7835818 := by
    unfold C
    simp [show (3779136 * k + 2611939) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7835818) = 5668704 * k + 3917909 := by
    unfold C
    simp [show (11337408 * k + 7835818) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3917909) = 17006112 * k + 11753728 := by
    unfold C
    simp [show (5668704 * k + 3917909) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11753728) = 8503056 * k + 5876864 := by
    unfold C
    simp [show (17006112 * k + 11753728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5876864) = 4251528 * k + 2938432 := by
    unfold C
    simp [show (8503056 * k + 5876864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2938432) = 2125764 * k + 1469216 := by
    unfold C
    simp [show (4251528 * k + 2938432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1469216) = 1062882 * k + 734608 := by
    unfold C
    simp [show (2125764 * k + 1469216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 734608) = 531441 * k + 367304 := by
    unfold C
    simp [show (1062882 * k + 734608) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 724719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 724719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_725439 : ∀ k : Nat,
    iterate (1048576 * k + 725439) 32 = 531441 * k + 367669 ∧
      531441 * k + 367669 < 1048576 * k + 725439 := by
  intro k
  have h1 : C (1048576 * k + 725439) = 3145728 * k + 2176318 := by
    unfold C
    simp [show (1048576 * k + 725439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2176318) = 1572864 * k + 1088159 := by
    unfold C
    simp [show (3145728 * k + 2176318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1088159) = 4718592 * k + 3264478 := by
    unfold C
    simp [show (1572864 * k + 1088159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3264478) = 2359296 * k + 1632239 := by
    unfold C
    simp [show (4718592 * k + 3264478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1632239) = 7077888 * k + 4896718 := by
    unfold C
    simp [show (2359296 * k + 1632239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4896718) = 3538944 * k + 2448359 := by
    unfold C
    simp [show (7077888 * k + 4896718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2448359) = 10616832 * k + 7345078 := by
    unfold C
    simp [show (3538944 * k + 2448359) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7345078) = 5308416 * k + 3672539 := by
    unfold C
    simp [show (10616832 * k + 7345078) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3672539) = 15925248 * k + 11017618 := by
    unfold C
    simp [show (5308416 * k + 3672539) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11017618) = 7962624 * k + 5508809 := by
    unfold C
    simp [show (15925248 * k + 11017618) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5508809) = 23887872 * k + 16526428 := by
    unfold C
    simp [show (7962624 * k + 5508809) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16526428) = 11943936 * k + 8263214 := by
    unfold C
    simp [show (23887872 * k + 16526428) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8263214) = 5971968 * k + 4131607 := by
    unfold C
    simp [show (11943936 * k + 8263214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4131607) = 17915904 * k + 12394822 := by
    unfold C
    simp [show (5971968 * k + 4131607) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12394822) = 8957952 * k + 6197411 := by
    unfold C
    simp [show (17915904 * k + 12394822) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6197411) = 26873856 * k + 18592234 := by
    unfold C
    simp [show (8957952 * k + 6197411) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18592234) = 13436928 * k + 9296117 := by
    unfold C
    simp [show (26873856 * k + 18592234) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9296117) = 40310784 * k + 27888352 := by
    unfold C
    simp [show (13436928 * k + 9296117) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27888352) = 20155392 * k + 13944176 := by
    unfold C
    simp [show (40310784 * k + 27888352) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13944176) = 10077696 * k + 6972088 := by
    unfold C
    simp [show (20155392 * k + 13944176) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6972088) = 5038848 * k + 3486044 := by
    unfold C
    simp [show (10077696 * k + 6972088) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3486044) = 2519424 * k + 1743022 := by
    unfold C
    simp [show (5038848 * k + 3486044) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1743022) = 1259712 * k + 871511 := by
    unfold C
    simp [show (2519424 * k + 1743022) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 871511) = 3779136 * k + 2614534 := by
    unfold C
    simp [show (1259712 * k + 871511) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2614534) = 1889568 * k + 1307267 := by
    unfold C
    simp [show (3779136 * k + 2614534) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1307267) = 5668704 * k + 3921802 := by
    unfold C
    simp [show (1889568 * k + 1307267) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3921802) = 2834352 * k + 1960901 := by
    unfold C
    simp [show (5668704 * k + 3921802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1960901) = 8503056 * k + 5882704 := by
    unfold C
    simp [show (2834352 * k + 1960901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5882704) = 4251528 * k + 2941352 := by
    unfold C
    simp [show (8503056 * k + 5882704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2941352) = 2125764 * k + 1470676 := by
    unfold C
    simp [show (4251528 * k + 2941352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1470676) = 1062882 * k + 735338 := by
    unfold C
    simp [show (2125764 * k + 1470676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 735338) = 531441 * k + 367669 := by
    unfold C
    simp [show (1062882 * k + 735338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 725439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 725439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_725535 : ∀ k : Nat,
    iterate (1048576 * k + 725535) 32 = 531441 * k + 367718 ∧
      531441 * k + 367718 < 1048576 * k + 725535 := by
  intro k
  have h1 : C (1048576 * k + 725535) = 3145728 * k + 2176606 := by
    unfold C
    simp [show (1048576 * k + 725535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2176606) = 1572864 * k + 1088303 := by
    unfold C
    simp [show (3145728 * k + 2176606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1088303) = 4718592 * k + 3264910 := by
    unfold C
    simp [show (1572864 * k + 1088303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3264910) = 2359296 * k + 1632455 := by
    unfold C
    simp [show (4718592 * k + 3264910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1632455) = 7077888 * k + 4897366 := by
    unfold C
    simp [show (2359296 * k + 1632455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4897366) = 3538944 * k + 2448683 := by
    unfold C
    simp [show (7077888 * k + 4897366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2448683) = 10616832 * k + 7346050 := by
    unfold C
    simp [show (3538944 * k + 2448683) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7346050) = 5308416 * k + 3673025 := by
    unfold C
    simp [show (10616832 * k + 7346050) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3673025) = 15925248 * k + 11019076 := by
    unfold C
    simp [show (5308416 * k + 3673025) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11019076) = 7962624 * k + 5509538 := by
    unfold C
    simp [show (15925248 * k + 11019076) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5509538) = 3981312 * k + 2754769 := by
    unfold C
    simp [show (7962624 * k + 5509538) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2754769) = 11943936 * k + 8264308 := by
    unfold C
    simp [show (3981312 * k + 2754769) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8264308) = 5971968 * k + 4132154 := by
    unfold C
    simp [show (11943936 * k + 8264308) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4132154) = 2985984 * k + 2066077 := by
    unfold C
    simp [show (5971968 * k + 4132154) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2066077) = 8957952 * k + 6198232 := by
    unfold C
    simp [show (2985984 * k + 2066077) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6198232) = 4478976 * k + 3099116 := by
    unfold C
    simp [show (8957952 * k + 6198232) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3099116) = 2239488 * k + 1549558 := by
    unfold C
    simp [show (4478976 * k + 3099116) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1549558) = 1119744 * k + 774779 := by
    unfold C
    simp [show (2239488 * k + 1549558) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 774779) = 3359232 * k + 2324338 := by
    unfold C
    simp [show (1119744 * k + 774779) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2324338) = 1679616 * k + 1162169 := by
    unfold C
    simp [show (3359232 * k + 2324338) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1162169) = 5038848 * k + 3486508 := by
    unfold C
    simp [show (1679616 * k + 1162169) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3486508) = 2519424 * k + 1743254 := by
    unfold C
    simp [show (5038848 * k + 3486508) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1743254) = 1259712 * k + 871627 := by
    unfold C
    simp [show (2519424 * k + 1743254) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 871627) = 3779136 * k + 2614882 := by
    unfold C
    simp [show (1259712 * k + 871627) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2614882) = 1889568 * k + 1307441 := by
    unfold C
    simp [show (3779136 * k + 2614882) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1307441) = 5668704 * k + 3922324 := by
    unfold C
    simp [show (1889568 * k + 1307441) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3922324) = 2834352 * k + 1961162 := by
    unfold C
    simp [show (5668704 * k + 3922324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1961162) = 1417176 * k + 980581 := by
    unfold C
    simp [show (2834352 * k + 1961162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 980581) = 4251528 * k + 2941744 := by
    unfold C
    simp [show (1417176 * k + 980581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2941744) = 2125764 * k + 1470872 := by
    unfold C
    simp [show (4251528 * k + 2941744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1470872) = 1062882 * k + 735436 := by
    unfold C
    simp [show (2125764 * k + 1470872) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 735436) = 531441 * k + 367718 := by
    unfold C
    simp [show (1062882 * k + 735436) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 725535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 725535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard093
