import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard061

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_477247 : ∀ k : Nat,
    iterate (1048576 * k + 477247) 32 = 531441 * k + 241880 ∧
      531441 * k + 241880 < 1048576 * k + 477247 := by
  intro k
  have h1 : C (1048576 * k + 477247) = 3145728 * k + 1431742 := by
    unfold C
    simp [show (1048576 * k + 477247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1431742) = 1572864 * k + 715871 := by
    unfold C
    simp [show (3145728 * k + 1431742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 715871) = 4718592 * k + 2147614 := by
    unfold C
    simp [show (1572864 * k + 715871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2147614) = 2359296 * k + 1073807 := by
    unfold C
    simp [show (4718592 * k + 2147614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1073807) = 7077888 * k + 3221422 := by
    unfold C
    simp [show (2359296 * k + 1073807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3221422) = 3538944 * k + 1610711 := by
    unfold C
    simp [show (7077888 * k + 3221422) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1610711) = 10616832 * k + 4832134 := by
    unfold C
    simp [show (3538944 * k + 1610711) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4832134) = 5308416 * k + 2416067 := by
    unfold C
    simp [show (10616832 * k + 4832134) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2416067) = 15925248 * k + 7248202 := by
    unfold C
    simp [show (5308416 * k + 2416067) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7248202) = 7962624 * k + 3624101 := by
    unfold C
    simp [show (15925248 * k + 7248202) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3624101) = 23887872 * k + 10872304 := by
    unfold C
    simp [show (7962624 * k + 3624101) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10872304) = 11943936 * k + 5436152 := by
    unfold C
    simp [show (23887872 * k + 10872304) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5436152) = 5971968 * k + 2718076 := by
    unfold C
    simp [show (11943936 * k + 5436152) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2718076) = 2985984 * k + 1359038 := by
    unfold C
    simp [show (5971968 * k + 2718076) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1359038) = 1492992 * k + 679519 := by
    unfold C
    simp [show (2985984 * k + 1359038) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 679519) = 4478976 * k + 2038558 := by
    unfold C
    simp [show (1492992 * k + 679519) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2038558) = 2239488 * k + 1019279 := by
    unfold C
    simp [show (4478976 * k + 2038558) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1019279) = 6718464 * k + 3057838 := by
    unfold C
    simp [show (2239488 * k + 1019279) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3057838) = 3359232 * k + 1528919 := by
    unfold C
    simp [show (6718464 * k + 3057838) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1528919) = 10077696 * k + 4586758 := by
    unfold C
    simp [show (3359232 * k + 1528919) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4586758) = 5038848 * k + 2293379 := by
    unfold C
    simp [show (10077696 * k + 4586758) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2293379) = 15116544 * k + 6880138 := by
    unfold C
    simp [show (5038848 * k + 2293379) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6880138) = 7558272 * k + 3440069 := by
    unfold C
    simp [show (15116544 * k + 6880138) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3440069) = 22674816 * k + 10320208 := by
    unfold C
    simp [show (7558272 * k + 3440069) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10320208) = 11337408 * k + 5160104 := by
    unfold C
    simp [show (22674816 * k + 10320208) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5160104) = 5668704 * k + 2580052 := by
    unfold C
    simp [show (11337408 * k + 5160104) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2580052) = 2834352 * k + 1290026 := by
    unfold C
    simp [show (5668704 * k + 2580052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1290026) = 1417176 * k + 645013 := by
    unfold C
    simp [show (2834352 * k + 1290026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 645013) = 4251528 * k + 1935040 := by
    unfold C
    simp [show (1417176 * k + 645013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1935040) = 2125764 * k + 967520 := by
    unfold C
    simp [show (4251528 * k + 1935040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 967520) = 1062882 * k + 483760 := by
    unfold C
    simp [show (2125764 * k + 967520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 483760) = 531441 * k + 241880 := by
    unfold C
    simp [show (1062882 * k + 483760) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 477247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 477247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_477543 : ∀ k : Nat,
    iterate (1048576 * k + 477543) 32 = 531441 * k + 242030 ∧
      531441 * k + 242030 < 1048576 * k + 477543 := by
  intro k
  have h1 : C (1048576 * k + 477543) = 3145728 * k + 1432630 := by
    unfold C
    simp [show (1048576 * k + 477543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1432630) = 1572864 * k + 716315 := by
    unfold C
    simp [show (3145728 * k + 1432630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 716315) = 4718592 * k + 2148946 := by
    unfold C
    simp [show (1572864 * k + 716315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2148946) = 2359296 * k + 1074473 := by
    unfold C
    simp [show (4718592 * k + 2148946) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1074473) = 7077888 * k + 3223420 := by
    unfold C
    simp [show (2359296 * k + 1074473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3223420) = 3538944 * k + 1611710 := by
    unfold C
    simp [show (7077888 * k + 3223420) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1611710) = 1769472 * k + 805855 := by
    unfold C
    simp [show (3538944 * k + 1611710) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 805855) = 5308416 * k + 2417566 := by
    unfold C
    simp [show (1769472 * k + 805855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2417566) = 2654208 * k + 1208783 := by
    unfold C
    simp [show (5308416 * k + 2417566) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1208783) = 7962624 * k + 3626350 := by
    unfold C
    simp [show (2654208 * k + 1208783) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3626350) = 3981312 * k + 1813175 := by
    unfold C
    simp [show (7962624 * k + 3626350) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1813175) = 11943936 * k + 5439526 := by
    unfold C
    simp [show (3981312 * k + 1813175) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5439526) = 5971968 * k + 2719763 := by
    unfold C
    simp [show (11943936 * k + 5439526) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2719763) = 17915904 * k + 8159290 := by
    unfold C
    simp [show (5971968 * k + 2719763) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8159290) = 8957952 * k + 4079645 := by
    unfold C
    simp [show (17915904 * k + 8159290) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4079645) = 26873856 * k + 12238936 := by
    unfold C
    simp [show (8957952 * k + 4079645) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12238936) = 13436928 * k + 6119468 := by
    unfold C
    simp [show (26873856 * k + 12238936) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6119468) = 6718464 * k + 3059734 := by
    unfold C
    simp [show (13436928 * k + 6119468) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3059734) = 3359232 * k + 1529867 := by
    unfold C
    simp [show (6718464 * k + 3059734) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1529867) = 10077696 * k + 4589602 := by
    unfold C
    simp [show (3359232 * k + 1529867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4589602) = 5038848 * k + 2294801 := by
    unfold C
    simp [show (10077696 * k + 4589602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2294801) = 15116544 * k + 6884404 := by
    unfold C
    simp [show (5038848 * k + 2294801) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6884404) = 7558272 * k + 3442202 := by
    unfold C
    simp [show (15116544 * k + 6884404) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3442202) = 3779136 * k + 1721101 := by
    unfold C
    simp [show (7558272 * k + 3442202) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1721101) = 11337408 * k + 5163304 := by
    unfold C
    simp [show (3779136 * k + 1721101) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5163304) = 5668704 * k + 2581652 := by
    unfold C
    simp [show (11337408 * k + 5163304) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2581652) = 2834352 * k + 1290826 := by
    unfold C
    simp [show (5668704 * k + 2581652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1290826) = 1417176 * k + 645413 := by
    unfold C
    simp [show (2834352 * k + 1290826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 645413) = 4251528 * k + 1936240 := by
    unfold C
    simp [show (1417176 * k + 645413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1936240) = 2125764 * k + 968120 := by
    unfold C
    simp [show (4251528 * k + 1936240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 968120) = 1062882 * k + 484060 := by
    unfold C
    simp [show (2125764 * k + 968120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 484060) = 531441 * k + 242030 := by
    unfold C
    simp [show (1062882 * k + 484060) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 477543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 477543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_478535 : ∀ k : Nat,
    iterate (1048576 * k + 478535) 32 = 531441 * k + 242533 ∧
      531441 * k + 242533 < 1048576 * k + 478535 := by
  intro k
  have h1 : C (1048576 * k + 478535) = 3145728 * k + 1435606 := by
    unfold C
    simp [show (1048576 * k + 478535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1435606) = 1572864 * k + 717803 := by
    unfold C
    simp [show (3145728 * k + 1435606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 717803) = 4718592 * k + 2153410 := by
    unfold C
    simp [show (1572864 * k + 717803) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2153410) = 2359296 * k + 1076705 := by
    unfold C
    simp [show (4718592 * k + 2153410) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1076705) = 7077888 * k + 3230116 := by
    unfold C
    simp [show (2359296 * k + 1076705) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3230116) = 3538944 * k + 1615058 := by
    unfold C
    simp [show (7077888 * k + 3230116) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1615058) = 1769472 * k + 807529 := by
    unfold C
    simp [show (3538944 * k + 1615058) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 807529) = 5308416 * k + 2422588 := by
    unfold C
    simp [show (1769472 * k + 807529) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2422588) = 2654208 * k + 1211294 := by
    unfold C
    simp [show (5308416 * k + 2422588) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1211294) = 1327104 * k + 605647 := by
    unfold C
    simp [show (2654208 * k + 1211294) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 605647) = 3981312 * k + 1816942 := by
    unfold C
    simp [show (1327104 * k + 605647) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1816942) = 1990656 * k + 908471 := by
    unfold C
    simp [show (3981312 * k + 1816942) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 908471) = 5971968 * k + 2725414 := by
    unfold C
    simp [show (1990656 * k + 908471) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2725414) = 2985984 * k + 1362707 := by
    unfold C
    simp [show (5971968 * k + 2725414) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1362707) = 8957952 * k + 4088122 := by
    unfold C
    simp [show (2985984 * k + 1362707) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4088122) = 4478976 * k + 2044061 := by
    unfold C
    simp [show (8957952 * k + 4088122) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2044061) = 13436928 * k + 6132184 := by
    unfold C
    simp [show (4478976 * k + 2044061) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6132184) = 6718464 * k + 3066092 := by
    unfold C
    simp [show (13436928 * k + 6132184) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3066092) = 3359232 * k + 1533046 := by
    unfold C
    simp [show (6718464 * k + 3066092) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1533046) = 1679616 * k + 766523 := by
    unfold C
    simp [show (3359232 * k + 1533046) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 766523) = 5038848 * k + 2299570 := by
    unfold C
    simp [show (1679616 * k + 766523) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2299570) = 2519424 * k + 1149785 := by
    unfold C
    simp [show (5038848 * k + 2299570) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1149785) = 7558272 * k + 3449356 := by
    unfold C
    simp [show (2519424 * k + 1149785) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3449356) = 3779136 * k + 1724678 := by
    unfold C
    simp [show (7558272 * k + 3449356) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1724678) = 1889568 * k + 862339 := by
    unfold C
    simp [show (3779136 * k + 1724678) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 862339) = 5668704 * k + 2587018 := by
    unfold C
    simp [show (1889568 * k + 862339) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2587018) = 2834352 * k + 1293509 := by
    unfold C
    simp [show (5668704 * k + 2587018) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1293509) = 8503056 * k + 3880528 := by
    unfold C
    simp [show (2834352 * k + 1293509) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3880528) = 4251528 * k + 1940264 := by
    unfold C
    simp [show (8503056 * k + 3880528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1940264) = 2125764 * k + 970132 := by
    unfold C
    simp [show (4251528 * k + 1940264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 970132) = 1062882 * k + 485066 := by
    unfold C
    simp [show (2125764 * k + 970132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 485066) = 531441 * k + 242533 := by
    unfold C
    simp [show (1062882 * k + 485066) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 478535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 478535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_479423 : ∀ k : Nat,
    iterate (1048576 * k + 479423) 32 = 531441 * k + 242983 ∧
      531441 * k + 242983 < 1048576 * k + 479423 := by
  intro k
  have h1 : C (1048576 * k + 479423) = 3145728 * k + 1438270 := by
    unfold C
    simp [show (1048576 * k + 479423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1438270) = 1572864 * k + 719135 := by
    unfold C
    simp [show (3145728 * k + 1438270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 719135) = 4718592 * k + 2157406 := by
    unfold C
    simp [show (1572864 * k + 719135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2157406) = 2359296 * k + 1078703 := by
    unfold C
    simp [show (4718592 * k + 2157406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1078703) = 7077888 * k + 3236110 := by
    unfold C
    simp [show (2359296 * k + 1078703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3236110) = 3538944 * k + 1618055 := by
    unfold C
    simp [show (7077888 * k + 3236110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1618055) = 10616832 * k + 4854166 := by
    unfold C
    simp [show (3538944 * k + 1618055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4854166) = 5308416 * k + 2427083 := by
    unfold C
    simp [show (10616832 * k + 4854166) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2427083) = 15925248 * k + 7281250 := by
    unfold C
    simp [show (5308416 * k + 2427083) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7281250) = 7962624 * k + 3640625 := by
    unfold C
    simp [show (15925248 * k + 7281250) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3640625) = 23887872 * k + 10921876 := by
    unfold C
    simp [show (7962624 * k + 3640625) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10921876) = 11943936 * k + 5460938 := by
    unfold C
    simp [show (23887872 * k + 10921876) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5460938) = 5971968 * k + 2730469 := by
    unfold C
    simp [show (11943936 * k + 5460938) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2730469) = 17915904 * k + 8191408 := by
    unfold C
    simp [show (5971968 * k + 2730469) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8191408) = 8957952 * k + 4095704 := by
    unfold C
    simp [show (17915904 * k + 8191408) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4095704) = 4478976 * k + 2047852 := by
    unfold C
    simp [show (8957952 * k + 4095704) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2047852) = 2239488 * k + 1023926 := by
    unfold C
    simp [show (4478976 * k + 2047852) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1023926) = 1119744 * k + 511963 := by
    unfold C
    simp [show (2239488 * k + 1023926) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 511963) = 3359232 * k + 1535890 := by
    unfold C
    simp [show (1119744 * k + 511963) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1535890) = 1679616 * k + 767945 := by
    unfold C
    simp [show (3359232 * k + 1535890) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 767945) = 5038848 * k + 2303836 := by
    unfold C
    simp [show (1679616 * k + 767945) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2303836) = 2519424 * k + 1151918 := by
    unfold C
    simp [show (5038848 * k + 2303836) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1151918) = 1259712 * k + 575959 := by
    unfold C
    simp [show (2519424 * k + 1151918) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 575959) = 3779136 * k + 1727878 := by
    unfold C
    simp [show (1259712 * k + 575959) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1727878) = 1889568 * k + 863939 := by
    unfold C
    simp [show (3779136 * k + 1727878) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 863939) = 5668704 * k + 2591818 := by
    unfold C
    simp [show (1889568 * k + 863939) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2591818) = 2834352 * k + 1295909 := by
    unfold C
    simp [show (5668704 * k + 2591818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1295909) = 8503056 * k + 3887728 := by
    unfold C
    simp [show (2834352 * k + 1295909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3887728) = 4251528 * k + 1943864 := by
    unfold C
    simp [show (8503056 * k + 3887728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1943864) = 2125764 * k + 971932 := by
    unfold C
    simp [show (4251528 * k + 1943864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 971932) = 1062882 * k + 485966 := by
    unfold C
    simp [show (2125764 * k + 971932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 485966) = 531441 * k + 242983 := by
    unfold C
    simp [show (1062882 * k + 485966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 479423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 479423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_479471 : ∀ k : Nat,
    iterate (1048576 * k + 479471) 32 = 531441 * k + 243007 ∧
      531441 * k + 243007 < 1048576 * k + 479471 := by
  intro k
  have h1 : C (1048576 * k + 479471) = 3145728 * k + 1438414 := by
    unfold C
    simp [show (1048576 * k + 479471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1438414) = 1572864 * k + 719207 := by
    unfold C
    simp [show (3145728 * k + 1438414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 719207) = 4718592 * k + 2157622 := by
    unfold C
    simp [show (1572864 * k + 719207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2157622) = 2359296 * k + 1078811 := by
    unfold C
    simp [show (4718592 * k + 2157622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1078811) = 7077888 * k + 3236434 := by
    unfold C
    simp [show (2359296 * k + 1078811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3236434) = 3538944 * k + 1618217 := by
    unfold C
    simp [show (7077888 * k + 3236434) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1618217) = 10616832 * k + 4854652 := by
    unfold C
    simp [show (3538944 * k + 1618217) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4854652) = 5308416 * k + 2427326 := by
    unfold C
    simp [show (10616832 * k + 4854652) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2427326) = 2654208 * k + 1213663 := by
    unfold C
    simp [show (5308416 * k + 2427326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1213663) = 7962624 * k + 3640990 := by
    unfold C
    simp [show (2654208 * k + 1213663) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3640990) = 3981312 * k + 1820495 := by
    unfold C
    simp [show (7962624 * k + 3640990) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1820495) = 11943936 * k + 5461486 := by
    unfold C
    simp [show (3981312 * k + 1820495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5461486) = 5971968 * k + 2730743 := by
    unfold C
    simp [show (11943936 * k + 5461486) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2730743) = 17915904 * k + 8192230 := by
    unfold C
    simp [show (5971968 * k + 2730743) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8192230) = 8957952 * k + 4096115 := by
    unfold C
    simp [show (17915904 * k + 8192230) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4096115) = 26873856 * k + 12288346 := by
    unfold C
    simp [show (8957952 * k + 4096115) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12288346) = 13436928 * k + 6144173 := by
    unfold C
    simp [show (26873856 * k + 12288346) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6144173) = 40310784 * k + 18432520 := by
    unfold C
    simp [show (13436928 * k + 6144173) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 18432520) = 20155392 * k + 9216260 := by
    unfold C
    simp [show (40310784 * k + 18432520) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9216260) = 10077696 * k + 4608130 := by
    unfold C
    simp [show (20155392 * k + 9216260) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4608130) = 5038848 * k + 2304065 := by
    unfold C
    simp [show (10077696 * k + 4608130) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2304065) = 15116544 * k + 6912196 := by
    unfold C
    simp [show (5038848 * k + 2304065) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6912196) = 7558272 * k + 3456098 := by
    unfold C
    simp [show (15116544 * k + 6912196) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3456098) = 3779136 * k + 1728049 := by
    unfold C
    simp [show (7558272 * k + 3456098) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1728049) = 11337408 * k + 5184148 := by
    unfold C
    simp [show (3779136 * k + 1728049) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5184148) = 5668704 * k + 2592074 := by
    unfold C
    simp [show (11337408 * k + 5184148) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2592074) = 2834352 * k + 1296037 := by
    unfold C
    simp [show (5668704 * k + 2592074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1296037) = 8503056 * k + 3888112 := by
    unfold C
    simp [show (2834352 * k + 1296037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3888112) = 4251528 * k + 1944056 := by
    unfold C
    simp [show (8503056 * k + 3888112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1944056) = 2125764 * k + 972028 := by
    unfold C
    simp [show (4251528 * k + 1944056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 972028) = 1062882 * k + 486014 := by
    unfold C
    simp [show (2125764 * k + 972028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 486014) = 531441 * k + 243007 := by
    unfold C
    simp [show (1062882 * k + 486014) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 479471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 479471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_479899 : ∀ k : Nat,
    iterate (1048576 * k + 479899) 32 = 531441 * k + 243224 ∧
      531441 * k + 243224 < 1048576 * k + 479899 := by
  intro k
  have h1 : C (1048576 * k + 479899) = 3145728 * k + 1439698 := by
    unfold C
    simp [show (1048576 * k + 479899) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1439698) = 1572864 * k + 719849 := by
    unfold C
    simp [show (3145728 * k + 1439698) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 719849) = 4718592 * k + 2159548 := by
    unfold C
    simp [show (1572864 * k + 719849) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2159548) = 2359296 * k + 1079774 := by
    unfold C
    simp [show (4718592 * k + 2159548) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1079774) = 1179648 * k + 539887 := by
    unfold C
    simp [show (2359296 * k + 1079774) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 539887) = 3538944 * k + 1619662 := by
    unfold C
    simp [show (1179648 * k + 539887) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1619662) = 1769472 * k + 809831 := by
    unfold C
    simp [show (3538944 * k + 1619662) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 809831) = 5308416 * k + 2429494 := by
    unfold C
    simp [show (1769472 * k + 809831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2429494) = 2654208 * k + 1214747 := by
    unfold C
    simp [show (5308416 * k + 2429494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1214747) = 7962624 * k + 3644242 := by
    unfold C
    simp [show (2654208 * k + 1214747) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3644242) = 3981312 * k + 1822121 := by
    unfold C
    simp [show (7962624 * k + 3644242) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1822121) = 11943936 * k + 5466364 := by
    unfold C
    simp [show (3981312 * k + 1822121) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5466364) = 5971968 * k + 2733182 := by
    unfold C
    simp [show (11943936 * k + 5466364) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2733182) = 2985984 * k + 1366591 := by
    unfold C
    simp [show (5971968 * k + 2733182) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1366591) = 8957952 * k + 4099774 := by
    unfold C
    simp [show (2985984 * k + 1366591) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4099774) = 4478976 * k + 2049887 := by
    unfold C
    simp [show (8957952 * k + 4099774) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2049887) = 13436928 * k + 6149662 := by
    unfold C
    simp [show (4478976 * k + 2049887) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6149662) = 6718464 * k + 3074831 := by
    unfold C
    simp [show (13436928 * k + 6149662) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3074831) = 20155392 * k + 9224494 := by
    unfold C
    simp [show (6718464 * k + 3074831) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9224494) = 10077696 * k + 4612247 := by
    unfold C
    simp [show (20155392 * k + 9224494) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4612247) = 30233088 * k + 13836742 := by
    unfold C
    simp [show (10077696 * k + 4612247) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13836742) = 15116544 * k + 6918371 := by
    unfold C
    simp [show (30233088 * k + 13836742) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6918371) = 45349632 * k + 20755114 := by
    unfold C
    simp [show (15116544 * k + 6918371) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 20755114) = 22674816 * k + 10377557 := by
    unfold C
    simp [show (45349632 * k + 20755114) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10377557) = 68024448 * k + 31132672 := by
    unfold C
    simp [show (22674816 * k + 10377557) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 31132672) = 34012224 * k + 15566336 := by
    unfold C
    simp [show (68024448 * k + 31132672) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 15566336) = 17006112 * k + 7783168 := by
    unfold C
    simp [show (34012224 * k + 15566336) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7783168) = 8503056 * k + 3891584 := by
    unfold C
    simp [show (17006112 * k + 7783168) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3891584) = 4251528 * k + 1945792 := by
    unfold C
    simp [show (8503056 * k + 3891584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1945792) = 2125764 * k + 972896 := by
    unfold C
    simp [show (4251528 * k + 1945792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 972896) = 1062882 * k + 486448 := by
    unfold C
    simp [show (2125764 * k + 972896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 486448) = 531441 * k + 243224 := by
    unfold C
    simp [show (1062882 * k + 486448) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 479899) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 479899)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_479903 : ∀ k : Nat,
    iterate (1048576 * k + 479903) 32 = 531441 * k + 243226 ∧
      531441 * k + 243226 < 1048576 * k + 479903 := by
  intro k
  have h1 : C (1048576 * k + 479903) = 3145728 * k + 1439710 := by
    unfold C
    simp [show (1048576 * k + 479903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1439710) = 1572864 * k + 719855 := by
    unfold C
    simp [show (3145728 * k + 1439710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 719855) = 4718592 * k + 2159566 := by
    unfold C
    simp [show (1572864 * k + 719855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2159566) = 2359296 * k + 1079783 := by
    unfold C
    simp [show (4718592 * k + 2159566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1079783) = 7077888 * k + 3239350 := by
    unfold C
    simp [show (2359296 * k + 1079783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3239350) = 3538944 * k + 1619675 := by
    unfold C
    simp [show (7077888 * k + 3239350) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1619675) = 10616832 * k + 4859026 := by
    unfold C
    simp [show (3538944 * k + 1619675) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4859026) = 5308416 * k + 2429513 := by
    unfold C
    simp [show (10616832 * k + 4859026) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2429513) = 15925248 * k + 7288540 := by
    unfold C
    simp [show (5308416 * k + 2429513) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7288540) = 7962624 * k + 3644270 := by
    unfold C
    simp [show (15925248 * k + 7288540) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3644270) = 3981312 * k + 1822135 := by
    unfold C
    simp [show (7962624 * k + 3644270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1822135) = 11943936 * k + 5466406 := by
    unfold C
    simp [show (3981312 * k + 1822135) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5466406) = 5971968 * k + 2733203 := by
    unfold C
    simp [show (11943936 * k + 5466406) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2733203) = 17915904 * k + 8199610 := by
    unfold C
    simp [show (5971968 * k + 2733203) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8199610) = 8957952 * k + 4099805 := by
    unfold C
    simp [show (17915904 * k + 8199610) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4099805) = 26873856 * k + 12299416 := by
    unfold C
    simp [show (8957952 * k + 4099805) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12299416) = 13436928 * k + 6149708 := by
    unfold C
    simp [show (26873856 * k + 12299416) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6149708) = 6718464 * k + 3074854 := by
    unfold C
    simp [show (13436928 * k + 6149708) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3074854) = 3359232 * k + 1537427 := by
    unfold C
    simp [show (6718464 * k + 3074854) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1537427) = 10077696 * k + 4612282 := by
    unfold C
    simp [show (3359232 * k + 1537427) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4612282) = 5038848 * k + 2306141 := by
    unfold C
    simp [show (10077696 * k + 4612282) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2306141) = 15116544 * k + 6918424 := by
    unfold C
    simp [show (5038848 * k + 2306141) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6918424) = 7558272 * k + 3459212 := by
    unfold C
    simp [show (15116544 * k + 6918424) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3459212) = 3779136 * k + 1729606 := by
    unfold C
    simp [show (7558272 * k + 3459212) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1729606) = 1889568 * k + 864803 := by
    unfold C
    simp [show (3779136 * k + 1729606) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 864803) = 5668704 * k + 2594410 := by
    unfold C
    simp [show (1889568 * k + 864803) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2594410) = 2834352 * k + 1297205 := by
    unfold C
    simp [show (5668704 * k + 2594410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1297205) = 8503056 * k + 3891616 := by
    unfold C
    simp [show (2834352 * k + 1297205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3891616) = 4251528 * k + 1945808 := by
    unfold C
    simp [show (8503056 * k + 3891616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1945808) = 2125764 * k + 972904 := by
    unfold C
    simp [show (4251528 * k + 1945808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 972904) = 1062882 * k + 486452 := by
    unfold C
    simp [show (2125764 * k + 972904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 486452) = 531441 * k + 243226 := by
    unfold C
    simp [show (1062882 * k + 486452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 479903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 479903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_480027 : ∀ k : Nat,
    iterate (1048576 * k + 480027) 32 = 531441 * k + 243289 ∧
      531441 * k + 243289 < 1048576 * k + 480027 := by
  intro k
  have h1 : C (1048576 * k + 480027) = 3145728 * k + 1440082 := by
    unfold C
    simp [show (1048576 * k + 480027) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1440082) = 1572864 * k + 720041 := by
    unfold C
    simp [show (3145728 * k + 1440082) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 720041) = 4718592 * k + 2160124 := by
    unfold C
    simp [show (1572864 * k + 720041) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2160124) = 2359296 * k + 1080062 := by
    unfold C
    simp [show (4718592 * k + 2160124) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1080062) = 1179648 * k + 540031 := by
    unfold C
    simp [show (2359296 * k + 1080062) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 540031) = 3538944 * k + 1620094 := by
    unfold C
    simp [show (1179648 * k + 540031) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1620094) = 1769472 * k + 810047 := by
    unfold C
    simp [show (3538944 * k + 1620094) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 810047) = 5308416 * k + 2430142 := by
    unfold C
    simp [show (1769472 * k + 810047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2430142) = 2654208 * k + 1215071 := by
    unfold C
    simp [show (5308416 * k + 2430142) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1215071) = 7962624 * k + 3645214 := by
    unfold C
    simp [show (2654208 * k + 1215071) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3645214) = 3981312 * k + 1822607 := by
    unfold C
    simp [show (7962624 * k + 3645214) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1822607) = 11943936 * k + 5467822 := by
    unfold C
    simp [show (3981312 * k + 1822607) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5467822) = 5971968 * k + 2733911 := by
    unfold C
    simp [show (11943936 * k + 5467822) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2733911) = 17915904 * k + 8201734 := by
    unfold C
    simp [show (5971968 * k + 2733911) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8201734) = 8957952 * k + 4100867 := by
    unfold C
    simp [show (17915904 * k + 8201734) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4100867) = 26873856 * k + 12302602 := by
    unfold C
    simp [show (8957952 * k + 4100867) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12302602) = 13436928 * k + 6151301 := by
    unfold C
    simp [show (26873856 * k + 12302602) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6151301) = 40310784 * k + 18453904 := by
    unfold C
    simp [show (13436928 * k + 6151301) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 18453904) = 20155392 * k + 9226952 := by
    unfold C
    simp [show (40310784 * k + 18453904) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9226952) = 10077696 * k + 4613476 := by
    unfold C
    simp [show (20155392 * k + 9226952) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4613476) = 5038848 * k + 2306738 := by
    unfold C
    simp [show (10077696 * k + 4613476) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2306738) = 2519424 * k + 1153369 := by
    unfold C
    simp [show (5038848 * k + 2306738) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1153369) = 7558272 * k + 3460108 := by
    unfold C
    simp [show (2519424 * k + 1153369) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3460108) = 3779136 * k + 1730054 := by
    unfold C
    simp [show (7558272 * k + 3460108) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1730054) = 1889568 * k + 865027 := by
    unfold C
    simp [show (3779136 * k + 1730054) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 865027) = 5668704 * k + 2595082 := by
    unfold C
    simp [show (1889568 * k + 865027) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2595082) = 2834352 * k + 1297541 := by
    unfold C
    simp [show (5668704 * k + 2595082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1297541) = 8503056 * k + 3892624 := by
    unfold C
    simp [show (2834352 * k + 1297541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3892624) = 4251528 * k + 1946312 := by
    unfold C
    simp [show (8503056 * k + 3892624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1946312) = 2125764 * k + 973156 := by
    unfold C
    simp [show (4251528 * k + 1946312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 973156) = 1062882 * k + 486578 := by
    unfold C
    simp [show (2125764 * k + 973156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 486578) = 531441 * k + 243289 := by
    unfold C
    simp [show (1062882 * k + 486578) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 480027) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 480027)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_480639 : ∀ k : Nat,
    iterate (1048576 * k + 480639) 32 = 531441 * k + 243599 ∧
      531441 * k + 243599 < 1048576 * k + 480639 := by
  intro k
  have h1 : C (1048576 * k + 480639) = 3145728 * k + 1441918 := by
    unfold C
    simp [show (1048576 * k + 480639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1441918) = 1572864 * k + 720959 := by
    unfold C
    simp [show (3145728 * k + 1441918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 720959) = 4718592 * k + 2162878 := by
    unfold C
    simp [show (1572864 * k + 720959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2162878) = 2359296 * k + 1081439 := by
    unfold C
    simp [show (4718592 * k + 2162878) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1081439) = 7077888 * k + 3244318 := by
    unfold C
    simp [show (2359296 * k + 1081439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3244318) = 3538944 * k + 1622159 := by
    unfold C
    simp [show (7077888 * k + 3244318) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1622159) = 10616832 * k + 4866478 := by
    unfold C
    simp [show (3538944 * k + 1622159) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4866478) = 5308416 * k + 2433239 := by
    unfold C
    simp [show (10616832 * k + 4866478) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2433239) = 15925248 * k + 7299718 := by
    unfold C
    simp [show (5308416 * k + 2433239) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7299718) = 7962624 * k + 3649859 := by
    unfold C
    simp [show (15925248 * k + 7299718) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3649859) = 23887872 * k + 10949578 := by
    unfold C
    simp [show (7962624 * k + 3649859) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10949578) = 11943936 * k + 5474789 := by
    unfold C
    simp [show (23887872 * k + 10949578) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5474789) = 35831808 * k + 16424368 := by
    unfold C
    simp [show (11943936 * k + 5474789) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16424368) = 17915904 * k + 8212184 := by
    unfold C
    simp [show (35831808 * k + 16424368) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8212184) = 8957952 * k + 4106092 := by
    unfold C
    simp [show (17915904 * k + 8212184) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4106092) = 4478976 * k + 2053046 := by
    unfold C
    simp [show (8957952 * k + 4106092) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2053046) = 2239488 * k + 1026523 := by
    unfold C
    simp [show (4478976 * k + 2053046) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1026523) = 6718464 * k + 3079570 := by
    unfold C
    simp [show (2239488 * k + 1026523) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3079570) = 3359232 * k + 1539785 := by
    unfold C
    simp [show (6718464 * k + 3079570) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1539785) = 10077696 * k + 4619356 := by
    unfold C
    simp [show (3359232 * k + 1539785) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4619356) = 5038848 * k + 2309678 := by
    unfold C
    simp [show (10077696 * k + 4619356) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2309678) = 2519424 * k + 1154839 := by
    unfold C
    simp [show (5038848 * k + 2309678) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1154839) = 7558272 * k + 3464518 := by
    unfold C
    simp [show (2519424 * k + 1154839) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3464518) = 3779136 * k + 1732259 := by
    unfold C
    simp [show (7558272 * k + 3464518) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1732259) = 11337408 * k + 5196778 := by
    unfold C
    simp [show (3779136 * k + 1732259) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5196778) = 5668704 * k + 2598389 := by
    unfold C
    simp [show (11337408 * k + 5196778) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2598389) = 17006112 * k + 7795168 := by
    unfold C
    simp [show (5668704 * k + 2598389) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7795168) = 8503056 * k + 3897584 := by
    unfold C
    simp [show (17006112 * k + 7795168) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3897584) = 4251528 * k + 1948792 := by
    unfold C
    simp [show (8503056 * k + 3897584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1948792) = 2125764 * k + 974396 := by
    unfold C
    simp [show (4251528 * k + 1948792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 974396) = 1062882 * k + 487198 := by
    unfold C
    simp [show (2125764 * k + 974396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 487198) = 531441 * k + 243599 := by
    unfold C
    simp [show (1062882 * k + 487198) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 480639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 480639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_481343 : ∀ k : Nat,
    iterate (1048576 * k + 481343) 32 = 531441 * k + 243956 ∧
      531441 * k + 243956 < 1048576 * k + 481343 := by
  intro k
  have h1 : C (1048576 * k + 481343) = 3145728 * k + 1444030 := by
    unfold C
    simp [show (1048576 * k + 481343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1444030) = 1572864 * k + 722015 := by
    unfold C
    simp [show (3145728 * k + 1444030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 722015) = 4718592 * k + 2166046 := by
    unfold C
    simp [show (1572864 * k + 722015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2166046) = 2359296 * k + 1083023 := by
    unfold C
    simp [show (4718592 * k + 2166046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1083023) = 7077888 * k + 3249070 := by
    unfold C
    simp [show (2359296 * k + 1083023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3249070) = 3538944 * k + 1624535 := by
    unfold C
    simp [show (7077888 * k + 3249070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1624535) = 10616832 * k + 4873606 := by
    unfold C
    simp [show (3538944 * k + 1624535) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4873606) = 5308416 * k + 2436803 := by
    unfold C
    simp [show (10616832 * k + 4873606) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2436803) = 15925248 * k + 7310410 := by
    unfold C
    simp [show (5308416 * k + 2436803) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7310410) = 7962624 * k + 3655205 := by
    unfold C
    simp [show (15925248 * k + 7310410) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3655205) = 23887872 * k + 10965616 := by
    unfold C
    simp [show (7962624 * k + 3655205) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10965616) = 11943936 * k + 5482808 := by
    unfold C
    simp [show (23887872 * k + 10965616) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5482808) = 5971968 * k + 2741404 := by
    unfold C
    simp [show (11943936 * k + 5482808) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2741404) = 2985984 * k + 1370702 := by
    unfold C
    simp [show (5971968 * k + 2741404) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1370702) = 1492992 * k + 685351 := by
    unfold C
    simp [show (2985984 * k + 1370702) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 685351) = 4478976 * k + 2056054 := by
    unfold C
    simp [show (1492992 * k + 685351) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2056054) = 2239488 * k + 1028027 := by
    unfold C
    simp [show (4478976 * k + 2056054) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1028027) = 6718464 * k + 3084082 := by
    unfold C
    simp [show (2239488 * k + 1028027) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3084082) = 3359232 * k + 1542041 := by
    unfold C
    simp [show (6718464 * k + 3084082) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1542041) = 10077696 * k + 4626124 := by
    unfold C
    simp [show (3359232 * k + 1542041) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4626124) = 5038848 * k + 2313062 := by
    unfold C
    simp [show (10077696 * k + 4626124) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2313062) = 2519424 * k + 1156531 := by
    unfold C
    simp [show (5038848 * k + 2313062) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1156531) = 7558272 * k + 3469594 := by
    unfold C
    simp [show (2519424 * k + 1156531) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3469594) = 3779136 * k + 1734797 := by
    unfold C
    simp [show (7558272 * k + 3469594) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1734797) = 11337408 * k + 5204392 := by
    unfold C
    simp [show (3779136 * k + 1734797) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5204392) = 5668704 * k + 2602196 := by
    unfold C
    simp [show (11337408 * k + 5204392) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2602196) = 2834352 * k + 1301098 := by
    unfold C
    simp [show (5668704 * k + 2602196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1301098) = 1417176 * k + 650549 := by
    unfold C
    simp [show (2834352 * k + 1301098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 650549) = 4251528 * k + 1951648 := by
    unfold C
    simp [show (1417176 * k + 650549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1951648) = 2125764 * k + 975824 := by
    unfold C
    simp [show (4251528 * k + 1951648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 975824) = 1062882 * k + 487912 := by
    unfold C
    simp [show (2125764 * k + 975824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 487912) = 531441 * k + 243956 := by
    unfold C
    simp [show (1062882 * k + 487912) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 481343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 481343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_481519 : ∀ k : Nat,
    iterate (1048576 * k + 481519) 32 = 531441 * k + 244045 ∧
      531441 * k + 244045 < 1048576 * k + 481519 := by
  intro k
  have h1 : C (1048576 * k + 481519) = 3145728 * k + 1444558 := by
    unfold C
    simp [show (1048576 * k + 481519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1444558) = 1572864 * k + 722279 := by
    unfold C
    simp [show (3145728 * k + 1444558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 722279) = 4718592 * k + 2166838 := by
    unfold C
    simp [show (1572864 * k + 722279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2166838) = 2359296 * k + 1083419 := by
    unfold C
    simp [show (4718592 * k + 2166838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1083419) = 7077888 * k + 3250258 := by
    unfold C
    simp [show (2359296 * k + 1083419) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3250258) = 3538944 * k + 1625129 := by
    unfold C
    simp [show (7077888 * k + 3250258) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1625129) = 10616832 * k + 4875388 := by
    unfold C
    simp [show (3538944 * k + 1625129) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4875388) = 5308416 * k + 2437694 := by
    unfold C
    simp [show (10616832 * k + 4875388) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2437694) = 2654208 * k + 1218847 := by
    unfold C
    simp [show (5308416 * k + 2437694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1218847) = 7962624 * k + 3656542 := by
    unfold C
    simp [show (2654208 * k + 1218847) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3656542) = 3981312 * k + 1828271 := by
    unfold C
    simp [show (7962624 * k + 3656542) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1828271) = 11943936 * k + 5484814 := by
    unfold C
    simp [show (3981312 * k + 1828271) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5484814) = 5971968 * k + 2742407 := by
    unfold C
    simp [show (11943936 * k + 5484814) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2742407) = 17915904 * k + 8227222 := by
    unfold C
    simp [show (5971968 * k + 2742407) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8227222) = 8957952 * k + 4113611 := by
    unfold C
    simp [show (17915904 * k + 8227222) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4113611) = 26873856 * k + 12340834 := by
    unfold C
    simp [show (8957952 * k + 4113611) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12340834) = 13436928 * k + 6170417 := by
    unfold C
    simp [show (26873856 * k + 12340834) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6170417) = 40310784 * k + 18511252 := by
    unfold C
    simp [show (13436928 * k + 6170417) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 18511252) = 20155392 * k + 9255626 := by
    unfold C
    simp [show (40310784 * k + 18511252) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9255626) = 10077696 * k + 4627813 := by
    unfold C
    simp [show (20155392 * k + 9255626) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4627813) = 30233088 * k + 13883440 := by
    unfold C
    simp [show (10077696 * k + 4627813) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13883440) = 15116544 * k + 6941720 := by
    unfold C
    simp [show (30233088 * k + 13883440) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6941720) = 7558272 * k + 3470860 := by
    unfold C
    simp [show (15116544 * k + 6941720) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3470860) = 3779136 * k + 1735430 := by
    unfold C
    simp [show (7558272 * k + 3470860) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1735430) = 1889568 * k + 867715 := by
    unfold C
    simp [show (3779136 * k + 1735430) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 867715) = 5668704 * k + 2603146 := by
    unfold C
    simp [show (1889568 * k + 867715) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2603146) = 2834352 * k + 1301573 := by
    unfold C
    simp [show (5668704 * k + 2603146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1301573) = 8503056 * k + 3904720 := by
    unfold C
    simp [show (2834352 * k + 1301573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3904720) = 4251528 * k + 1952360 := by
    unfold C
    simp [show (8503056 * k + 3904720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1952360) = 2125764 * k + 976180 := by
    unfold C
    simp [show (4251528 * k + 1952360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 976180) = 1062882 * k + 488090 := by
    unfold C
    simp [show (2125764 * k + 976180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 488090) = 531441 * k + 244045 := by
    unfold C
    simp [show (1062882 * k + 488090) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 481519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 481519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_482299 : ∀ k : Nat,
    iterate (1048576 * k + 482299) 32 = 531441 * k + 244441 ∧
      531441 * k + 244441 < 1048576 * k + 482299 := by
  intro k
  have h1 : C (1048576 * k + 482299) = 3145728 * k + 1446898 := by
    unfold C
    simp [show (1048576 * k + 482299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1446898) = 1572864 * k + 723449 := by
    unfold C
    simp [show (3145728 * k + 1446898) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 723449) = 4718592 * k + 2170348 := by
    unfold C
    simp [show (1572864 * k + 723449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2170348) = 2359296 * k + 1085174 := by
    unfold C
    simp [show (4718592 * k + 2170348) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1085174) = 1179648 * k + 542587 := by
    unfold C
    simp [show (2359296 * k + 1085174) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 542587) = 3538944 * k + 1627762 := by
    unfold C
    simp [show (1179648 * k + 542587) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1627762) = 1769472 * k + 813881 := by
    unfold C
    simp [show (3538944 * k + 1627762) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 813881) = 5308416 * k + 2441644 := by
    unfold C
    simp [show (1769472 * k + 813881) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2441644) = 2654208 * k + 1220822 := by
    unfold C
    simp [show (5308416 * k + 2441644) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1220822) = 1327104 * k + 610411 := by
    unfold C
    simp [show (2654208 * k + 1220822) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 610411) = 3981312 * k + 1831234 := by
    unfold C
    simp [show (1327104 * k + 610411) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1831234) = 1990656 * k + 915617 := by
    unfold C
    simp [show (3981312 * k + 1831234) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 915617) = 5971968 * k + 2746852 := by
    unfold C
    simp [show (1990656 * k + 915617) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2746852) = 2985984 * k + 1373426 := by
    unfold C
    simp [show (5971968 * k + 2746852) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1373426) = 1492992 * k + 686713 := by
    unfold C
    simp [show (2985984 * k + 1373426) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 686713) = 4478976 * k + 2060140 := by
    unfold C
    simp [show (1492992 * k + 686713) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2060140) = 2239488 * k + 1030070 := by
    unfold C
    simp [show (4478976 * k + 2060140) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1030070) = 1119744 * k + 515035 := by
    unfold C
    simp [show (2239488 * k + 1030070) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 515035) = 3359232 * k + 1545106 := by
    unfold C
    simp [show (1119744 * k + 515035) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1545106) = 1679616 * k + 772553 := by
    unfold C
    simp [show (3359232 * k + 1545106) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 772553) = 5038848 * k + 2317660 := by
    unfold C
    simp [show (1679616 * k + 772553) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2317660) = 2519424 * k + 1158830 := by
    unfold C
    simp [show (5038848 * k + 2317660) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1158830) = 1259712 * k + 579415 := by
    unfold C
    simp [show (2519424 * k + 1158830) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 579415) = 3779136 * k + 1738246 := by
    unfold C
    simp [show (1259712 * k + 579415) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1738246) = 1889568 * k + 869123 := by
    unfold C
    simp [show (3779136 * k + 1738246) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 869123) = 5668704 * k + 2607370 := by
    unfold C
    simp [show (1889568 * k + 869123) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2607370) = 2834352 * k + 1303685 := by
    unfold C
    simp [show (5668704 * k + 2607370) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1303685) = 8503056 * k + 3911056 := by
    unfold C
    simp [show (2834352 * k + 1303685) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3911056) = 4251528 * k + 1955528 := by
    unfold C
    simp [show (8503056 * k + 3911056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1955528) = 2125764 * k + 977764 := by
    unfold C
    simp [show (4251528 * k + 1955528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 977764) = 1062882 * k + 488882 := by
    unfold C
    simp [show (2125764 * k + 977764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 488882) = 531441 * k + 244441 := by
    unfold C
    simp [show (1062882 * k + 488882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 482299) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 482299)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_483551 : ∀ k : Nat,
    iterate (1048576 * k + 483551) 32 = 531441 * k + 245075 ∧
      531441 * k + 245075 < 1048576 * k + 483551 := by
  intro k
  have h1 : C (1048576 * k + 483551) = 3145728 * k + 1450654 := by
    unfold C
    simp [show (1048576 * k + 483551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1450654) = 1572864 * k + 725327 := by
    unfold C
    simp [show (3145728 * k + 1450654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 725327) = 4718592 * k + 2175982 := by
    unfold C
    simp [show (1572864 * k + 725327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2175982) = 2359296 * k + 1087991 := by
    unfold C
    simp [show (4718592 * k + 2175982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1087991) = 7077888 * k + 3263974 := by
    unfold C
    simp [show (2359296 * k + 1087991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3263974) = 3538944 * k + 1631987 := by
    unfold C
    simp [show (7077888 * k + 3263974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1631987) = 10616832 * k + 4895962 := by
    unfold C
    simp [show (3538944 * k + 1631987) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4895962) = 5308416 * k + 2447981 := by
    unfold C
    simp [show (10616832 * k + 4895962) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2447981) = 15925248 * k + 7343944 := by
    unfold C
    simp [show (5308416 * k + 2447981) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7343944) = 7962624 * k + 3671972 := by
    unfold C
    simp [show (15925248 * k + 7343944) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3671972) = 3981312 * k + 1835986 := by
    unfold C
    simp [show (7962624 * k + 3671972) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1835986) = 1990656 * k + 917993 := by
    unfold C
    simp [show (3981312 * k + 1835986) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 917993) = 5971968 * k + 2753980 := by
    unfold C
    simp [show (1990656 * k + 917993) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2753980) = 2985984 * k + 1376990 := by
    unfold C
    simp [show (5971968 * k + 2753980) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1376990) = 1492992 * k + 688495 := by
    unfold C
    simp [show (2985984 * k + 1376990) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 688495) = 4478976 * k + 2065486 := by
    unfold C
    simp [show (1492992 * k + 688495) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2065486) = 2239488 * k + 1032743 := by
    unfold C
    simp [show (4478976 * k + 2065486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1032743) = 6718464 * k + 3098230 := by
    unfold C
    simp [show (2239488 * k + 1032743) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3098230) = 3359232 * k + 1549115 := by
    unfold C
    simp [show (6718464 * k + 3098230) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1549115) = 10077696 * k + 4647346 := by
    unfold C
    simp [show (3359232 * k + 1549115) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4647346) = 5038848 * k + 2323673 := by
    unfold C
    simp [show (10077696 * k + 4647346) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2323673) = 15116544 * k + 6971020 := by
    unfold C
    simp [show (5038848 * k + 2323673) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6971020) = 7558272 * k + 3485510 := by
    unfold C
    simp [show (15116544 * k + 6971020) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3485510) = 3779136 * k + 1742755 := by
    unfold C
    simp [show (7558272 * k + 3485510) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1742755) = 11337408 * k + 5228266 := by
    unfold C
    simp [show (3779136 * k + 1742755) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5228266) = 5668704 * k + 2614133 := by
    unfold C
    simp [show (11337408 * k + 5228266) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2614133) = 17006112 * k + 7842400 := by
    unfold C
    simp [show (5668704 * k + 2614133) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7842400) = 8503056 * k + 3921200 := by
    unfold C
    simp [show (17006112 * k + 7842400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3921200) = 4251528 * k + 1960600 := by
    unfold C
    simp [show (8503056 * k + 3921200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1960600) = 2125764 * k + 980300 := by
    unfold C
    simp [show (4251528 * k + 1960600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 980300) = 1062882 * k + 490150 := by
    unfold C
    simp [show (2125764 * k + 980300) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 490150) = 531441 * k + 245075 := by
    unfold C
    simp [show (1062882 * k + 490150) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 483551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 483551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_483687 : ∀ k : Nat,
    iterate (1048576 * k + 483687) 32 = 531441 * k + 245144 ∧
      531441 * k + 245144 < 1048576 * k + 483687 := by
  intro k
  have h1 : C (1048576 * k + 483687) = 3145728 * k + 1451062 := by
    unfold C
    simp [show (1048576 * k + 483687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1451062) = 1572864 * k + 725531 := by
    unfold C
    simp [show (3145728 * k + 1451062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 725531) = 4718592 * k + 2176594 := by
    unfold C
    simp [show (1572864 * k + 725531) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2176594) = 2359296 * k + 1088297 := by
    unfold C
    simp [show (4718592 * k + 2176594) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1088297) = 7077888 * k + 3264892 := by
    unfold C
    simp [show (2359296 * k + 1088297) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3264892) = 3538944 * k + 1632446 := by
    unfold C
    simp [show (7077888 * k + 3264892) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1632446) = 1769472 * k + 816223 := by
    unfold C
    simp [show (3538944 * k + 1632446) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 816223) = 5308416 * k + 2448670 := by
    unfold C
    simp [show (1769472 * k + 816223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2448670) = 2654208 * k + 1224335 := by
    unfold C
    simp [show (5308416 * k + 2448670) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1224335) = 7962624 * k + 3673006 := by
    unfold C
    simp [show (2654208 * k + 1224335) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3673006) = 3981312 * k + 1836503 := by
    unfold C
    simp [show (7962624 * k + 3673006) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1836503) = 11943936 * k + 5509510 := by
    unfold C
    simp [show (3981312 * k + 1836503) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5509510) = 5971968 * k + 2754755 := by
    unfold C
    simp [show (11943936 * k + 5509510) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2754755) = 17915904 * k + 8264266 := by
    unfold C
    simp [show (5971968 * k + 2754755) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8264266) = 8957952 * k + 4132133 := by
    unfold C
    simp [show (17915904 * k + 8264266) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4132133) = 26873856 * k + 12396400 := by
    unfold C
    simp [show (8957952 * k + 4132133) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12396400) = 13436928 * k + 6198200 := by
    unfold C
    simp [show (26873856 * k + 12396400) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6198200) = 6718464 * k + 3099100 := by
    unfold C
    simp [show (13436928 * k + 6198200) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3099100) = 3359232 * k + 1549550 := by
    unfold C
    simp [show (6718464 * k + 3099100) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1549550) = 1679616 * k + 774775 := by
    unfold C
    simp [show (3359232 * k + 1549550) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 774775) = 5038848 * k + 2324326 := by
    unfold C
    simp [show (1679616 * k + 774775) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2324326) = 2519424 * k + 1162163 := by
    unfold C
    simp [show (5038848 * k + 2324326) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1162163) = 7558272 * k + 3486490 := by
    unfold C
    simp [show (2519424 * k + 1162163) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3486490) = 3779136 * k + 1743245 := by
    unfold C
    simp [show (7558272 * k + 3486490) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1743245) = 11337408 * k + 5229736 := by
    unfold C
    simp [show (3779136 * k + 1743245) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5229736) = 5668704 * k + 2614868 := by
    unfold C
    simp [show (11337408 * k + 5229736) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2614868) = 2834352 * k + 1307434 := by
    unfold C
    simp [show (5668704 * k + 2614868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1307434) = 1417176 * k + 653717 := by
    unfold C
    simp [show (2834352 * k + 1307434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 653717) = 4251528 * k + 1961152 := by
    unfold C
    simp [show (1417176 * k + 653717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1961152) = 2125764 * k + 980576 := by
    unfold C
    simp [show (4251528 * k + 1961152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 980576) = 1062882 * k + 490288 := by
    unfold C
    simp [show (2125764 * k + 980576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 490288) = 531441 * k + 245144 := by
    unfold C
    simp [show (1062882 * k + 490288) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 483687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 483687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_483995 : ∀ k : Nat,
    iterate (1048576 * k + 483995) 32 = 531441 * k + 245300 ∧
      531441 * k + 245300 < 1048576 * k + 483995 := by
  intro k
  have h1 : C (1048576 * k + 483995) = 3145728 * k + 1451986 := by
    unfold C
    simp [show (1048576 * k + 483995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1451986) = 1572864 * k + 725993 := by
    unfold C
    simp [show (3145728 * k + 1451986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 725993) = 4718592 * k + 2177980 := by
    unfold C
    simp [show (1572864 * k + 725993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2177980) = 2359296 * k + 1088990 := by
    unfold C
    simp [show (4718592 * k + 2177980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1088990) = 1179648 * k + 544495 := by
    unfold C
    simp [show (2359296 * k + 1088990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 544495) = 3538944 * k + 1633486 := by
    unfold C
    simp [show (1179648 * k + 544495) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1633486) = 1769472 * k + 816743 := by
    unfold C
    simp [show (3538944 * k + 1633486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 816743) = 5308416 * k + 2450230 := by
    unfold C
    simp [show (1769472 * k + 816743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2450230) = 2654208 * k + 1225115 := by
    unfold C
    simp [show (5308416 * k + 2450230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1225115) = 7962624 * k + 3675346 := by
    unfold C
    simp [show (2654208 * k + 1225115) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3675346) = 3981312 * k + 1837673 := by
    unfold C
    simp [show (7962624 * k + 3675346) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1837673) = 11943936 * k + 5513020 := by
    unfold C
    simp [show (3981312 * k + 1837673) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5513020) = 5971968 * k + 2756510 := by
    unfold C
    simp [show (11943936 * k + 5513020) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2756510) = 2985984 * k + 1378255 := by
    unfold C
    simp [show (5971968 * k + 2756510) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1378255) = 8957952 * k + 4134766 := by
    unfold C
    simp [show (2985984 * k + 1378255) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4134766) = 4478976 * k + 2067383 := by
    unfold C
    simp [show (8957952 * k + 4134766) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2067383) = 13436928 * k + 6202150 := by
    unfold C
    simp [show (4478976 * k + 2067383) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6202150) = 6718464 * k + 3101075 := by
    unfold C
    simp [show (13436928 * k + 6202150) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3101075) = 20155392 * k + 9303226 := by
    unfold C
    simp [show (6718464 * k + 3101075) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9303226) = 10077696 * k + 4651613 := by
    unfold C
    simp [show (20155392 * k + 9303226) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4651613) = 30233088 * k + 13954840 := by
    unfold C
    simp [show (10077696 * k + 4651613) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13954840) = 15116544 * k + 6977420 := by
    unfold C
    simp [show (30233088 * k + 13954840) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6977420) = 7558272 * k + 3488710 := by
    unfold C
    simp [show (15116544 * k + 6977420) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3488710) = 3779136 * k + 1744355 := by
    unfold C
    simp [show (7558272 * k + 3488710) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1744355) = 11337408 * k + 5233066 := by
    unfold C
    simp [show (3779136 * k + 1744355) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5233066) = 5668704 * k + 2616533 := by
    unfold C
    simp [show (11337408 * k + 5233066) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2616533) = 17006112 * k + 7849600 := by
    unfold C
    simp [show (5668704 * k + 2616533) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7849600) = 8503056 * k + 3924800 := by
    unfold C
    simp [show (17006112 * k + 7849600) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3924800) = 4251528 * k + 1962400 := by
    unfold C
    simp [show (8503056 * k + 3924800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1962400) = 2125764 * k + 981200 := by
    unfold C
    simp [show (4251528 * k + 1962400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 981200) = 1062882 * k + 490600 := by
    unfold C
    simp [show (2125764 * k + 981200) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 490600) = 531441 * k + 245300 := by
    unfold C
    simp [show (1062882 * k + 490600) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 483995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 483995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_484031 : ∀ k : Nat,
    iterate (1048576 * k + 484031) 32 = 531441 * k + 245318 ∧
      531441 * k + 245318 < 1048576 * k + 484031 := by
  intro k
  have h1 : C (1048576 * k + 484031) = 3145728 * k + 1452094 := by
    unfold C
    simp [show (1048576 * k + 484031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1452094) = 1572864 * k + 726047 := by
    unfold C
    simp [show (3145728 * k + 1452094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 726047) = 4718592 * k + 2178142 := by
    unfold C
    simp [show (1572864 * k + 726047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2178142) = 2359296 * k + 1089071 := by
    unfold C
    simp [show (4718592 * k + 2178142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1089071) = 7077888 * k + 3267214 := by
    unfold C
    simp [show (2359296 * k + 1089071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3267214) = 3538944 * k + 1633607 := by
    unfold C
    simp [show (7077888 * k + 3267214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1633607) = 10616832 * k + 4900822 := by
    unfold C
    simp [show (3538944 * k + 1633607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4900822) = 5308416 * k + 2450411 := by
    unfold C
    simp [show (10616832 * k + 4900822) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2450411) = 15925248 * k + 7351234 := by
    unfold C
    simp [show (5308416 * k + 2450411) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7351234) = 7962624 * k + 3675617 := by
    unfold C
    simp [show (15925248 * k + 7351234) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3675617) = 23887872 * k + 11026852 := by
    unfold C
    simp [show (7962624 * k + 3675617) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11026852) = 11943936 * k + 5513426 := by
    unfold C
    simp [show (23887872 * k + 11026852) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5513426) = 5971968 * k + 2756713 := by
    unfold C
    simp [show (11943936 * k + 5513426) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2756713) = 17915904 * k + 8270140 := by
    unfold C
    simp [show (5971968 * k + 2756713) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8270140) = 8957952 * k + 4135070 := by
    unfold C
    simp [show (17915904 * k + 8270140) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4135070) = 4478976 * k + 2067535 := by
    unfold C
    simp [show (8957952 * k + 4135070) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2067535) = 13436928 * k + 6202606 := by
    unfold C
    simp [show (4478976 * k + 2067535) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6202606) = 6718464 * k + 3101303 := by
    unfold C
    simp [show (13436928 * k + 6202606) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3101303) = 20155392 * k + 9303910 := by
    unfold C
    simp [show (6718464 * k + 3101303) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9303910) = 10077696 * k + 4651955 := by
    unfold C
    simp [show (20155392 * k + 9303910) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4651955) = 30233088 * k + 13955866 := by
    unfold C
    simp [show (10077696 * k + 4651955) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13955866) = 15116544 * k + 6977933 := by
    unfold C
    simp [show (30233088 * k + 13955866) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6977933) = 45349632 * k + 20933800 := by
    unfold C
    simp [show (15116544 * k + 6977933) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 20933800) = 22674816 * k + 10466900 := by
    unfold C
    simp [show (45349632 * k + 20933800) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10466900) = 11337408 * k + 5233450 := by
    unfold C
    simp [show (22674816 * k + 10466900) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5233450) = 5668704 * k + 2616725 := by
    unfold C
    simp [show (11337408 * k + 5233450) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2616725) = 17006112 * k + 7850176 := by
    unfold C
    simp [show (5668704 * k + 2616725) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7850176) = 8503056 * k + 3925088 := by
    unfold C
    simp [show (17006112 * k + 7850176) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3925088) = 4251528 * k + 1962544 := by
    unfold C
    simp [show (8503056 * k + 3925088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1962544) = 2125764 * k + 981272 := by
    unfold C
    simp [show (4251528 * k + 1962544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 981272) = 1062882 * k + 490636 := by
    unfold C
    simp [show (2125764 * k + 981272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 490636) = 531441 * k + 245318 := by
    unfold C
    simp [show (1062882 * k + 490636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 484031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 484031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_484735 : ∀ k : Nat,
    iterate (1048576 * k + 484735) 32 = 531441 * k + 245675 ∧
      531441 * k + 245675 < 1048576 * k + 484735 := by
  intro k
  have h1 : C (1048576 * k + 484735) = 3145728 * k + 1454206 := by
    unfold C
    simp [show (1048576 * k + 484735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1454206) = 1572864 * k + 727103 := by
    unfold C
    simp [show (3145728 * k + 1454206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 727103) = 4718592 * k + 2181310 := by
    unfold C
    simp [show (1572864 * k + 727103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2181310) = 2359296 * k + 1090655 := by
    unfold C
    simp [show (4718592 * k + 2181310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1090655) = 7077888 * k + 3271966 := by
    unfold C
    simp [show (2359296 * k + 1090655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3271966) = 3538944 * k + 1635983 := by
    unfold C
    simp [show (7077888 * k + 3271966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1635983) = 10616832 * k + 4907950 := by
    unfold C
    simp [show (3538944 * k + 1635983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4907950) = 5308416 * k + 2453975 := by
    unfold C
    simp [show (10616832 * k + 4907950) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2453975) = 15925248 * k + 7361926 := by
    unfold C
    simp [show (5308416 * k + 2453975) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7361926) = 7962624 * k + 3680963 := by
    unfold C
    simp [show (15925248 * k + 7361926) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3680963) = 23887872 * k + 11042890 := by
    unfold C
    simp [show (7962624 * k + 3680963) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11042890) = 11943936 * k + 5521445 := by
    unfold C
    simp [show (23887872 * k + 11042890) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5521445) = 35831808 * k + 16564336 := by
    unfold C
    simp [show (11943936 * k + 5521445) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16564336) = 17915904 * k + 8282168 := by
    unfold C
    simp [show (35831808 * k + 16564336) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8282168) = 8957952 * k + 4141084 := by
    unfold C
    simp [show (17915904 * k + 8282168) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4141084) = 4478976 * k + 2070542 := by
    unfold C
    simp [show (8957952 * k + 4141084) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2070542) = 2239488 * k + 1035271 := by
    unfold C
    simp [show (4478976 * k + 2070542) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1035271) = 6718464 * k + 3105814 := by
    unfold C
    simp [show (2239488 * k + 1035271) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3105814) = 3359232 * k + 1552907 := by
    unfold C
    simp [show (6718464 * k + 3105814) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1552907) = 10077696 * k + 4658722 := by
    unfold C
    simp [show (3359232 * k + 1552907) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4658722) = 5038848 * k + 2329361 := by
    unfold C
    simp [show (10077696 * k + 4658722) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2329361) = 15116544 * k + 6988084 := by
    unfold C
    simp [show (5038848 * k + 2329361) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6988084) = 7558272 * k + 3494042 := by
    unfold C
    simp [show (15116544 * k + 6988084) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3494042) = 3779136 * k + 1747021 := by
    unfold C
    simp [show (7558272 * k + 3494042) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1747021) = 11337408 * k + 5241064 := by
    unfold C
    simp [show (3779136 * k + 1747021) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5241064) = 5668704 * k + 2620532 := by
    unfold C
    simp [show (11337408 * k + 5241064) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2620532) = 2834352 * k + 1310266 := by
    unfold C
    simp [show (5668704 * k + 2620532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1310266) = 1417176 * k + 655133 := by
    unfold C
    simp [show (2834352 * k + 1310266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 655133) = 4251528 * k + 1965400 := by
    unfold C
    simp [show (1417176 * k + 655133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1965400) = 2125764 * k + 982700 := by
    unfold C
    simp [show (4251528 * k + 1965400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 982700) = 1062882 * k + 491350 := by
    unfold C
    simp [show (2125764 * k + 982700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 491350) = 531441 * k + 245675 := by
    unfold C
    simp [show (1062882 * k + 491350) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 484735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 484735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_484847 : ∀ k : Nat,
    iterate (1048576 * k + 484847) 32 = 531441 * k + 245732 ∧
      531441 * k + 245732 < 1048576 * k + 484847 := by
  intro k
  have h1 : C (1048576 * k + 484847) = 3145728 * k + 1454542 := by
    unfold C
    simp [show (1048576 * k + 484847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1454542) = 1572864 * k + 727271 := by
    unfold C
    simp [show (3145728 * k + 1454542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 727271) = 4718592 * k + 2181814 := by
    unfold C
    simp [show (1572864 * k + 727271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2181814) = 2359296 * k + 1090907 := by
    unfold C
    simp [show (4718592 * k + 2181814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1090907) = 7077888 * k + 3272722 := by
    unfold C
    simp [show (2359296 * k + 1090907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3272722) = 3538944 * k + 1636361 := by
    unfold C
    simp [show (7077888 * k + 3272722) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1636361) = 10616832 * k + 4909084 := by
    unfold C
    simp [show (3538944 * k + 1636361) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4909084) = 5308416 * k + 2454542 := by
    unfold C
    simp [show (10616832 * k + 4909084) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2454542) = 2654208 * k + 1227271 := by
    unfold C
    simp [show (5308416 * k + 2454542) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1227271) = 7962624 * k + 3681814 := by
    unfold C
    simp [show (2654208 * k + 1227271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3681814) = 3981312 * k + 1840907 := by
    unfold C
    simp [show (7962624 * k + 3681814) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1840907) = 11943936 * k + 5522722 := by
    unfold C
    simp [show (3981312 * k + 1840907) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5522722) = 5971968 * k + 2761361 := by
    unfold C
    simp [show (11943936 * k + 5522722) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2761361) = 17915904 * k + 8284084 := by
    unfold C
    simp [show (5971968 * k + 2761361) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8284084) = 8957952 * k + 4142042 := by
    unfold C
    simp [show (17915904 * k + 8284084) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4142042) = 4478976 * k + 2071021 := by
    unfold C
    simp [show (8957952 * k + 4142042) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2071021) = 13436928 * k + 6213064 := by
    unfold C
    simp [show (4478976 * k + 2071021) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6213064) = 6718464 * k + 3106532 := by
    unfold C
    simp [show (13436928 * k + 6213064) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3106532) = 3359232 * k + 1553266 := by
    unfold C
    simp [show (6718464 * k + 3106532) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1553266) = 1679616 * k + 776633 := by
    unfold C
    simp [show (3359232 * k + 1553266) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 776633) = 5038848 * k + 2329900 := by
    unfold C
    simp [show (1679616 * k + 776633) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2329900) = 2519424 * k + 1164950 := by
    unfold C
    simp [show (5038848 * k + 2329900) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1164950) = 1259712 * k + 582475 := by
    unfold C
    simp [show (2519424 * k + 1164950) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 582475) = 3779136 * k + 1747426 := by
    unfold C
    simp [show (1259712 * k + 582475) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1747426) = 1889568 * k + 873713 := by
    unfold C
    simp [show (3779136 * k + 1747426) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 873713) = 5668704 * k + 2621140 := by
    unfold C
    simp [show (1889568 * k + 873713) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2621140) = 2834352 * k + 1310570 := by
    unfold C
    simp [show (5668704 * k + 2621140) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1310570) = 1417176 * k + 655285 := by
    unfold C
    simp [show (2834352 * k + 1310570) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 655285) = 4251528 * k + 1965856 := by
    unfold C
    simp [show (1417176 * k + 655285) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1965856) = 2125764 * k + 982928 := by
    unfold C
    simp [show (4251528 * k + 1965856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 982928) = 1062882 * k + 491464 := by
    unfold C
    simp [show (2125764 * k + 982928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 491464) = 531441 * k + 245732 := by
    unfold C
    simp [show (1062882 * k + 491464) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 484847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 484847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_486047 : ∀ k : Nat,
    iterate (1048576 * k + 486047) 32 = 531441 * k + 246340 ∧
      531441 * k + 246340 < 1048576 * k + 486047 := by
  intro k
  have h1 : C (1048576 * k + 486047) = 3145728 * k + 1458142 := by
    unfold C
    simp [show (1048576 * k + 486047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1458142) = 1572864 * k + 729071 := by
    unfold C
    simp [show (3145728 * k + 1458142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 729071) = 4718592 * k + 2187214 := by
    unfold C
    simp [show (1572864 * k + 729071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2187214) = 2359296 * k + 1093607 := by
    unfold C
    simp [show (4718592 * k + 2187214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1093607) = 7077888 * k + 3280822 := by
    unfold C
    simp [show (2359296 * k + 1093607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3280822) = 3538944 * k + 1640411 := by
    unfold C
    simp [show (7077888 * k + 3280822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1640411) = 10616832 * k + 4921234 := by
    unfold C
    simp [show (3538944 * k + 1640411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4921234) = 5308416 * k + 2460617 := by
    unfold C
    simp [show (10616832 * k + 4921234) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2460617) = 15925248 * k + 7381852 := by
    unfold C
    simp [show (5308416 * k + 2460617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7381852) = 7962624 * k + 3690926 := by
    unfold C
    simp [show (15925248 * k + 7381852) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3690926) = 3981312 * k + 1845463 := by
    unfold C
    simp [show (7962624 * k + 3690926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1845463) = 11943936 * k + 5536390 := by
    unfold C
    simp [show (3981312 * k + 1845463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5536390) = 5971968 * k + 2768195 := by
    unfold C
    simp [show (11943936 * k + 5536390) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2768195) = 17915904 * k + 8304586 := by
    unfold C
    simp [show (5971968 * k + 2768195) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8304586) = 8957952 * k + 4152293 := by
    unfold C
    simp [show (17915904 * k + 8304586) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4152293) = 26873856 * k + 12456880 := by
    unfold C
    simp [show (8957952 * k + 4152293) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12456880) = 13436928 * k + 6228440 := by
    unfold C
    simp [show (26873856 * k + 12456880) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6228440) = 6718464 * k + 3114220 := by
    unfold C
    simp [show (13436928 * k + 6228440) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3114220) = 3359232 * k + 1557110 := by
    unfold C
    simp [show (6718464 * k + 3114220) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1557110) = 1679616 * k + 778555 := by
    unfold C
    simp [show (3359232 * k + 1557110) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 778555) = 5038848 * k + 2335666 := by
    unfold C
    simp [show (1679616 * k + 778555) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2335666) = 2519424 * k + 1167833 := by
    unfold C
    simp [show (5038848 * k + 2335666) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1167833) = 7558272 * k + 3503500 := by
    unfold C
    simp [show (2519424 * k + 1167833) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3503500) = 3779136 * k + 1751750 := by
    unfold C
    simp [show (7558272 * k + 3503500) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1751750) = 1889568 * k + 875875 := by
    unfold C
    simp [show (3779136 * k + 1751750) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 875875) = 5668704 * k + 2627626 := by
    unfold C
    simp [show (1889568 * k + 875875) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2627626) = 2834352 * k + 1313813 := by
    unfold C
    simp [show (5668704 * k + 2627626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1313813) = 8503056 * k + 3941440 := by
    unfold C
    simp [show (2834352 * k + 1313813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3941440) = 4251528 * k + 1970720 := by
    unfold C
    simp [show (8503056 * k + 3941440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1970720) = 2125764 * k + 985360 := by
    unfold C
    simp [show (4251528 * k + 1970720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 985360) = 1062882 * k + 492680 := by
    unfold C
    simp [show (2125764 * k + 985360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 492680) = 531441 * k + 246340 := by
    unfold C
    simp [show (1062882 * k + 492680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 486047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 486047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_486079 : ∀ k : Nat,
    iterate (1048576 * k + 486079) 32 = 531441 * k + 246356 ∧
      531441 * k + 246356 < 1048576 * k + 486079 := by
  intro k
  have h1 : C (1048576 * k + 486079) = 3145728 * k + 1458238 := by
    unfold C
    simp [show (1048576 * k + 486079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1458238) = 1572864 * k + 729119 := by
    unfold C
    simp [show (3145728 * k + 1458238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 729119) = 4718592 * k + 2187358 := by
    unfold C
    simp [show (1572864 * k + 729119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2187358) = 2359296 * k + 1093679 := by
    unfold C
    simp [show (4718592 * k + 2187358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1093679) = 7077888 * k + 3281038 := by
    unfold C
    simp [show (2359296 * k + 1093679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3281038) = 3538944 * k + 1640519 := by
    unfold C
    simp [show (7077888 * k + 3281038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1640519) = 10616832 * k + 4921558 := by
    unfold C
    simp [show (3538944 * k + 1640519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4921558) = 5308416 * k + 2460779 := by
    unfold C
    simp [show (10616832 * k + 4921558) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2460779) = 15925248 * k + 7382338 := by
    unfold C
    simp [show (5308416 * k + 2460779) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7382338) = 7962624 * k + 3691169 := by
    unfold C
    simp [show (15925248 * k + 7382338) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3691169) = 23887872 * k + 11073508 := by
    unfold C
    simp [show (7962624 * k + 3691169) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11073508) = 11943936 * k + 5536754 := by
    unfold C
    simp [show (23887872 * k + 11073508) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5536754) = 5971968 * k + 2768377 := by
    unfold C
    simp [show (11943936 * k + 5536754) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2768377) = 17915904 * k + 8305132 := by
    unfold C
    simp [show (5971968 * k + 2768377) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8305132) = 8957952 * k + 4152566 := by
    unfold C
    simp [show (17915904 * k + 8305132) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4152566) = 4478976 * k + 2076283 := by
    unfold C
    simp [show (8957952 * k + 4152566) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2076283) = 13436928 * k + 6228850 := by
    unfold C
    simp [show (4478976 * k + 2076283) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6228850) = 6718464 * k + 3114425 := by
    unfold C
    simp [show (13436928 * k + 6228850) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3114425) = 20155392 * k + 9343276 := by
    unfold C
    simp [show (6718464 * k + 3114425) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9343276) = 10077696 * k + 4671638 := by
    unfold C
    simp [show (20155392 * k + 9343276) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4671638) = 5038848 * k + 2335819 := by
    unfold C
    simp [show (10077696 * k + 4671638) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2335819) = 15116544 * k + 7007458 := by
    unfold C
    simp [show (5038848 * k + 2335819) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7007458) = 7558272 * k + 3503729 := by
    unfold C
    simp [show (15116544 * k + 7007458) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3503729) = 22674816 * k + 10511188 := by
    unfold C
    simp [show (7558272 * k + 3503729) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10511188) = 11337408 * k + 5255594 := by
    unfold C
    simp [show (22674816 * k + 10511188) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5255594) = 5668704 * k + 2627797 := by
    unfold C
    simp [show (11337408 * k + 5255594) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2627797) = 17006112 * k + 7883392 := by
    unfold C
    simp [show (5668704 * k + 2627797) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7883392) = 8503056 * k + 3941696 := by
    unfold C
    simp [show (17006112 * k + 7883392) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3941696) = 4251528 * k + 1970848 := by
    unfold C
    simp [show (8503056 * k + 3941696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1970848) = 2125764 * k + 985424 := by
    unfold C
    simp [show (4251528 * k + 1970848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 985424) = 1062882 * k + 492712 := by
    unfold C
    simp [show (2125764 * k + 985424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 492712) = 531441 * k + 246356 := by
    unfold C
    simp [show (1062882 * k + 492712) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 486079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 486079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard061
