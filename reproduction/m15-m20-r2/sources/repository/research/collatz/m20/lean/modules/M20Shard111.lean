import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard111

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_867579 : ∀ k : Nat,
    iterate (1048576 * k + 867579) 32 = 531441 * k + 439709 ∧
      531441 * k + 439709 < 1048576 * k + 867579 := by
  intro k
  have h1 : C (1048576 * k + 867579) = 3145728 * k + 2602738 := by
    unfold C
    simp [show (1048576 * k + 867579) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2602738) = 1572864 * k + 1301369 := by
    unfold C
    simp [show (3145728 * k + 2602738) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1301369) = 4718592 * k + 3904108 := by
    unfold C
    simp [show (1572864 * k + 1301369) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3904108) = 2359296 * k + 1952054 := by
    unfold C
    simp [show (4718592 * k + 3904108) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1952054) = 1179648 * k + 976027 := by
    unfold C
    simp [show (2359296 * k + 1952054) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 976027) = 3538944 * k + 2928082 := by
    unfold C
    simp [show (1179648 * k + 976027) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2928082) = 1769472 * k + 1464041 := by
    unfold C
    simp [show (3538944 * k + 2928082) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1464041) = 5308416 * k + 4392124 := by
    unfold C
    simp [show (1769472 * k + 1464041) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4392124) = 2654208 * k + 2196062 := by
    unfold C
    simp [show (5308416 * k + 4392124) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2196062) = 1327104 * k + 1098031 := by
    unfold C
    simp [show (2654208 * k + 2196062) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1098031) = 3981312 * k + 3294094 := by
    unfold C
    simp [show (1327104 * k + 1098031) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3294094) = 1990656 * k + 1647047 := by
    unfold C
    simp [show (3981312 * k + 3294094) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1647047) = 5971968 * k + 4941142 := by
    unfold C
    simp [show (1990656 * k + 1647047) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4941142) = 2985984 * k + 2470571 := by
    unfold C
    simp [show (5971968 * k + 4941142) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2470571) = 8957952 * k + 7411714 := by
    unfold C
    simp [show (2985984 * k + 2470571) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7411714) = 4478976 * k + 3705857 := by
    unfold C
    simp [show (8957952 * k + 7411714) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3705857) = 13436928 * k + 11117572 := by
    unfold C
    simp [show (4478976 * k + 3705857) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11117572) = 6718464 * k + 5558786 := by
    unfold C
    simp [show (13436928 * k + 11117572) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5558786) = 3359232 * k + 2779393 := by
    unfold C
    simp [show (6718464 * k + 5558786) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2779393) = 10077696 * k + 8338180 := by
    unfold C
    simp [show (3359232 * k + 2779393) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8338180) = 5038848 * k + 4169090 := by
    unfold C
    simp [show (10077696 * k + 8338180) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4169090) = 2519424 * k + 2084545 := by
    unfold C
    simp [show (5038848 * k + 4169090) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2084545) = 7558272 * k + 6253636 := by
    unfold C
    simp [show (2519424 * k + 2084545) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6253636) = 3779136 * k + 3126818 := by
    unfold C
    simp [show (7558272 * k + 6253636) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3126818) = 1889568 * k + 1563409 := by
    unfold C
    simp [show (3779136 * k + 3126818) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1563409) = 5668704 * k + 4690228 := by
    unfold C
    simp [show (1889568 * k + 1563409) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4690228) = 2834352 * k + 2345114 := by
    unfold C
    simp [show (5668704 * k + 4690228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2345114) = 1417176 * k + 1172557 := by
    unfold C
    simp [show (2834352 * k + 2345114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1172557) = 4251528 * k + 3517672 := by
    unfold C
    simp [show (1417176 * k + 1172557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3517672) = 2125764 * k + 1758836 := by
    unfold C
    simp [show (4251528 * k + 3517672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1758836) = 1062882 * k + 879418 := by
    unfold C
    simp [show (2125764 * k + 1758836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 879418) = 531441 * k + 439709 := by
    unfold C
    simp [show (1062882 * k + 879418) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 867579) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 867579)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_868223 : ∀ k : Nat,
    iterate (1048576 * k + 868223) 32 = 531441 * k + 440035 ∧
      531441 * k + 440035 < 1048576 * k + 868223 := by
  intro k
  have h1 : C (1048576 * k + 868223) = 3145728 * k + 2604670 := by
    unfold C
    simp [show (1048576 * k + 868223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2604670) = 1572864 * k + 1302335 := by
    unfold C
    simp [show (3145728 * k + 2604670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1302335) = 4718592 * k + 3907006 := by
    unfold C
    simp [show (1572864 * k + 1302335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3907006) = 2359296 * k + 1953503 := by
    unfold C
    simp [show (4718592 * k + 3907006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1953503) = 7077888 * k + 5860510 := by
    unfold C
    simp [show (2359296 * k + 1953503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5860510) = 3538944 * k + 2930255 := by
    unfold C
    simp [show (7077888 * k + 5860510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2930255) = 10616832 * k + 8790766 := by
    unfold C
    simp [show (3538944 * k + 2930255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8790766) = 5308416 * k + 4395383 := by
    unfold C
    simp [show (10616832 * k + 8790766) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4395383) = 15925248 * k + 13186150 := by
    unfold C
    simp [show (5308416 * k + 4395383) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13186150) = 7962624 * k + 6593075 := by
    unfold C
    simp [show (15925248 * k + 13186150) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6593075) = 23887872 * k + 19779226 := by
    unfold C
    simp [show (7962624 * k + 6593075) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19779226) = 11943936 * k + 9889613 := by
    unfold C
    simp [show (23887872 * k + 19779226) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9889613) = 35831808 * k + 29668840 := by
    unfold C
    simp [show (11943936 * k + 9889613) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29668840) = 17915904 * k + 14834420 := by
    unfold C
    simp [show (35831808 * k + 29668840) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14834420) = 8957952 * k + 7417210 := by
    unfold C
    simp [show (17915904 * k + 14834420) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7417210) = 4478976 * k + 3708605 := by
    unfold C
    simp [show (8957952 * k + 7417210) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3708605) = 13436928 * k + 11125816 := by
    unfold C
    simp [show (4478976 * k + 3708605) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11125816) = 6718464 * k + 5562908 := by
    unfold C
    simp [show (13436928 * k + 11125816) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5562908) = 3359232 * k + 2781454 := by
    unfold C
    simp [show (6718464 * k + 5562908) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2781454) = 1679616 * k + 1390727 := by
    unfold C
    simp [show (3359232 * k + 2781454) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1390727) = 5038848 * k + 4172182 := by
    unfold C
    simp [show (1679616 * k + 1390727) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4172182) = 2519424 * k + 2086091 := by
    unfold C
    simp [show (5038848 * k + 4172182) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2086091) = 7558272 * k + 6258274 := by
    unfold C
    simp [show (2519424 * k + 2086091) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6258274) = 3779136 * k + 3129137 := by
    unfold C
    simp [show (7558272 * k + 6258274) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3129137) = 11337408 * k + 9387412 := by
    unfold C
    simp [show (3779136 * k + 3129137) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9387412) = 5668704 * k + 4693706 := by
    unfold C
    simp [show (11337408 * k + 9387412) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4693706) = 2834352 * k + 2346853 := by
    unfold C
    simp [show (5668704 * k + 4693706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2346853) = 8503056 * k + 7040560 := by
    unfold C
    simp [show (2834352 * k + 2346853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7040560) = 4251528 * k + 3520280 := by
    unfold C
    simp [show (8503056 * k + 7040560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3520280) = 2125764 * k + 1760140 := by
    unfold C
    simp [show (4251528 * k + 3520280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1760140) = 1062882 * k + 880070 := by
    unfold C
    simp [show (2125764 * k + 1760140) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 880070) = 531441 * k + 440035 := by
    unfold C
    simp [show (1062882 * k + 880070) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 868223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 868223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_868335 : ∀ k : Nat,
    iterate (1048576 * k + 868335) 32 = 531441 * k + 440092 ∧
      531441 * k + 440092 < 1048576 * k + 868335 := by
  intro k
  have h1 : C (1048576 * k + 868335) = 3145728 * k + 2605006 := by
    unfold C
    simp [show (1048576 * k + 868335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2605006) = 1572864 * k + 1302503 := by
    unfold C
    simp [show (3145728 * k + 2605006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1302503) = 4718592 * k + 3907510 := by
    unfold C
    simp [show (1572864 * k + 1302503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3907510) = 2359296 * k + 1953755 := by
    unfold C
    simp [show (4718592 * k + 3907510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1953755) = 7077888 * k + 5861266 := by
    unfold C
    simp [show (2359296 * k + 1953755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5861266) = 3538944 * k + 2930633 := by
    unfold C
    simp [show (7077888 * k + 5861266) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2930633) = 10616832 * k + 8791900 := by
    unfold C
    simp [show (3538944 * k + 2930633) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8791900) = 5308416 * k + 4395950 := by
    unfold C
    simp [show (10616832 * k + 8791900) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4395950) = 2654208 * k + 2197975 := by
    unfold C
    simp [show (5308416 * k + 4395950) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2197975) = 7962624 * k + 6593926 := by
    unfold C
    simp [show (2654208 * k + 2197975) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6593926) = 3981312 * k + 3296963 := by
    unfold C
    simp [show (7962624 * k + 6593926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3296963) = 11943936 * k + 9890890 := by
    unfold C
    simp [show (3981312 * k + 3296963) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9890890) = 5971968 * k + 4945445 := by
    unfold C
    simp [show (11943936 * k + 9890890) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4945445) = 17915904 * k + 14836336 := by
    unfold C
    simp [show (5971968 * k + 4945445) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14836336) = 8957952 * k + 7418168 := by
    unfold C
    simp [show (17915904 * k + 14836336) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7418168) = 4478976 * k + 3709084 := by
    unfold C
    simp [show (8957952 * k + 7418168) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3709084) = 2239488 * k + 1854542 := by
    unfold C
    simp [show (4478976 * k + 3709084) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1854542) = 1119744 * k + 927271 := by
    unfold C
    simp [show (2239488 * k + 1854542) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 927271) = 3359232 * k + 2781814 := by
    unfold C
    simp [show (1119744 * k + 927271) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2781814) = 1679616 * k + 1390907 := by
    unfold C
    simp [show (3359232 * k + 2781814) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1390907) = 5038848 * k + 4172722 := by
    unfold C
    simp [show (1679616 * k + 1390907) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4172722) = 2519424 * k + 2086361 := by
    unfold C
    simp [show (5038848 * k + 4172722) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2086361) = 7558272 * k + 6259084 := by
    unfold C
    simp [show (2519424 * k + 2086361) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6259084) = 3779136 * k + 3129542 := by
    unfold C
    simp [show (7558272 * k + 6259084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3129542) = 1889568 * k + 1564771 := by
    unfold C
    simp [show (3779136 * k + 3129542) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1564771) = 5668704 * k + 4694314 := by
    unfold C
    simp [show (1889568 * k + 1564771) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4694314) = 2834352 * k + 2347157 := by
    unfold C
    simp [show (5668704 * k + 4694314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2347157) = 8503056 * k + 7041472 := by
    unfold C
    simp [show (2834352 * k + 2347157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7041472) = 4251528 * k + 3520736 := by
    unfold C
    simp [show (8503056 * k + 7041472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3520736) = 2125764 * k + 1760368 := by
    unfold C
    simp [show (4251528 * k + 3520736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1760368) = 1062882 * k + 880184 := by
    unfold C
    simp [show (2125764 * k + 1760368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 880184) = 531441 * k + 440092 := by
    unfold C
    simp [show (1062882 * k + 880184) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 868335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 868335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_868383 : ∀ k : Nat,
    iterate (1048576 * k + 868383) 32 = 531441 * k + 440116 ∧
      531441 * k + 440116 < 1048576 * k + 868383 := by
  intro k
  have h1 : C (1048576 * k + 868383) = 3145728 * k + 2605150 := by
    unfold C
    simp [show (1048576 * k + 868383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2605150) = 1572864 * k + 1302575 := by
    unfold C
    simp [show (3145728 * k + 2605150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1302575) = 4718592 * k + 3907726 := by
    unfold C
    simp [show (1572864 * k + 1302575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3907726) = 2359296 * k + 1953863 := by
    unfold C
    simp [show (4718592 * k + 3907726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1953863) = 7077888 * k + 5861590 := by
    unfold C
    simp [show (2359296 * k + 1953863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5861590) = 3538944 * k + 2930795 := by
    unfold C
    simp [show (7077888 * k + 5861590) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2930795) = 10616832 * k + 8792386 := by
    unfold C
    simp [show (3538944 * k + 2930795) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8792386) = 5308416 * k + 4396193 := by
    unfold C
    simp [show (10616832 * k + 8792386) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4396193) = 15925248 * k + 13188580 := by
    unfold C
    simp [show (5308416 * k + 4396193) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13188580) = 7962624 * k + 6594290 := by
    unfold C
    simp [show (15925248 * k + 13188580) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6594290) = 3981312 * k + 3297145 := by
    unfold C
    simp [show (7962624 * k + 6594290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3297145) = 11943936 * k + 9891436 := by
    unfold C
    simp [show (3981312 * k + 3297145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9891436) = 5971968 * k + 4945718 := by
    unfold C
    simp [show (11943936 * k + 9891436) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4945718) = 2985984 * k + 2472859 := by
    unfold C
    simp [show (5971968 * k + 4945718) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2472859) = 8957952 * k + 7418578 := by
    unfold C
    simp [show (2985984 * k + 2472859) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7418578) = 4478976 * k + 3709289 := by
    unfold C
    simp [show (8957952 * k + 7418578) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3709289) = 13436928 * k + 11127868 := by
    unfold C
    simp [show (4478976 * k + 3709289) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11127868) = 6718464 * k + 5563934 := by
    unfold C
    simp [show (13436928 * k + 11127868) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5563934) = 3359232 * k + 2781967 := by
    unfold C
    simp [show (6718464 * k + 5563934) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2781967) = 10077696 * k + 8345902 := by
    unfold C
    simp [show (3359232 * k + 2781967) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8345902) = 5038848 * k + 4172951 := by
    unfold C
    simp [show (10077696 * k + 8345902) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4172951) = 15116544 * k + 12518854 := by
    unfold C
    simp [show (5038848 * k + 4172951) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12518854) = 7558272 * k + 6259427 := by
    unfold C
    simp [show (15116544 * k + 12518854) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6259427) = 22674816 * k + 18778282 := by
    unfold C
    simp [show (7558272 * k + 6259427) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18778282) = 11337408 * k + 9389141 := by
    unfold C
    simp [show (22674816 * k + 18778282) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9389141) = 34012224 * k + 28167424 := by
    unfold C
    simp [show (11337408 * k + 9389141) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28167424) = 17006112 * k + 14083712 := by
    unfold C
    simp [show (34012224 * k + 28167424) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14083712) = 8503056 * k + 7041856 := by
    unfold C
    simp [show (17006112 * k + 14083712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7041856) = 4251528 * k + 3520928 := by
    unfold C
    simp [show (8503056 * k + 7041856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3520928) = 2125764 * k + 1760464 := by
    unfold C
    simp [show (4251528 * k + 3520928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1760464) = 1062882 * k + 880232 := by
    unfold C
    simp [show (2125764 * k + 1760464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 880232) = 531441 * k + 440116 := by
    unfold C
    simp [show (1062882 * k + 880232) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 868383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 868383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_868519 : ∀ k : Nat,
    iterate (1048576 * k + 868519) 32 = 531441 * k + 440185 ∧
      531441 * k + 440185 < 1048576 * k + 868519 := by
  intro k
  have h1 : C (1048576 * k + 868519) = 3145728 * k + 2605558 := by
    unfold C
    simp [show (1048576 * k + 868519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2605558) = 1572864 * k + 1302779 := by
    unfold C
    simp [show (3145728 * k + 2605558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1302779) = 4718592 * k + 3908338 := by
    unfold C
    simp [show (1572864 * k + 1302779) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3908338) = 2359296 * k + 1954169 := by
    unfold C
    simp [show (4718592 * k + 3908338) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1954169) = 7077888 * k + 5862508 := by
    unfold C
    simp [show (2359296 * k + 1954169) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5862508) = 3538944 * k + 2931254 := by
    unfold C
    simp [show (7077888 * k + 5862508) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2931254) = 1769472 * k + 1465627 := by
    unfold C
    simp [show (3538944 * k + 2931254) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1465627) = 5308416 * k + 4396882 := by
    unfold C
    simp [show (1769472 * k + 1465627) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4396882) = 2654208 * k + 2198441 := by
    unfold C
    simp [show (5308416 * k + 4396882) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2198441) = 7962624 * k + 6595324 := by
    unfold C
    simp [show (2654208 * k + 2198441) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6595324) = 3981312 * k + 3297662 := by
    unfold C
    simp [show (7962624 * k + 6595324) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3297662) = 1990656 * k + 1648831 := by
    unfold C
    simp [show (3981312 * k + 3297662) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1648831) = 5971968 * k + 4946494 := by
    unfold C
    simp [show (1990656 * k + 1648831) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4946494) = 2985984 * k + 2473247 := by
    unfold C
    simp [show (5971968 * k + 4946494) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2473247) = 8957952 * k + 7419742 := by
    unfold C
    simp [show (2985984 * k + 2473247) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7419742) = 4478976 * k + 3709871 := by
    unfold C
    simp [show (8957952 * k + 7419742) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3709871) = 13436928 * k + 11129614 := by
    unfold C
    simp [show (4478976 * k + 3709871) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11129614) = 6718464 * k + 5564807 := by
    unfold C
    simp [show (13436928 * k + 11129614) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5564807) = 20155392 * k + 16694422 := by
    unfold C
    simp [show (6718464 * k + 5564807) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16694422) = 10077696 * k + 8347211 := by
    unfold C
    simp [show (20155392 * k + 16694422) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8347211) = 30233088 * k + 25041634 := by
    unfold C
    simp [show (10077696 * k + 8347211) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25041634) = 15116544 * k + 12520817 := by
    unfold C
    simp [show (30233088 * k + 25041634) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12520817) = 45349632 * k + 37562452 := by
    unfold C
    simp [show (15116544 * k + 12520817) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 37562452) = 22674816 * k + 18781226 := by
    unfold C
    simp [show (45349632 * k + 37562452) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 18781226) = 11337408 * k + 9390613 := by
    unfold C
    simp [show (22674816 * k + 18781226) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9390613) = 34012224 * k + 28171840 := by
    unfold C
    simp [show (11337408 * k + 9390613) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28171840) = 17006112 * k + 14085920 := by
    unfold C
    simp [show (34012224 * k + 28171840) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14085920) = 8503056 * k + 7042960 := by
    unfold C
    simp [show (17006112 * k + 14085920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7042960) = 4251528 * k + 3521480 := by
    unfold C
    simp [show (8503056 * k + 7042960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3521480) = 2125764 * k + 1760740 := by
    unfold C
    simp [show (4251528 * k + 3521480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1760740) = 1062882 * k + 880370 := by
    unfold C
    simp [show (2125764 * k + 1760740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 880370) = 531441 * k + 440185 := by
    unfold C
    simp [show (1062882 * k + 880370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 868519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 868519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_869119 : ∀ k : Nat,
    iterate (1048576 * k + 869119) 32 = 531441 * k + 440489 ∧
      531441 * k + 440489 < 1048576 * k + 869119 := by
  intro k
  have h1 : C (1048576 * k + 869119) = 3145728 * k + 2607358 := by
    unfold C
    simp [show (1048576 * k + 869119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2607358) = 1572864 * k + 1303679 := by
    unfold C
    simp [show (3145728 * k + 2607358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1303679) = 4718592 * k + 3911038 := by
    unfold C
    simp [show (1572864 * k + 1303679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3911038) = 2359296 * k + 1955519 := by
    unfold C
    simp [show (4718592 * k + 3911038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1955519) = 7077888 * k + 5866558 := by
    unfold C
    simp [show (2359296 * k + 1955519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5866558) = 3538944 * k + 2933279 := by
    unfold C
    simp [show (7077888 * k + 5866558) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2933279) = 10616832 * k + 8799838 := by
    unfold C
    simp [show (3538944 * k + 2933279) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8799838) = 5308416 * k + 4399919 := by
    unfold C
    simp [show (10616832 * k + 8799838) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4399919) = 15925248 * k + 13199758 := by
    unfold C
    simp [show (5308416 * k + 4399919) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13199758) = 7962624 * k + 6599879 := by
    unfold C
    simp [show (15925248 * k + 13199758) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6599879) = 23887872 * k + 19799638 := by
    unfold C
    simp [show (7962624 * k + 6599879) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19799638) = 11943936 * k + 9899819 := by
    unfold C
    simp [show (23887872 * k + 19799638) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9899819) = 35831808 * k + 29699458 := by
    unfold C
    simp [show (11943936 * k + 9899819) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29699458) = 17915904 * k + 14849729 := by
    unfold C
    simp [show (35831808 * k + 29699458) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14849729) = 53747712 * k + 44549188 := by
    unfold C
    simp [show (17915904 * k + 14849729) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 44549188) = 26873856 * k + 22274594 := by
    unfold C
    simp [show (53747712 * k + 44549188) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22274594) = 13436928 * k + 11137297 := by
    unfold C
    simp [show (26873856 * k + 22274594) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11137297) = 40310784 * k + 33411892 := by
    unfold C
    simp [show (13436928 * k + 11137297) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 33411892) = 20155392 * k + 16705946 := by
    unfold C
    simp [show (40310784 * k + 33411892) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16705946) = 10077696 * k + 8352973 := by
    unfold C
    simp [show (20155392 * k + 16705946) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8352973) = 30233088 * k + 25058920 := by
    unfold C
    simp [show (10077696 * k + 8352973) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25058920) = 15116544 * k + 12529460 := by
    unfold C
    simp [show (30233088 * k + 25058920) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12529460) = 7558272 * k + 6264730 := by
    unfold C
    simp [show (15116544 * k + 12529460) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6264730) = 3779136 * k + 3132365 := by
    unfold C
    simp [show (7558272 * k + 6264730) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3132365) = 11337408 * k + 9397096 := by
    unfold C
    simp [show (3779136 * k + 3132365) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9397096) = 5668704 * k + 4698548 := by
    unfold C
    simp [show (11337408 * k + 9397096) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4698548) = 2834352 * k + 2349274 := by
    unfold C
    simp [show (5668704 * k + 4698548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2349274) = 1417176 * k + 1174637 := by
    unfold C
    simp [show (2834352 * k + 2349274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1174637) = 4251528 * k + 3523912 := by
    unfold C
    simp [show (1417176 * k + 1174637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3523912) = 2125764 * k + 1761956 := by
    unfold C
    simp [show (4251528 * k + 3523912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1761956) = 1062882 * k + 880978 := by
    unfold C
    simp [show (2125764 * k + 1761956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 880978) = 531441 * k + 440489 := by
    unfold C
    simp [show (1062882 * k + 880978) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 869119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 869119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_870119 : ∀ k : Nat,
    iterate (1048576 * k + 870119) 32 = 531441 * k + 440996 ∧
      531441 * k + 440996 < 1048576 * k + 870119 := by
  intro k
  have h1 : C (1048576 * k + 870119) = 3145728 * k + 2610358 := by
    unfold C
    simp [show (1048576 * k + 870119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2610358) = 1572864 * k + 1305179 := by
    unfold C
    simp [show (3145728 * k + 2610358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1305179) = 4718592 * k + 3915538 := by
    unfold C
    simp [show (1572864 * k + 1305179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3915538) = 2359296 * k + 1957769 := by
    unfold C
    simp [show (4718592 * k + 3915538) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1957769) = 7077888 * k + 5873308 := by
    unfold C
    simp [show (2359296 * k + 1957769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5873308) = 3538944 * k + 2936654 := by
    unfold C
    simp [show (7077888 * k + 5873308) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2936654) = 1769472 * k + 1468327 := by
    unfold C
    simp [show (3538944 * k + 2936654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1468327) = 5308416 * k + 4404982 := by
    unfold C
    simp [show (1769472 * k + 1468327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4404982) = 2654208 * k + 2202491 := by
    unfold C
    simp [show (5308416 * k + 4404982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2202491) = 7962624 * k + 6607474 := by
    unfold C
    simp [show (2654208 * k + 2202491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6607474) = 3981312 * k + 3303737 := by
    unfold C
    simp [show (7962624 * k + 6607474) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3303737) = 11943936 * k + 9911212 := by
    unfold C
    simp [show (3981312 * k + 3303737) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9911212) = 5971968 * k + 4955606 := by
    unfold C
    simp [show (11943936 * k + 9911212) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4955606) = 2985984 * k + 2477803 := by
    unfold C
    simp [show (5971968 * k + 4955606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2477803) = 8957952 * k + 7433410 := by
    unfold C
    simp [show (2985984 * k + 2477803) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7433410) = 4478976 * k + 3716705 := by
    unfold C
    simp [show (8957952 * k + 7433410) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3716705) = 13436928 * k + 11150116 := by
    unfold C
    simp [show (4478976 * k + 3716705) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11150116) = 6718464 * k + 5575058 := by
    unfold C
    simp [show (13436928 * k + 11150116) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5575058) = 3359232 * k + 2787529 := by
    unfold C
    simp [show (6718464 * k + 5575058) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2787529) = 10077696 * k + 8362588 := by
    unfold C
    simp [show (3359232 * k + 2787529) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8362588) = 5038848 * k + 4181294 := by
    unfold C
    simp [show (10077696 * k + 8362588) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4181294) = 2519424 * k + 2090647 := by
    unfold C
    simp [show (5038848 * k + 4181294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2090647) = 7558272 * k + 6271942 := by
    unfold C
    simp [show (2519424 * k + 2090647) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6271942) = 3779136 * k + 3135971 := by
    unfold C
    simp [show (7558272 * k + 6271942) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3135971) = 11337408 * k + 9407914 := by
    unfold C
    simp [show (3779136 * k + 3135971) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9407914) = 5668704 * k + 4703957 := by
    unfold C
    simp [show (11337408 * k + 9407914) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4703957) = 17006112 * k + 14111872 := by
    unfold C
    simp [show (5668704 * k + 4703957) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14111872) = 8503056 * k + 7055936 := by
    unfold C
    simp [show (17006112 * k + 14111872) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7055936) = 4251528 * k + 3527968 := by
    unfold C
    simp [show (8503056 * k + 7055936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3527968) = 2125764 * k + 1763984 := by
    unfold C
    simp [show (4251528 * k + 3527968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1763984) = 1062882 * k + 881992 := by
    unfold C
    simp [show (2125764 * k + 1763984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 881992) = 531441 * k + 440996 := by
    unfold C
    simp [show (1062882 * k + 881992) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 870119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 870119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_870567 : ∀ k : Nat,
    iterate (1048576 * k + 870567) 32 = 531441 * k + 441223 ∧
      531441 * k + 441223 < 1048576 * k + 870567 := by
  intro k
  have h1 : C (1048576 * k + 870567) = 3145728 * k + 2611702 := by
    unfold C
    simp [show (1048576 * k + 870567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2611702) = 1572864 * k + 1305851 := by
    unfold C
    simp [show (3145728 * k + 2611702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1305851) = 4718592 * k + 3917554 := by
    unfold C
    simp [show (1572864 * k + 1305851) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3917554) = 2359296 * k + 1958777 := by
    unfold C
    simp [show (4718592 * k + 3917554) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1958777) = 7077888 * k + 5876332 := by
    unfold C
    simp [show (2359296 * k + 1958777) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5876332) = 3538944 * k + 2938166 := by
    unfold C
    simp [show (7077888 * k + 5876332) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2938166) = 1769472 * k + 1469083 := by
    unfold C
    simp [show (3538944 * k + 2938166) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1469083) = 5308416 * k + 4407250 := by
    unfold C
    simp [show (1769472 * k + 1469083) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4407250) = 2654208 * k + 2203625 := by
    unfold C
    simp [show (5308416 * k + 4407250) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2203625) = 7962624 * k + 6610876 := by
    unfold C
    simp [show (2654208 * k + 2203625) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6610876) = 3981312 * k + 3305438 := by
    unfold C
    simp [show (7962624 * k + 6610876) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3305438) = 1990656 * k + 1652719 := by
    unfold C
    simp [show (3981312 * k + 3305438) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1652719) = 5971968 * k + 4958158 := by
    unfold C
    simp [show (1990656 * k + 1652719) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4958158) = 2985984 * k + 2479079 := by
    unfold C
    simp [show (5971968 * k + 4958158) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2479079) = 8957952 * k + 7437238 := by
    unfold C
    simp [show (2985984 * k + 2479079) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7437238) = 4478976 * k + 3718619 := by
    unfold C
    simp [show (8957952 * k + 7437238) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3718619) = 13436928 * k + 11155858 := by
    unfold C
    simp [show (4478976 * k + 3718619) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11155858) = 6718464 * k + 5577929 := by
    unfold C
    simp [show (13436928 * k + 11155858) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5577929) = 20155392 * k + 16733788 := by
    unfold C
    simp [show (6718464 * k + 5577929) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16733788) = 10077696 * k + 8366894 := by
    unfold C
    simp [show (20155392 * k + 16733788) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8366894) = 5038848 * k + 4183447 := by
    unfold C
    simp [show (10077696 * k + 8366894) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4183447) = 15116544 * k + 12550342 := by
    unfold C
    simp [show (5038848 * k + 4183447) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12550342) = 7558272 * k + 6275171 := by
    unfold C
    simp [show (15116544 * k + 12550342) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6275171) = 22674816 * k + 18825514 := by
    unfold C
    simp [show (7558272 * k + 6275171) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18825514) = 11337408 * k + 9412757 := by
    unfold C
    simp [show (22674816 * k + 18825514) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9412757) = 34012224 * k + 28238272 := by
    unfold C
    simp [show (11337408 * k + 9412757) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28238272) = 17006112 * k + 14119136 := by
    unfold C
    simp [show (34012224 * k + 28238272) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14119136) = 8503056 * k + 7059568 := by
    unfold C
    simp [show (17006112 * k + 14119136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7059568) = 4251528 * k + 3529784 := by
    unfold C
    simp [show (8503056 * k + 7059568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3529784) = 2125764 * k + 1764892 := by
    unfold C
    simp [show (4251528 * k + 3529784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1764892) = 1062882 * k + 882446 := by
    unfold C
    simp [show (2125764 * k + 1764892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 882446) = 531441 * k + 441223 := by
    unfold C
    simp [show (1062882 * k + 882446) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 870567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 870567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_870651 : ∀ k : Nat,
    iterate (1048576 * k + 870651) 32 = 531441 * k + 441266 ∧
      531441 * k + 441266 < 1048576 * k + 870651 := by
  intro k
  have h1 : C (1048576 * k + 870651) = 3145728 * k + 2611954 := by
    unfold C
    simp [show (1048576 * k + 870651) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2611954) = 1572864 * k + 1305977 := by
    unfold C
    simp [show (3145728 * k + 2611954) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1305977) = 4718592 * k + 3917932 := by
    unfold C
    simp [show (1572864 * k + 1305977) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3917932) = 2359296 * k + 1958966 := by
    unfold C
    simp [show (4718592 * k + 3917932) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1958966) = 1179648 * k + 979483 := by
    unfold C
    simp [show (2359296 * k + 1958966) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 979483) = 3538944 * k + 2938450 := by
    unfold C
    simp [show (1179648 * k + 979483) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2938450) = 1769472 * k + 1469225 := by
    unfold C
    simp [show (3538944 * k + 2938450) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1469225) = 5308416 * k + 4407676 := by
    unfold C
    simp [show (1769472 * k + 1469225) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4407676) = 2654208 * k + 2203838 := by
    unfold C
    simp [show (5308416 * k + 4407676) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2203838) = 1327104 * k + 1101919 := by
    unfold C
    simp [show (2654208 * k + 2203838) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1101919) = 3981312 * k + 3305758 := by
    unfold C
    simp [show (1327104 * k + 1101919) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3305758) = 1990656 * k + 1652879 := by
    unfold C
    simp [show (3981312 * k + 3305758) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1652879) = 5971968 * k + 4958638 := by
    unfold C
    simp [show (1990656 * k + 1652879) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4958638) = 2985984 * k + 2479319 := by
    unfold C
    simp [show (5971968 * k + 4958638) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2479319) = 8957952 * k + 7437958 := by
    unfold C
    simp [show (2985984 * k + 2479319) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7437958) = 4478976 * k + 3718979 := by
    unfold C
    simp [show (8957952 * k + 7437958) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3718979) = 13436928 * k + 11156938 := by
    unfold C
    simp [show (4478976 * k + 3718979) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11156938) = 6718464 * k + 5578469 := by
    unfold C
    simp [show (13436928 * k + 11156938) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5578469) = 20155392 * k + 16735408 := by
    unfold C
    simp [show (6718464 * k + 5578469) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16735408) = 10077696 * k + 8367704 := by
    unfold C
    simp [show (20155392 * k + 16735408) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8367704) = 5038848 * k + 4183852 := by
    unfold C
    simp [show (10077696 * k + 8367704) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4183852) = 2519424 * k + 2091926 := by
    unfold C
    simp [show (5038848 * k + 4183852) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2091926) = 1259712 * k + 1045963 := by
    unfold C
    simp [show (2519424 * k + 2091926) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1045963) = 3779136 * k + 3137890 := by
    unfold C
    simp [show (1259712 * k + 1045963) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3137890) = 1889568 * k + 1568945 := by
    unfold C
    simp [show (3779136 * k + 3137890) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1568945) = 5668704 * k + 4706836 := by
    unfold C
    simp [show (1889568 * k + 1568945) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4706836) = 2834352 * k + 2353418 := by
    unfold C
    simp [show (5668704 * k + 4706836) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2353418) = 1417176 * k + 1176709 := by
    unfold C
    simp [show (2834352 * k + 2353418) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1176709) = 4251528 * k + 3530128 := by
    unfold C
    simp [show (1417176 * k + 1176709) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3530128) = 2125764 * k + 1765064 := by
    unfold C
    simp [show (4251528 * k + 3530128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1765064) = 1062882 * k + 882532 := by
    unfold C
    simp [show (2125764 * k + 1765064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 882532) = 531441 * k + 441266 := by
    unfold C
    simp [show (1062882 * k + 882532) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 870651) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 870651)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_870811 : ∀ k : Nat,
    iterate (1048576 * k + 870811) 32 = 531441 * k + 441347 ∧
      531441 * k + 441347 < 1048576 * k + 870811 := by
  intro k
  have h1 : C (1048576 * k + 870811) = 3145728 * k + 2612434 := by
    unfold C
    simp [show (1048576 * k + 870811) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2612434) = 1572864 * k + 1306217 := by
    unfold C
    simp [show (3145728 * k + 2612434) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1306217) = 4718592 * k + 3918652 := by
    unfold C
    simp [show (1572864 * k + 1306217) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3918652) = 2359296 * k + 1959326 := by
    unfold C
    simp [show (4718592 * k + 3918652) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1959326) = 1179648 * k + 979663 := by
    unfold C
    simp [show (2359296 * k + 1959326) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 979663) = 3538944 * k + 2938990 := by
    unfold C
    simp [show (1179648 * k + 979663) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2938990) = 1769472 * k + 1469495 := by
    unfold C
    simp [show (3538944 * k + 2938990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1469495) = 5308416 * k + 4408486 := by
    unfold C
    simp [show (1769472 * k + 1469495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4408486) = 2654208 * k + 2204243 := by
    unfold C
    simp [show (5308416 * k + 4408486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2204243) = 7962624 * k + 6612730 := by
    unfold C
    simp [show (2654208 * k + 2204243) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6612730) = 3981312 * k + 3306365 := by
    unfold C
    simp [show (7962624 * k + 6612730) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3306365) = 11943936 * k + 9919096 := by
    unfold C
    simp [show (3981312 * k + 3306365) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9919096) = 5971968 * k + 4959548 := by
    unfold C
    simp [show (11943936 * k + 9919096) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4959548) = 2985984 * k + 2479774 := by
    unfold C
    simp [show (5971968 * k + 4959548) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2479774) = 1492992 * k + 1239887 := by
    unfold C
    simp [show (2985984 * k + 2479774) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1239887) = 4478976 * k + 3719662 := by
    unfold C
    simp [show (1492992 * k + 1239887) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3719662) = 2239488 * k + 1859831 := by
    unfold C
    simp [show (4478976 * k + 3719662) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1859831) = 6718464 * k + 5579494 := by
    unfold C
    simp [show (2239488 * k + 1859831) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5579494) = 3359232 * k + 2789747 := by
    unfold C
    simp [show (6718464 * k + 5579494) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2789747) = 10077696 * k + 8369242 := by
    unfold C
    simp [show (3359232 * k + 2789747) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8369242) = 5038848 * k + 4184621 := by
    unfold C
    simp [show (10077696 * k + 8369242) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4184621) = 15116544 * k + 12553864 := by
    unfold C
    simp [show (5038848 * k + 4184621) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12553864) = 7558272 * k + 6276932 := by
    unfold C
    simp [show (15116544 * k + 12553864) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6276932) = 3779136 * k + 3138466 := by
    unfold C
    simp [show (7558272 * k + 6276932) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3138466) = 1889568 * k + 1569233 := by
    unfold C
    simp [show (3779136 * k + 3138466) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1569233) = 5668704 * k + 4707700 := by
    unfold C
    simp [show (1889568 * k + 1569233) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4707700) = 2834352 * k + 2353850 := by
    unfold C
    simp [show (5668704 * k + 4707700) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2353850) = 1417176 * k + 1176925 := by
    unfold C
    simp [show (2834352 * k + 2353850) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1176925) = 4251528 * k + 3530776 := by
    unfold C
    simp [show (1417176 * k + 1176925) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3530776) = 2125764 * k + 1765388 := by
    unfold C
    simp [show (4251528 * k + 3530776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1765388) = 1062882 * k + 882694 := by
    unfold C
    simp [show (2125764 * k + 1765388) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 882694) = 531441 * k + 441347 := by
    unfold C
    simp [show (1062882 * k + 882694) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 870811) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 870811)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_871143 : ∀ k : Nat,
    iterate (1048576 * k + 871143) 32 = 531441 * k + 441515 ∧
      531441 * k + 441515 < 1048576 * k + 871143 := by
  intro k
  have h1 : C (1048576 * k + 871143) = 3145728 * k + 2613430 := by
    unfold C
    simp [show (1048576 * k + 871143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2613430) = 1572864 * k + 1306715 := by
    unfold C
    simp [show (3145728 * k + 2613430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1306715) = 4718592 * k + 3920146 := by
    unfold C
    simp [show (1572864 * k + 1306715) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3920146) = 2359296 * k + 1960073 := by
    unfold C
    simp [show (4718592 * k + 3920146) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1960073) = 7077888 * k + 5880220 := by
    unfold C
    simp [show (2359296 * k + 1960073) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5880220) = 3538944 * k + 2940110 := by
    unfold C
    simp [show (7077888 * k + 5880220) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2940110) = 1769472 * k + 1470055 := by
    unfold C
    simp [show (3538944 * k + 2940110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1470055) = 5308416 * k + 4410166 := by
    unfold C
    simp [show (1769472 * k + 1470055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4410166) = 2654208 * k + 2205083 := by
    unfold C
    simp [show (5308416 * k + 4410166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2205083) = 7962624 * k + 6615250 := by
    unfold C
    simp [show (2654208 * k + 2205083) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6615250) = 3981312 * k + 3307625 := by
    unfold C
    simp [show (7962624 * k + 6615250) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3307625) = 11943936 * k + 9922876 := by
    unfold C
    simp [show (3981312 * k + 3307625) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9922876) = 5971968 * k + 4961438 := by
    unfold C
    simp [show (11943936 * k + 9922876) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4961438) = 2985984 * k + 2480719 := by
    unfold C
    simp [show (5971968 * k + 4961438) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2480719) = 8957952 * k + 7442158 := by
    unfold C
    simp [show (2985984 * k + 2480719) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7442158) = 4478976 * k + 3721079 := by
    unfold C
    simp [show (8957952 * k + 7442158) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3721079) = 13436928 * k + 11163238 := by
    unfold C
    simp [show (4478976 * k + 3721079) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11163238) = 6718464 * k + 5581619 := by
    unfold C
    simp [show (13436928 * k + 11163238) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5581619) = 20155392 * k + 16744858 := by
    unfold C
    simp [show (6718464 * k + 5581619) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16744858) = 10077696 * k + 8372429 := by
    unfold C
    simp [show (20155392 * k + 16744858) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8372429) = 30233088 * k + 25117288 := by
    unfold C
    simp [show (10077696 * k + 8372429) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25117288) = 15116544 * k + 12558644 := by
    unfold C
    simp [show (30233088 * k + 25117288) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12558644) = 7558272 * k + 6279322 := by
    unfold C
    simp [show (15116544 * k + 12558644) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6279322) = 3779136 * k + 3139661 := by
    unfold C
    simp [show (7558272 * k + 6279322) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3139661) = 11337408 * k + 9418984 := by
    unfold C
    simp [show (3779136 * k + 3139661) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9418984) = 5668704 * k + 4709492 := by
    unfold C
    simp [show (11337408 * k + 9418984) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4709492) = 2834352 * k + 2354746 := by
    unfold C
    simp [show (5668704 * k + 4709492) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2354746) = 1417176 * k + 1177373 := by
    unfold C
    simp [show (2834352 * k + 2354746) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1177373) = 4251528 * k + 3532120 := by
    unfold C
    simp [show (1417176 * k + 1177373) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3532120) = 2125764 * k + 1766060 := by
    unfold C
    simp [show (4251528 * k + 3532120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1766060) = 1062882 * k + 883030 := by
    unfold C
    simp [show (2125764 * k + 1766060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 883030) = 531441 * k + 441515 := by
    unfold C
    simp [show (1062882 * k + 883030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 871143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 871143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_871455 : ∀ k : Nat,
    iterate (1048576 * k + 871455) 32 = 531441 * k + 441673 ∧
      531441 * k + 441673 < 1048576 * k + 871455 := by
  intro k
  have h1 : C (1048576 * k + 871455) = 3145728 * k + 2614366 := by
    unfold C
    simp [show (1048576 * k + 871455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2614366) = 1572864 * k + 1307183 := by
    unfold C
    simp [show (3145728 * k + 2614366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1307183) = 4718592 * k + 3921550 := by
    unfold C
    simp [show (1572864 * k + 1307183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3921550) = 2359296 * k + 1960775 := by
    unfold C
    simp [show (4718592 * k + 3921550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1960775) = 7077888 * k + 5882326 := by
    unfold C
    simp [show (2359296 * k + 1960775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5882326) = 3538944 * k + 2941163 := by
    unfold C
    simp [show (7077888 * k + 5882326) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2941163) = 10616832 * k + 8823490 := by
    unfold C
    simp [show (3538944 * k + 2941163) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8823490) = 5308416 * k + 4411745 := by
    unfold C
    simp [show (10616832 * k + 8823490) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4411745) = 15925248 * k + 13235236 := by
    unfold C
    simp [show (5308416 * k + 4411745) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13235236) = 7962624 * k + 6617618 := by
    unfold C
    simp [show (15925248 * k + 13235236) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6617618) = 3981312 * k + 3308809 := by
    unfold C
    simp [show (7962624 * k + 6617618) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3308809) = 11943936 * k + 9926428 := by
    unfold C
    simp [show (3981312 * k + 3308809) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9926428) = 5971968 * k + 4963214 := by
    unfold C
    simp [show (11943936 * k + 9926428) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4963214) = 2985984 * k + 2481607 := by
    unfold C
    simp [show (5971968 * k + 4963214) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2481607) = 8957952 * k + 7444822 := by
    unfold C
    simp [show (2985984 * k + 2481607) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7444822) = 4478976 * k + 3722411 := by
    unfold C
    simp [show (8957952 * k + 7444822) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3722411) = 13436928 * k + 11167234 := by
    unfold C
    simp [show (4478976 * k + 3722411) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11167234) = 6718464 * k + 5583617 := by
    unfold C
    simp [show (13436928 * k + 11167234) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5583617) = 20155392 * k + 16750852 := by
    unfold C
    simp [show (6718464 * k + 5583617) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16750852) = 10077696 * k + 8375426 := by
    unfold C
    simp [show (20155392 * k + 16750852) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8375426) = 5038848 * k + 4187713 := by
    unfold C
    simp [show (10077696 * k + 8375426) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4187713) = 15116544 * k + 12563140 := by
    unfold C
    simp [show (5038848 * k + 4187713) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12563140) = 7558272 * k + 6281570 := by
    unfold C
    simp [show (15116544 * k + 12563140) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6281570) = 3779136 * k + 3140785 := by
    unfold C
    simp [show (7558272 * k + 6281570) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3140785) = 11337408 * k + 9422356 := by
    unfold C
    simp [show (3779136 * k + 3140785) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9422356) = 5668704 * k + 4711178 := by
    unfold C
    simp [show (11337408 * k + 9422356) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4711178) = 2834352 * k + 2355589 := by
    unfold C
    simp [show (5668704 * k + 4711178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2355589) = 8503056 * k + 7066768 := by
    unfold C
    simp [show (2834352 * k + 2355589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7066768) = 4251528 * k + 3533384 := by
    unfold C
    simp [show (8503056 * k + 7066768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3533384) = 2125764 * k + 1766692 := by
    unfold C
    simp [show (4251528 * k + 3533384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1766692) = 1062882 * k + 883346 := by
    unfold C
    simp [show (2125764 * k + 1766692) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 883346) = 531441 * k + 441673 := by
    unfold C
    simp [show (1062882 * k + 883346) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 871455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 871455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_871579 : ∀ k : Nat,
    iterate (1048576 * k + 871579) 32 = 531441 * k + 441736 ∧
      531441 * k + 441736 < 1048576 * k + 871579 := by
  intro k
  have h1 : C (1048576 * k + 871579) = 3145728 * k + 2614738 := by
    unfold C
    simp [show (1048576 * k + 871579) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2614738) = 1572864 * k + 1307369 := by
    unfold C
    simp [show (3145728 * k + 2614738) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1307369) = 4718592 * k + 3922108 := by
    unfold C
    simp [show (1572864 * k + 1307369) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3922108) = 2359296 * k + 1961054 := by
    unfold C
    simp [show (4718592 * k + 3922108) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1961054) = 1179648 * k + 980527 := by
    unfold C
    simp [show (2359296 * k + 1961054) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 980527) = 3538944 * k + 2941582 := by
    unfold C
    simp [show (1179648 * k + 980527) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2941582) = 1769472 * k + 1470791 := by
    unfold C
    simp [show (3538944 * k + 2941582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1470791) = 5308416 * k + 4412374 := by
    unfold C
    simp [show (1769472 * k + 1470791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4412374) = 2654208 * k + 2206187 := by
    unfold C
    simp [show (5308416 * k + 4412374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2206187) = 7962624 * k + 6618562 := by
    unfold C
    simp [show (2654208 * k + 2206187) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6618562) = 3981312 * k + 3309281 := by
    unfold C
    simp [show (7962624 * k + 6618562) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3309281) = 11943936 * k + 9927844 := by
    unfold C
    simp [show (3981312 * k + 3309281) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9927844) = 5971968 * k + 4963922 := by
    unfold C
    simp [show (11943936 * k + 9927844) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4963922) = 2985984 * k + 2481961 := by
    unfold C
    simp [show (5971968 * k + 4963922) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2481961) = 8957952 * k + 7445884 := by
    unfold C
    simp [show (2985984 * k + 2481961) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7445884) = 4478976 * k + 3722942 := by
    unfold C
    simp [show (8957952 * k + 7445884) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3722942) = 2239488 * k + 1861471 := by
    unfold C
    simp [show (4478976 * k + 3722942) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1861471) = 6718464 * k + 5584414 := by
    unfold C
    simp [show (2239488 * k + 1861471) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5584414) = 3359232 * k + 2792207 := by
    unfold C
    simp [show (6718464 * k + 5584414) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2792207) = 10077696 * k + 8376622 := by
    unfold C
    simp [show (3359232 * k + 2792207) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8376622) = 5038848 * k + 4188311 := by
    unfold C
    simp [show (10077696 * k + 8376622) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4188311) = 15116544 * k + 12564934 := by
    unfold C
    simp [show (5038848 * k + 4188311) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12564934) = 7558272 * k + 6282467 := by
    unfold C
    simp [show (15116544 * k + 12564934) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6282467) = 22674816 * k + 18847402 := by
    unfold C
    simp [show (7558272 * k + 6282467) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18847402) = 11337408 * k + 9423701 := by
    unfold C
    simp [show (22674816 * k + 18847402) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9423701) = 34012224 * k + 28271104 := by
    unfold C
    simp [show (11337408 * k + 9423701) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28271104) = 17006112 * k + 14135552 := by
    unfold C
    simp [show (34012224 * k + 28271104) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14135552) = 8503056 * k + 7067776 := by
    unfold C
    simp [show (17006112 * k + 14135552) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7067776) = 4251528 * k + 3533888 := by
    unfold C
    simp [show (8503056 * k + 7067776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3533888) = 2125764 * k + 1766944 := by
    unfold C
    simp [show (4251528 * k + 3533888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1766944) = 1062882 * k + 883472 := by
    unfold C
    simp [show (2125764 * k + 1766944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 883472) = 531441 * k + 441736 := by
    unfold C
    simp [show (1062882 * k + 883472) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 871579) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 871579)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_872303 : ∀ k : Nat,
    iterate (1048576 * k + 872303) 32 = 531441 * k + 442103 ∧
      531441 * k + 442103 < 1048576 * k + 872303 := by
  intro k
  have h1 : C (1048576 * k + 872303) = 3145728 * k + 2616910 := by
    unfold C
    simp [show (1048576 * k + 872303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2616910) = 1572864 * k + 1308455 := by
    unfold C
    simp [show (3145728 * k + 2616910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1308455) = 4718592 * k + 3925366 := by
    unfold C
    simp [show (1572864 * k + 1308455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3925366) = 2359296 * k + 1962683 := by
    unfold C
    simp [show (4718592 * k + 3925366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1962683) = 7077888 * k + 5888050 := by
    unfold C
    simp [show (2359296 * k + 1962683) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5888050) = 3538944 * k + 2944025 := by
    unfold C
    simp [show (7077888 * k + 5888050) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2944025) = 10616832 * k + 8832076 := by
    unfold C
    simp [show (3538944 * k + 2944025) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8832076) = 5308416 * k + 4416038 := by
    unfold C
    simp [show (10616832 * k + 8832076) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4416038) = 2654208 * k + 2208019 := by
    unfold C
    simp [show (5308416 * k + 4416038) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2208019) = 7962624 * k + 6624058 := by
    unfold C
    simp [show (2654208 * k + 2208019) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6624058) = 3981312 * k + 3312029 := by
    unfold C
    simp [show (7962624 * k + 6624058) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3312029) = 11943936 * k + 9936088 := by
    unfold C
    simp [show (3981312 * k + 3312029) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9936088) = 5971968 * k + 4968044 := by
    unfold C
    simp [show (11943936 * k + 9936088) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4968044) = 2985984 * k + 2484022 := by
    unfold C
    simp [show (5971968 * k + 4968044) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2484022) = 1492992 * k + 1242011 := by
    unfold C
    simp [show (2985984 * k + 2484022) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1242011) = 4478976 * k + 3726034 := by
    unfold C
    simp [show (1492992 * k + 1242011) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3726034) = 2239488 * k + 1863017 := by
    unfold C
    simp [show (4478976 * k + 3726034) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1863017) = 6718464 * k + 5589052 := by
    unfold C
    simp [show (2239488 * k + 1863017) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5589052) = 3359232 * k + 2794526 := by
    unfold C
    simp [show (6718464 * k + 5589052) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2794526) = 1679616 * k + 1397263 := by
    unfold C
    simp [show (3359232 * k + 2794526) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1397263) = 5038848 * k + 4191790 := by
    unfold C
    simp [show (1679616 * k + 1397263) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4191790) = 2519424 * k + 2095895 := by
    unfold C
    simp [show (5038848 * k + 4191790) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2095895) = 7558272 * k + 6287686 := by
    unfold C
    simp [show (2519424 * k + 2095895) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6287686) = 3779136 * k + 3143843 := by
    unfold C
    simp [show (7558272 * k + 6287686) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3143843) = 11337408 * k + 9431530 := by
    unfold C
    simp [show (3779136 * k + 3143843) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9431530) = 5668704 * k + 4715765 := by
    unfold C
    simp [show (11337408 * k + 9431530) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4715765) = 17006112 * k + 14147296 := by
    unfold C
    simp [show (5668704 * k + 4715765) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14147296) = 8503056 * k + 7073648 := by
    unfold C
    simp [show (17006112 * k + 14147296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7073648) = 4251528 * k + 3536824 := by
    unfold C
    simp [show (8503056 * k + 7073648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3536824) = 2125764 * k + 1768412 := by
    unfold C
    simp [show (4251528 * k + 3536824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1768412) = 1062882 * k + 884206 := by
    unfold C
    simp [show (2125764 * k + 1768412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 884206) = 531441 * k + 442103 := by
    unfold C
    simp [show (1062882 * k + 884206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 872303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 872303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_872615 : ∀ k : Nat,
    iterate (1048576 * k + 872615) 32 = 531441 * k + 442261 ∧
      531441 * k + 442261 < 1048576 * k + 872615 := by
  intro k
  have h1 : C (1048576 * k + 872615) = 3145728 * k + 2617846 := by
    unfold C
    simp [show (1048576 * k + 872615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2617846) = 1572864 * k + 1308923 := by
    unfold C
    simp [show (3145728 * k + 2617846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1308923) = 4718592 * k + 3926770 := by
    unfold C
    simp [show (1572864 * k + 1308923) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3926770) = 2359296 * k + 1963385 := by
    unfold C
    simp [show (4718592 * k + 3926770) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1963385) = 7077888 * k + 5890156 := by
    unfold C
    simp [show (2359296 * k + 1963385) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5890156) = 3538944 * k + 2945078 := by
    unfold C
    simp [show (7077888 * k + 5890156) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2945078) = 1769472 * k + 1472539 := by
    unfold C
    simp [show (3538944 * k + 2945078) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1472539) = 5308416 * k + 4417618 := by
    unfold C
    simp [show (1769472 * k + 1472539) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4417618) = 2654208 * k + 2208809 := by
    unfold C
    simp [show (5308416 * k + 4417618) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2208809) = 7962624 * k + 6626428 := by
    unfold C
    simp [show (2654208 * k + 2208809) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6626428) = 3981312 * k + 3313214 := by
    unfold C
    simp [show (7962624 * k + 6626428) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3313214) = 1990656 * k + 1656607 := by
    unfold C
    simp [show (3981312 * k + 3313214) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1656607) = 5971968 * k + 4969822 := by
    unfold C
    simp [show (1990656 * k + 1656607) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4969822) = 2985984 * k + 2484911 := by
    unfold C
    simp [show (5971968 * k + 4969822) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2484911) = 8957952 * k + 7454734 := by
    unfold C
    simp [show (2985984 * k + 2484911) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7454734) = 4478976 * k + 3727367 := by
    unfold C
    simp [show (8957952 * k + 7454734) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3727367) = 13436928 * k + 11182102 := by
    unfold C
    simp [show (4478976 * k + 3727367) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11182102) = 6718464 * k + 5591051 := by
    unfold C
    simp [show (13436928 * k + 11182102) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5591051) = 20155392 * k + 16773154 := by
    unfold C
    simp [show (6718464 * k + 5591051) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16773154) = 10077696 * k + 8386577 := by
    unfold C
    simp [show (20155392 * k + 16773154) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8386577) = 30233088 * k + 25159732 := by
    unfold C
    simp [show (10077696 * k + 8386577) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25159732) = 15116544 * k + 12579866 := by
    unfold C
    simp [show (30233088 * k + 25159732) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12579866) = 7558272 * k + 6289933 := by
    unfold C
    simp [show (15116544 * k + 12579866) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6289933) = 22674816 * k + 18869800 := by
    unfold C
    simp [show (7558272 * k + 6289933) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18869800) = 11337408 * k + 9434900 := by
    unfold C
    simp [show (22674816 * k + 18869800) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9434900) = 5668704 * k + 4717450 := by
    unfold C
    simp [show (11337408 * k + 9434900) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4717450) = 2834352 * k + 2358725 := by
    unfold C
    simp [show (5668704 * k + 4717450) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2358725) = 8503056 * k + 7076176 := by
    unfold C
    simp [show (2834352 * k + 2358725) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7076176) = 4251528 * k + 3538088 := by
    unfold C
    simp [show (8503056 * k + 7076176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3538088) = 2125764 * k + 1769044 := by
    unfold C
    simp [show (4251528 * k + 3538088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1769044) = 1062882 * k + 884522 := by
    unfold C
    simp [show (2125764 * k + 1769044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 884522) = 531441 * k + 442261 := by
    unfold C
    simp [show (1062882 * k + 884522) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 872615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 872615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_873167 : ∀ k : Nat,
    iterate (1048576 * k + 873167) 32 = 531441 * k + 442541 ∧
      531441 * k + 442541 < 1048576 * k + 873167 := by
  intro k
  have h1 : C (1048576 * k + 873167) = 3145728 * k + 2619502 := by
    unfold C
    simp [show (1048576 * k + 873167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2619502) = 1572864 * k + 1309751 := by
    unfold C
    simp [show (3145728 * k + 2619502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1309751) = 4718592 * k + 3929254 := by
    unfold C
    simp [show (1572864 * k + 1309751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3929254) = 2359296 * k + 1964627 := by
    unfold C
    simp [show (4718592 * k + 3929254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1964627) = 7077888 * k + 5893882 := by
    unfold C
    simp [show (2359296 * k + 1964627) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5893882) = 3538944 * k + 2946941 := by
    unfold C
    simp [show (7077888 * k + 5893882) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2946941) = 10616832 * k + 8840824 := by
    unfold C
    simp [show (3538944 * k + 2946941) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8840824) = 5308416 * k + 4420412 := by
    unfold C
    simp [show (10616832 * k + 8840824) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4420412) = 2654208 * k + 2210206 := by
    unfold C
    simp [show (5308416 * k + 4420412) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2210206) = 1327104 * k + 1105103 := by
    unfold C
    simp [show (2654208 * k + 2210206) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1105103) = 3981312 * k + 3315310 := by
    unfold C
    simp [show (1327104 * k + 1105103) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3315310) = 1990656 * k + 1657655 := by
    unfold C
    simp [show (3981312 * k + 3315310) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1657655) = 5971968 * k + 4972966 := by
    unfold C
    simp [show (1990656 * k + 1657655) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4972966) = 2985984 * k + 2486483 := by
    unfold C
    simp [show (5971968 * k + 4972966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2486483) = 8957952 * k + 7459450 := by
    unfold C
    simp [show (2985984 * k + 2486483) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7459450) = 4478976 * k + 3729725 := by
    unfold C
    simp [show (8957952 * k + 7459450) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3729725) = 13436928 * k + 11189176 := by
    unfold C
    simp [show (4478976 * k + 3729725) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11189176) = 6718464 * k + 5594588 := by
    unfold C
    simp [show (13436928 * k + 11189176) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5594588) = 3359232 * k + 2797294 := by
    unfold C
    simp [show (6718464 * k + 5594588) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2797294) = 1679616 * k + 1398647 := by
    unfold C
    simp [show (3359232 * k + 2797294) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1398647) = 5038848 * k + 4195942 := by
    unfold C
    simp [show (1679616 * k + 1398647) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4195942) = 2519424 * k + 2097971 := by
    unfold C
    simp [show (5038848 * k + 4195942) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2097971) = 7558272 * k + 6293914 := by
    unfold C
    simp [show (2519424 * k + 2097971) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6293914) = 3779136 * k + 3146957 := by
    unfold C
    simp [show (7558272 * k + 6293914) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3146957) = 11337408 * k + 9440872 := by
    unfold C
    simp [show (3779136 * k + 3146957) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9440872) = 5668704 * k + 4720436 := by
    unfold C
    simp [show (11337408 * k + 9440872) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4720436) = 2834352 * k + 2360218 := by
    unfold C
    simp [show (5668704 * k + 4720436) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2360218) = 1417176 * k + 1180109 := by
    unfold C
    simp [show (2834352 * k + 2360218) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1180109) = 4251528 * k + 3540328 := by
    unfold C
    simp [show (1417176 * k + 1180109) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3540328) = 2125764 * k + 1770164 := by
    unfold C
    simp [show (4251528 * k + 3540328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1770164) = 1062882 * k + 885082 := by
    unfold C
    simp [show (2125764 * k + 1770164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 885082) = 531441 * k + 442541 := by
    unfold C
    simp [show (1062882 * k + 885082) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 873167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 873167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_873499 : ∀ k : Nat,
    iterate (1048576 * k + 873499) 32 = 531441 * k + 442709 ∧
      531441 * k + 442709 < 1048576 * k + 873499 := by
  intro k
  have h1 : C (1048576 * k + 873499) = 3145728 * k + 2620498 := by
    unfold C
    simp [show (1048576 * k + 873499) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2620498) = 1572864 * k + 1310249 := by
    unfold C
    simp [show (3145728 * k + 2620498) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1310249) = 4718592 * k + 3930748 := by
    unfold C
    simp [show (1572864 * k + 1310249) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3930748) = 2359296 * k + 1965374 := by
    unfold C
    simp [show (4718592 * k + 3930748) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1965374) = 1179648 * k + 982687 := by
    unfold C
    simp [show (2359296 * k + 1965374) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 982687) = 3538944 * k + 2948062 := by
    unfold C
    simp [show (1179648 * k + 982687) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2948062) = 1769472 * k + 1474031 := by
    unfold C
    simp [show (3538944 * k + 2948062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1474031) = 5308416 * k + 4422094 := by
    unfold C
    simp [show (1769472 * k + 1474031) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4422094) = 2654208 * k + 2211047 := by
    unfold C
    simp [show (5308416 * k + 4422094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2211047) = 7962624 * k + 6633142 := by
    unfold C
    simp [show (2654208 * k + 2211047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6633142) = 3981312 * k + 3316571 := by
    unfold C
    simp [show (7962624 * k + 6633142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3316571) = 11943936 * k + 9949714 := by
    unfold C
    simp [show (3981312 * k + 3316571) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9949714) = 5971968 * k + 4974857 := by
    unfold C
    simp [show (11943936 * k + 9949714) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4974857) = 17915904 * k + 14924572 := by
    unfold C
    simp [show (5971968 * k + 4974857) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14924572) = 8957952 * k + 7462286 := by
    unfold C
    simp [show (17915904 * k + 14924572) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7462286) = 4478976 * k + 3731143 := by
    unfold C
    simp [show (8957952 * k + 7462286) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3731143) = 13436928 * k + 11193430 := by
    unfold C
    simp [show (4478976 * k + 3731143) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11193430) = 6718464 * k + 5596715 := by
    unfold C
    simp [show (13436928 * k + 11193430) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5596715) = 20155392 * k + 16790146 := by
    unfold C
    simp [show (6718464 * k + 5596715) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16790146) = 10077696 * k + 8395073 := by
    unfold C
    simp [show (20155392 * k + 16790146) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8395073) = 30233088 * k + 25185220 := by
    unfold C
    simp [show (10077696 * k + 8395073) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25185220) = 15116544 * k + 12592610 := by
    unfold C
    simp [show (30233088 * k + 25185220) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12592610) = 7558272 * k + 6296305 := by
    unfold C
    simp [show (15116544 * k + 12592610) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6296305) = 22674816 * k + 18888916 := by
    unfold C
    simp [show (7558272 * k + 6296305) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18888916) = 11337408 * k + 9444458 := by
    unfold C
    simp [show (22674816 * k + 18888916) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9444458) = 5668704 * k + 4722229 := by
    unfold C
    simp [show (11337408 * k + 9444458) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4722229) = 17006112 * k + 14166688 := by
    unfold C
    simp [show (5668704 * k + 4722229) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14166688) = 8503056 * k + 7083344 := by
    unfold C
    simp [show (17006112 * k + 14166688) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7083344) = 4251528 * k + 3541672 := by
    unfold C
    simp [show (8503056 * k + 7083344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3541672) = 2125764 * k + 1770836 := by
    unfold C
    simp [show (4251528 * k + 3541672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1770836) = 1062882 * k + 885418 := by
    unfold C
    simp [show (2125764 * k + 1770836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 885418) = 531441 * k + 442709 := by
    unfold C
    simp [show (1062882 * k + 885418) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 873499) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 873499)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_873503 : ∀ k : Nat,
    iterate (1048576 * k + 873503) 32 = 531441 * k + 442711 ∧
      531441 * k + 442711 < 1048576 * k + 873503 := by
  intro k
  have h1 : C (1048576 * k + 873503) = 3145728 * k + 2620510 := by
    unfold C
    simp [show (1048576 * k + 873503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2620510) = 1572864 * k + 1310255 := by
    unfold C
    simp [show (3145728 * k + 2620510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1310255) = 4718592 * k + 3930766 := by
    unfold C
    simp [show (1572864 * k + 1310255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3930766) = 2359296 * k + 1965383 := by
    unfold C
    simp [show (4718592 * k + 3930766) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1965383) = 7077888 * k + 5896150 := by
    unfold C
    simp [show (2359296 * k + 1965383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5896150) = 3538944 * k + 2948075 := by
    unfold C
    simp [show (7077888 * k + 5896150) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2948075) = 10616832 * k + 8844226 := by
    unfold C
    simp [show (3538944 * k + 2948075) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8844226) = 5308416 * k + 4422113 := by
    unfold C
    simp [show (10616832 * k + 8844226) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4422113) = 15925248 * k + 13266340 := by
    unfold C
    simp [show (5308416 * k + 4422113) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13266340) = 7962624 * k + 6633170 := by
    unfold C
    simp [show (15925248 * k + 13266340) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6633170) = 3981312 * k + 3316585 := by
    unfold C
    simp [show (7962624 * k + 6633170) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3316585) = 11943936 * k + 9949756 := by
    unfold C
    simp [show (3981312 * k + 3316585) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9949756) = 5971968 * k + 4974878 := by
    unfold C
    simp [show (11943936 * k + 9949756) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4974878) = 2985984 * k + 2487439 := by
    unfold C
    simp [show (5971968 * k + 4974878) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2487439) = 8957952 * k + 7462318 := by
    unfold C
    simp [show (2985984 * k + 2487439) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7462318) = 4478976 * k + 3731159 := by
    unfold C
    simp [show (8957952 * k + 7462318) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3731159) = 13436928 * k + 11193478 := by
    unfold C
    simp [show (4478976 * k + 3731159) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11193478) = 6718464 * k + 5596739 := by
    unfold C
    simp [show (13436928 * k + 11193478) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5596739) = 20155392 * k + 16790218 := by
    unfold C
    simp [show (6718464 * k + 5596739) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16790218) = 10077696 * k + 8395109 := by
    unfold C
    simp [show (20155392 * k + 16790218) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8395109) = 30233088 * k + 25185328 := by
    unfold C
    simp [show (10077696 * k + 8395109) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25185328) = 15116544 * k + 12592664 := by
    unfold C
    simp [show (30233088 * k + 25185328) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12592664) = 7558272 * k + 6296332 := by
    unfold C
    simp [show (15116544 * k + 12592664) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6296332) = 3779136 * k + 3148166 := by
    unfold C
    simp [show (7558272 * k + 6296332) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3148166) = 1889568 * k + 1574083 := by
    unfold C
    simp [show (3779136 * k + 3148166) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1574083) = 5668704 * k + 4722250 := by
    unfold C
    simp [show (1889568 * k + 1574083) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4722250) = 2834352 * k + 2361125 := by
    unfold C
    simp [show (5668704 * k + 4722250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2361125) = 8503056 * k + 7083376 := by
    unfold C
    simp [show (2834352 * k + 2361125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7083376) = 4251528 * k + 3541688 := by
    unfold C
    simp [show (8503056 * k + 7083376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3541688) = 2125764 * k + 1770844 := by
    unfold C
    simp [show (4251528 * k + 3541688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1770844) = 1062882 * k + 885422 := by
    unfold C
    simp [show (2125764 * k + 1770844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 885422) = 531441 * k + 442711 := by
    unfold C
    simp [show (1062882 * k + 885422) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 873503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 873503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_874215 : ∀ k : Nat,
    iterate (1048576 * k + 874215) 32 = 531441 * k + 443072 ∧
      531441 * k + 443072 < 1048576 * k + 874215 := by
  intro k
  have h1 : C (1048576 * k + 874215) = 3145728 * k + 2622646 := by
    unfold C
    simp [show (1048576 * k + 874215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2622646) = 1572864 * k + 1311323 := by
    unfold C
    simp [show (3145728 * k + 2622646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1311323) = 4718592 * k + 3933970 := by
    unfold C
    simp [show (1572864 * k + 1311323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3933970) = 2359296 * k + 1966985 := by
    unfold C
    simp [show (4718592 * k + 3933970) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1966985) = 7077888 * k + 5900956 := by
    unfold C
    simp [show (2359296 * k + 1966985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5900956) = 3538944 * k + 2950478 := by
    unfold C
    simp [show (7077888 * k + 5900956) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2950478) = 1769472 * k + 1475239 := by
    unfold C
    simp [show (3538944 * k + 2950478) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1475239) = 5308416 * k + 4425718 := by
    unfold C
    simp [show (1769472 * k + 1475239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4425718) = 2654208 * k + 2212859 := by
    unfold C
    simp [show (5308416 * k + 4425718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2212859) = 7962624 * k + 6638578 := by
    unfold C
    simp [show (2654208 * k + 2212859) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6638578) = 3981312 * k + 3319289 := by
    unfold C
    simp [show (7962624 * k + 6638578) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3319289) = 11943936 * k + 9957868 := by
    unfold C
    simp [show (3981312 * k + 3319289) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9957868) = 5971968 * k + 4978934 := by
    unfold C
    simp [show (11943936 * k + 9957868) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4978934) = 2985984 * k + 2489467 := by
    unfold C
    simp [show (5971968 * k + 4978934) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2489467) = 8957952 * k + 7468402 := by
    unfold C
    simp [show (2985984 * k + 2489467) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7468402) = 4478976 * k + 3734201 := by
    unfold C
    simp [show (8957952 * k + 7468402) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3734201) = 13436928 * k + 11202604 := by
    unfold C
    simp [show (4478976 * k + 3734201) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11202604) = 6718464 * k + 5601302 := by
    unfold C
    simp [show (13436928 * k + 11202604) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5601302) = 3359232 * k + 2800651 := by
    unfold C
    simp [show (6718464 * k + 5601302) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2800651) = 10077696 * k + 8401954 := by
    unfold C
    simp [show (3359232 * k + 2800651) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8401954) = 5038848 * k + 4200977 := by
    unfold C
    simp [show (10077696 * k + 8401954) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4200977) = 15116544 * k + 12602932 := by
    unfold C
    simp [show (5038848 * k + 4200977) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12602932) = 7558272 * k + 6301466 := by
    unfold C
    simp [show (15116544 * k + 12602932) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6301466) = 3779136 * k + 3150733 := by
    unfold C
    simp [show (7558272 * k + 6301466) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3150733) = 11337408 * k + 9452200 := by
    unfold C
    simp [show (3779136 * k + 3150733) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9452200) = 5668704 * k + 4726100 := by
    unfold C
    simp [show (11337408 * k + 9452200) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4726100) = 2834352 * k + 2363050 := by
    unfold C
    simp [show (5668704 * k + 4726100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2363050) = 1417176 * k + 1181525 := by
    unfold C
    simp [show (2834352 * k + 2363050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1181525) = 4251528 * k + 3544576 := by
    unfold C
    simp [show (1417176 * k + 1181525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3544576) = 2125764 * k + 1772288 := by
    unfold C
    simp [show (4251528 * k + 3544576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1772288) = 1062882 * k + 886144 := by
    unfold C
    simp [show (2125764 * k + 1772288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 886144) = 531441 * k + 443072 := by
    unfold C
    simp [show (1062882 * k + 886144) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 874215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 874215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_875007 : ∀ k : Nat,
    iterate (1048576 * k + 875007) 32 = 531441 * k + 443473 ∧
      531441 * k + 443473 < 1048576 * k + 875007 := by
  intro k
  have h1 : C (1048576 * k + 875007) = 3145728 * k + 2625022 := by
    unfold C
    simp [show (1048576 * k + 875007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2625022) = 1572864 * k + 1312511 := by
    unfold C
    simp [show (3145728 * k + 2625022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1312511) = 4718592 * k + 3937534 := by
    unfold C
    simp [show (1572864 * k + 1312511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3937534) = 2359296 * k + 1968767 := by
    unfold C
    simp [show (4718592 * k + 3937534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1968767) = 7077888 * k + 5906302 := by
    unfold C
    simp [show (2359296 * k + 1968767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5906302) = 3538944 * k + 2953151 := by
    unfold C
    simp [show (7077888 * k + 5906302) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2953151) = 10616832 * k + 8859454 := by
    unfold C
    simp [show (3538944 * k + 2953151) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8859454) = 5308416 * k + 4429727 := by
    unfold C
    simp [show (10616832 * k + 8859454) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4429727) = 15925248 * k + 13289182 := by
    unfold C
    simp [show (5308416 * k + 4429727) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13289182) = 7962624 * k + 6644591 := by
    unfold C
    simp [show (15925248 * k + 13289182) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6644591) = 23887872 * k + 19933774 := by
    unfold C
    simp [show (7962624 * k + 6644591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19933774) = 11943936 * k + 9966887 := by
    unfold C
    simp [show (23887872 * k + 19933774) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9966887) = 35831808 * k + 29900662 := by
    unfold C
    simp [show (11943936 * k + 9966887) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29900662) = 17915904 * k + 14950331 := by
    unfold C
    simp [show (35831808 * k + 29900662) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14950331) = 53747712 * k + 44850994 := by
    unfold C
    simp [show (17915904 * k + 14950331) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 44850994) = 26873856 * k + 22425497 := by
    unfold C
    simp [show (53747712 * k + 44850994) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22425497) = 80621568 * k + 67276492 := by
    unfold C
    simp [show (26873856 * k + 22425497) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 67276492) = 40310784 * k + 33638246 := by
    unfold C
    simp [show (80621568 * k + 67276492) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 33638246) = 20155392 * k + 16819123 := by
    unfold C
    simp [show (40310784 * k + 33638246) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16819123) = 60466176 * k + 50457370 := by
    unfold C
    simp [show (20155392 * k + 16819123) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 50457370) = 30233088 * k + 25228685 := by
    unfold C
    simp [show (60466176 * k + 50457370) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 25228685) = 90699264 * k + 75686056 := by
    unfold C
    simp [show (30233088 * k + 25228685) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 75686056) = 45349632 * k + 37843028 := by
    unfold C
    simp [show (90699264 * k + 75686056) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 37843028) = 22674816 * k + 18921514 := by
    unfold C
    simp [show (45349632 * k + 37843028) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 18921514) = 11337408 * k + 9460757 := by
    unfold C
    simp [show (22674816 * k + 18921514) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9460757) = 34012224 * k + 28382272 := by
    unfold C
    simp [show (11337408 * k + 9460757) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28382272) = 17006112 * k + 14191136 := by
    unfold C
    simp [show (34012224 * k + 28382272) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14191136) = 8503056 * k + 7095568 := by
    unfold C
    simp [show (17006112 * k + 14191136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7095568) = 4251528 * k + 3547784 := by
    unfold C
    simp [show (8503056 * k + 7095568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3547784) = 2125764 * k + 1773892 := by
    unfold C
    simp [show (4251528 * k + 3547784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1773892) = 1062882 * k + 886946 := by
    unfold C
    simp [show (2125764 * k + 1773892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 886946) = 531441 * k + 443473 := by
    unfold C
    simp [show (1062882 * k + 886946) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 875007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 875007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard111
