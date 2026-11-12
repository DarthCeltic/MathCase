import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard095

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_735515 : ∀ k : Nat,
    iterate (1048576 * k + 735515) 32 = 531441 * k + 372776 ∧
      531441 * k + 372776 < 1048576 * k + 735515 := by
  intro k
  have h1 : C (1048576 * k + 735515) = 3145728 * k + 2206546 := by
    unfold C
    simp [show (1048576 * k + 735515) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2206546) = 1572864 * k + 1103273 := by
    unfold C
    simp [show (3145728 * k + 2206546) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1103273) = 4718592 * k + 3309820 := by
    unfold C
    simp [show (1572864 * k + 1103273) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3309820) = 2359296 * k + 1654910 := by
    unfold C
    simp [show (4718592 * k + 3309820) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1654910) = 1179648 * k + 827455 := by
    unfold C
    simp [show (2359296 * k + 1654910) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 827455) = 3538944 * k + 2482366 := by
    unfold C
    simp [show (1179648 * k + 827455) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2482366) = 1769472 * k + 1241183 := by
    unfold C
    simp [show (3538944 * k + 2482366) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1241183) = 5308416 * k + 3723550 := by
    unfold C
    simp [show (1769472 * k + 1241183) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3723550) = 2654208 * k + 1861775 := by
    unfold C
    simp [show (5308416 * k + 3723550) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1861775) = 7962624 * k + 5585326 := by
    unfold C
    simp [show (2654208 * k + 1861775) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5585326) = 3981312 * k + 2792663 := by
    unfold C
    simp [show (7962624 * k + 5585326) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2792663) = 11943936 * k + 8377990 := by
    unfold C
    simp [show (3981312 * k + 2792663) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8377990) = 5971968 * k + 4188995 := by
    unfold C
    simp [show (11943936 * k + 8377990) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4188995) = 17915904 * k + 12566986 := by
    unfold C
    simp [show (5971968 * k + 4188995) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12566986) = 8957952 * k + 6283493 := by
    unfold C
    simp [show (17915904 * k + 12566986) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6283493) = 26873856 * k + 18850480 := by
    unfold C
    simp [show (8957952 * k + 6283493) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18850480) = 13436928 * k + 9425240 := by
    unfold C
    simp [show (26873856 * k + 18850480) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9425240) = 6718464 * k + 4712620 := by
    unfold C
    simp [show (13436928 * k + 9425240) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4712620) = 3359232 * k + 2356310 := by
    unfold C
    simp [show (6718464 * k + 4712620) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2356310) = 1679616 * k + 1178155 := by
    unfold C
    simp [show (3359232 * k + 2356310) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1178155) = 5038848 * k + 3534466 := by
    unfold C
    simp [show (1679616 * k + 1178155) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3534466) = 2519424 * k + 1767233 := by
    unfold C
    simp [show (5038848 * k + 3534466) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1767233) = 7558272 * k + 5301700 := by
    unfold C
    simp [show (2519424 * k + 1767233) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5301700) = 3779136 * k + 2650850 := by
    unfold C
    simp [show (7558272 * k + 5301700) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2650850) = 1889568 * k + 1325425 := by
    unfold C
    simp [show (3779136 * k + 2650850) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1325425) = 5668704 * k + 3976276 := by
    unfold C
    simp [show (1889568 * k + 1325425) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3976276) = 2834352 * k + 1988138 := by
    unfold C
    simp [show (5668704 * k + 3976276) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1988138) = 1417176 * k + 994069 := by
    unfold C
    simp [show (2834352 * k + 1988138) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 994069) = 4251528 * k + 2982208 := by
    unfold C
    simp [show (1417176 * k + 994069) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2982208) = 2125764 * k + 1491104 := by
    unfold C
    simp [show (4251528 * k + 2982208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1491104) = 1062882 * k + 745552 := by
    unfold C
    simp [show (2125764 * k + 1491104) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 745552) = 531441 * k + 372776 := by
    unfold C
    simp [show (1062882 * k + 745552) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 735515) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 735515)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_735551 : ∀ k : Nat,
    iterate (1048576 * k + 735551) 32 = 531441 * k + 372794 ∧
      531441 * k + 372794 < 1048576 * k + 735551 := by
  intro k
  have h1 : C (1048576 * k + 735551) = 3145728 * k + 2206654 := by
    unfold C
    simp [show (1048576 * k + 735551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2206654) = 1572864 * k + 1103327 := by
    unfold C
    simp [show (3145728 * k + 2206654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1103327) = 4718592 * k + 3309982 := by
    unfold C
    simp [show (1572864 * k + 1103327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3309982) = 2359296 * k + 1654991 := by
    unfold C
    simp [show (4718592 * k + 3309982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1654991) = 7077888 * k + 4964974 := by
    unfold C
    simp [show (2359296 * k + 1654991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4964974) = 3538944 * k + 2482487 := by
    unfold C
    simp [show (7077888 * k + 4964974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2482487) = 10616832 * k + 7447462 := by
    unfold C
    simp [show (3538944 * k + 2482487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7447462) = 5308416 * k + 3723731 := by
    unfold C
    simp [show (10616832 * k + 7447462) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3723731) = 15925248 * k + 11171194 := by
    unfold C
    simp [show (5308416 * k + 3723731) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11171194) = 7962624 * k + 5585597 := by
    unfold C
    simp [show (15925248 * k + 11171194) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5585597) = 23887872 * k + 16756792 := by
    unfold C
    simp [show (7962624 * k + 5585597) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16756792) = 11943936 * k + 8378396 := by
    unfold C
    simp [show (23887872 * k + 16756792) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8378396) = 5971968 * k + 4189198 := by
    unfold C
    simp [show (11943936 * k + 8378396) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4189198) = 2985984 * k + 2094599 := by
    unfold C
    simp [show (5971968 * k + 4189198) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2094599) = 8957952 * k + 6283798 := by
    unfold C
    simp [show (2985984 * k + 2094599) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6283798) = 4478976 * k + 3141899 := by
    unfold C
    simp [show (8957952 * k + 6283798) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3141899) = 13436928 * k + 9425698 := by
    unfold C
    simp [show (4478976 * k + 3141899) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9425698) = 6718464 * k + 4712849 := by
    unfold C
    simp [show (13436928 * k + 9425698) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4712849) = 20155392 * k + 14138548 := by
    unfold C
    simp [show (6718464 * k + 4712849) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14138548) = 10077696 * k + 7069274 := by
    unfold C
    simp [show (20155392 * k + 14138548) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7069274) = 5038848 * k + 3534637 := by
    unfold C
    simp [show (10077696 * k + 7069274) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3534637) = 15116544 * k + 10603912 := by
    unfold C
    simp [show (5038848 * k + 3534637) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10603912) = 7558272 * k + 5301956 := by
    unfold C
    simp [show (15116544 * k + 10603912) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5301956) = 3779136 * k + 2650978 := by
    unfold C
    simp [show (7558272 * k + 5301956) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2650978) = 1889568 * k + 1325489 := by
    unfold C
    simp [show (3779136 * k + 2650978) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1325489) = 5668704 * k + 3976468 := by
    unfold C
    simp [show (1889568 * k + 1325489) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3976468) = 2834352 * k + 1988234 := by
    unfold C
    simp [show (5668704 * k + 3976468) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1988234) = 1417176 * k + 994117 := by
    unfold C
    simp [show (2834352 * k + 1988234) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 994117) = 4251528 * k + 2982352 := by
    unfold C
    simp [show (1417176 * k + 994117) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2982352) = 2125764 * k + 1491176 := by
    unfold C
    simp [show (4251528 * k + 2982352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1491176) = 1062882 * k + 745588 := by
    unfold C
    simp [show (2125764 * k + 1491176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 745588) = 531441 * k + 372794 := by
    unfold C
    simp [show (1062882 * k + 745588) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 735551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 735551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_735711 : ∀ k : Nat,
    iterate (1048576 * k + 735711) 32 = 531441 * k + 372875 ∧
      531441 * k + 372875 < 1048576 * k + 735711 := by
  intro k
  have h1 : C (1048576 * k + 735711) = 3145728 * k + 2207134 := by
    unfold C
    simp [show (1048576 * k + 735711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2207134) = 1572864 * k + 1103567 := by
    unfold C
    simp [show (3145728 * k + 2207134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1103567) = 4718592 * k + 3310702 := by
    unfold C
    simp [show (1572864 * k + 1103567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3310702) = 2359296 * k + 1655351 := by
    unfold C
    simp [show (4718592 * k + 3310702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1655351) = 7077888 * k + 4966054 := by
    unfold C
    simp [show (2359296 * k + 1655351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4966054) = 3538944 * k + 2483027 := by
    unfold C
    simp [show (7077888 * k + 4966054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2483027) = 10616832 * k + 7449082 := by
    unfold C
    simp [show (3538944 * k + 2483027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7449082) = 5308416 * k + 3724541 := by
    unfold C
    simp [show (10616832 * k + 7449082) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3724541) = 15925248 * k + 11173624 := by
    unfold C
    simp [show (5308416 * k + 3724541) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11173624) = 7962624 * k + 5586812 := by
    unfold C
    simp [show (15925248 * k + 11173624) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5586812) = 3981312 * k + 2793406 := by
    unfold C
    simp [show (7962624 * k + 5586812) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2793406) = 1990656 * k + 1396703 := by
    unfold C
    simp [show (3981312 * k + 2793406) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1396703) = 5971968 * k + 4190110 := by
    unfold C
    simp [show (1990656 * k + 1396703) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4190110) = 2985984 * k + 2095055 := by
    unfold C
    simp [show (5971968 * k + 4190110) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2095055) = 8957952 * k + 6285166 := by
    unfold C
    simp [show (2985984 * k + 2095055) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6285166) = 4478976 * k + 3142583 := by
    unfold C
    simp [show (8957952 * k + 6285166) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3142583) = 13436928 * k + 9427750 := by
    unfold C
    simp [show (4478976 * k + 3142583) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9427750) = 6718464 * k + 4713875 := by
    unfold C
    simp [show (13436928 * k + 9427750) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4713875) = 20155392 * k + 14141626 := by
    unfold C
    simp [show (6718464 * k + 4713875) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14141626) = 10077696 * k + 7070813 := by
    unfold C
    simp [show (20155392 * k + 14141626) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7070813) = 30233088 * k + 21212440 := by
    unfold C
    simp [show (10077696 * k + 7070813) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21212440) = 15116544 * k + 10606220 := by
    unfold C
    simp [show (30233088 * k + 21212440) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10606220) = 7558272 * k + 5303110 := by
    unfold C
    simp [show (15116544 * k + 10606220) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5303110) = 3779136 * k + 2651555 := by
    unfold C
    simp [show (7558272 * k + 5303110) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2651555) = 11337408 * k + 7954666 := by
    unfold C
    simp [show (3779136 * k + 2651555) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7954666) = 5668704 * k + 3977333 := by
    unfold C
    simp [show (11337408 * k + 7954666) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3977333) = 17006112 * k + 11932000 := by
    unfold C
    simp [show (5668704 * k + 3977333) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11932000) = 8503056 * k + 5966000 := by
    unfold C
    simp [show (17006112 * k + 11932000) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5966000) = 4251528 * k + 2983000 := by
    unfold C
    simp [show (8503056 * k + 5966000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2983000) = 2125764 * k + 1491500 := by
    unfold C
    simp [show (4251528 * k + 2983000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1491500) = 1062882 * k + 745750 := by
    unfold C
    simp [show (2125764 * k + 1491500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 745750) = 531441 * k + 372875 := by
    unfold C
    simp [show (1062882 * k + 745750) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 735711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 735711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_735871 : ∀ k : Nat,
    iterate (1048576 * k + 735871) 32 = 531441 * k + 372956 ∧
      531441 * k + 372956 < 1048576 * k + 735871 := by
  intro k
  have h1 : C (1048576 * k + 735871) = 3145728 * k + 2207614 := by
    unfold C
    simp [show (1048576 * k + 735871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2207614) = 1572864 * k + 1103807 := by
    unfold C
    simp [show (3145728 * k + 2207614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1103807) = 4718592 * k + 3311422 := by
    unfold C
    simp [show (1572864 * k + 1103807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3311422) = 2359296 * k + 1655711 := by
    unfold C
    simp [show (4718592 * k + 3311422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1655711) = 7077888 * k + 4967134 := by
    unfold C
    simp [show (2359296 * k + 1655711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4967134) = 3538944 * k + 2483567 := by
    unfold C
    simp [show (7077888 * k + 4967134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2483567) = 10616832 * k + 7450702 := by
    unfold C
    simp [show (3538944 * k + 2483567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7450702) = 5308416 * k + 3725351 := by
    unfold C
    simp [show (10616832 * k + 7450702) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3725351) = 15925248 * k + 11176054 := by
    unfold C
    simp [show (5308416 * k + 3725351) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11176054) = 7962624 * k + 5588027 := by
    unfold C
    simp [show (15925248 * k + 11176054) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5588027) = 23887872 * k + 16764082 := by
    unfold C
    simp [show (7962624 * k + 5588027) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16764082) = 11943936 * k + 8382041 := by
    unfold C
    simp [show (23887872 * k + 16764082) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8382041) = 35831808 * k + 25146124 := by
    unfold C
    simp [show (11943936 * k + 8382041) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 25146124) = 17915904 * k + 12573062 := by
    unfold C
    simp [show (35831808 * k + 25146124) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12573062) = 8957952 * k + 6286531 := by
    unfold C
    simp [show (17915904 * k + 12573062) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6286531) = 26873856 * k + 18859594 := by
    unfold C
    simp [show (8957952 * k + 6286531) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18859594) = 13436928 * k + 9429797 := by
    unfold C
    simp [show (26873856 * k + 18859594) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9429797) = 40310784 * k + 28289392 := by
    unfold C
    simp [show (13436928 * k + 9429797) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 28289392) = 20155392 * k + 14144696 := by
    unfold C
    simp [show (40310784 * k + 28289392) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14144696) = 10077696 * k + 7072348 := by
    unfold C
    simp [show (20155392 * k + 14144696) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7072348) = 5038848 * k + 3536174 := by
    unfold C
    simp [show (10077696 * k + 7072348) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3536174) = 2519424 * k + 1768087 := by
    unfold C
    simp [show (5038848 * k + 3536174) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1768087) = 7558272 * k + 5304262 := by
    unfold C
    simp [show (2519424 * k + 1768087) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5304262) = 3779136 * k + 2652131 := by
    unfold C
    simp [show (7558272 * k + 5304262) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2652131) = 11337408 * k + 7956394 := by
    unfold C
    simp [show (3779136 * k + 2652131) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7956394) = 5668704 * k + 3978197 := by
    unfold C
    simp [show (11337408 * k + 7956394) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3978197) = 17006112 * k + 11934592 := by
    unfold C
    simp [show (5668704 * k + 3978197) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11934592) = 8503056 * k + 5967296 := by
    unfold C
    simp [show (17006112 * k + 11934592) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5967296) = 4251528 * k + 2983648 := by
    unfold C
    simp [show (8503056 * k + 5967296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2983648) = 2125764 * k + 1491824 := by
    unfold C
    simp [show (4251528 * k + 2983648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1491824) = 1062882 * k + 745912 := by
    unfold C
    simp [show (2125764 * k + 1491824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 745912) = 531441 * k + 372956 := by
    unfold C
    simp [show (1062882 * k + 745912) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 735871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 735871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_736575 : ∀ k : Nat,
    iterate (1048576 * k + 736575) 32 = 531441 * k + 373313 ∧
      531441 * k + 373313 < 1048576 * k + 736575 := by
  intro k
  have h1 : C (1048576 * k + 736575) = 3145728 * k + 2209726 := by
    unfold C
    simp [show (1048576 * k + 736575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2209726) = 1572864 * k + 1104863 := by
    unfold C
    simp [show (3145728 * k + 2209726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1104863) = 4718592 * k + 3314590 := by
    unfold C
    simp [show (1572864 * k + 1104863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3314590) = 2359296 * k + 1657295 := by
    unfold C
    simp [show (4718592 * k + 3314590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1657295) = 7077888 * k + 4971886 := by
    unfold C
    simp [show (2359296 * k + 1657295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4971886) = 3538944 * k + 2485943 := by
    unfold C
    simp [show (7077888 * k + 4971886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2485943) = 10616832 * k + 7457830 := by
    unfold C
    simp [show (3538944 * k + 2485943) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7457830) = 5308416 * k + 3728915 := by
    unfold C
    simp [show (10616832 * k + 7457830) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3728915) = 15925248 * k + 11186746 := by
    unfold C
    simp [show (5308416 * k + 3728915) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11186746) = 7962624 * k + 5593373 := by
    unfold C
    simp [show (15925248 * k + 11186746) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5593373) = 23887872 * k + 16780120 := by
    unfold C
    simp [show (7962624 * k + 5593373) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16780120) = 11943936 * k + 8390060 := by
    unfold C
    simp [show (23887872 * k + 16780120) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8390060) = 5971968 * k + 4195030 := by
    unfold C
    simp [show (11943936 * k + 8390060) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4195030) = 2985984 * k + 2097515 := by
    unfold C
    simp [show (5971968 * k + 4195030) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2097515) = 8957952 * k + 6292546 := by
    unfold C
    simp [show (2985984 * k + 2097515) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6292546) = 4478976 * k + 3146273 := by
    unfold C
    simp [show (8957952 * k + 6292546) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3146273) = 13436928 * k + 9438820 := by
    unfold C
    simp [show (4478976 * k + 3146273) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9438820) = 6718464 * k + 4719410 := by
    unfold C
    simp [show (13436928 * k + 9438820) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4719410) = 3359232 * k + 2359705 := by
    unfold C
    simp [show (6718464 * k + 4719410) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2359705) = 10077696 * k + 7079116 := by
    unfold C
    simp [show (3359232 * k + 2359705) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7079116) = 5038848 * k + 3539558 := by
    unfold C
    simp [show (10077696 * k + 7079116) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3539558) = 2519424 * k + 1769779 := by
    unfold C
    simp [show (5038848 * k + 3539558) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1769779) = 7558272 * k + 5309338 := by
    unfold C
    simp [show (2519424 * k + 1769779) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5309338) = 3779136 * k + 2654669 := by
    unfold C
    simp [show (7558272 * k + 5309338) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2654669) = 11337408 * k + 7964008 := by
    unfold C
    simp [show (3779136 * k + 2654669) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7964008) = 5668704 * k + 3982004 := by
    unfold C
    simp [show (11337408 * k + 7964008) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3982004) = 2834352 * k + 1991002 := by
    unfold C
    simp [show (5668704 * k + 3982004) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1991002) = 1417176 * k + 995501 := by
    unfold C
    simp [show (2834352 * k + 1991002) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 995501) = 4251528 * k + 2986504 := by
    unfold C
    simp [show (1417176 * k + 995501) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2986504) = 2125764 * k + 1493252 := by
    unfold C
    simp [show (4251528 * k + 2986504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1493252) = 1062882 * k + 746626 := by
    unfold C
    simp [show (2125764 * k + 1493252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 746626) = 531441 * k + 373313 := by
    unfold C
    simp [show (1062882 * k + 746626) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 736575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 736575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_737007 : ∀ k : Nat,
    iterate (1048576 * k + 737007) 32 = 531441 * k + 373532 ∧
      531441 * k + 373532 < 1048576 * k + 737007 := by
  intro k
  have h1 : C (1048576 * k + 737007) = 3145728 * k + 2211022 := by
    unfold C
    simp [show (1048576 * k + 737007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2211022) = 1572864 * k + 1105511 := by
    unfold C
    simp [show (3145728 * k + 2211022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1105511) = 4718592 * k + 3316534 := by
    unfold C
    simp [show (1572864 * k + 1105511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3316534) = 2359296 * k + 1658267 := by
    unfold C
    simp [show (4718592 * k + 3316534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1658267) = 7077888 * k + 4974802 := by
    unfold C
    simp [show (2359296 * k + 1658267) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4974802) = 3538944 * k + 2487401 := by
    unfold C
    simp [show (7077888 * k + 4974802) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2487401) = 10616832 * k + 7462204 := by
    unfold C
    simp [show (3538944 * k + 2487401) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7462204) = 5308416 * k + 3731102 := by
    unfold C
    simp [show (10616832 * k + 7462204) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3731102) = 2654208 * k + 1865551 := by
    unfold C
    simp [show (5308416 * k + 3731102) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1865551) = 7962624 * k + 5596654 := by
    unfold C
    simp [show (2654208 * k + 1865551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5596654) = 3981312 * k + 2798327 := by
    unfold C
    simp [show (7962624 * k + 5596654) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2798327) = 11943936 * k + 8394982 := by
    unfold C
    simp [show (3981312 * k + 2798327) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8394982) = 5971968 * k + 4197491 := by
    unfold C
    simp [show (11943936 * k + 8394982) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4197491) = 17915904 * k + 12592474 := by
    unfold C
    simp [show (5971968 * k + 4197491) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12592474) = 8957952 * k + 6296237 := by
    unfold C
    simp [show (17915904 * k + 12592474) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6296237) = 26873856 * k + 18888712 := by
    unfold C
    simp [show (8957952 * k + 6296237) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18888712) = 13436928 * k + 9444356 := by
    unfold C
    simp [show (26873856 * k + 18888712) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9444356) = 6718464 * k + 4722178 := by
    unfold C
    simp [show (13436928 * k + 9444356) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4722178) = 3359232 * k + 2361089 := by
    unfold C
    simp [show (6718464 * k + 4722178) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2361089) = 10077696 * k + 7083268 := by
    unfold C
    simp [show (3359232 * k + 2361089) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7083268) = 5038848 * k + 3541634 := by
    unfold C
    simp [show (10077696 * k + 7083268) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3541634) = 2519424 * k + 1770817 := by
    unfold C
    simp [show (5038848 * k + 3541634) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1770817) = 7558272 * k + 5312452 := by
    unfold C
    simp [show (2519424 * k + 1770817) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5312452) = 3779136 * k + 2656226 := by
    unfold C
    simp [show (7558272 * k + 5312452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2656226) = 1889568 * k + 1328113 := by
    unfold C
    simp [show (3779136 * k + 2656226) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1328113) = 5668704 * k + 3984340 := by
    unfold C
    simp [show (1889568 * k + 1328113) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3984340) = 2834352 * k + 1992170 := by
    unfold C
    simp [show (5668704 * k + 3984340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1992170) = 1417176 * k + 996085 := by
    unfold C
    simp [show (2834352 * k + 1992170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 996085) = 4251528 * k + 2988256 := by
    unfold C
    simp [show (1417176 * k + 996085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2988256) = 2125764 * k + 1494128 := by
    unfold C
    simp [show (4251528 * k + 2988256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1494128) = 1062882 * k + 747064 := by
    unfold C
    simp [show (2125764 * k + 1494128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 747064) = 531441 * k + 373532 := by
    unfold C
    simp [show (1062882 * k + 747064) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 737007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 737007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_737691 : ∀ k : Nat,
    iterate (1048576 * k + 737691) 32 = 531441 * k + 373879 ∧
      531441 * k + 373879 < 1048576 * k + 737691 := by
  intro k
  have h1 : C (1048576 * k + 737691) = 3145728 * k + 2213074 := by
    unfold C
    simp [show (1048576 * k + 737691) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2213074) = 1572864 * k + 1106537 := by
    unfold C
    simp [show (3145728 * k + 2213074) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1106537) = 4718592 * k + 3319612 := by
    unfold C
    simp [show (1572864 * k + 1106537) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3319612) = 2359296 * k + 1659806 := by
    unfold C
    simp [show (4718592 * k + 3319612) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1659806) = 1179648 * k + 829903 := by
    unfold C
    simp [show (2359296 * k + 1659806) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 829903) = 3538944 * k + 2489710 := by
    unfold C
    simp [show (1179648 * k + 829903) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2489710) = 1769472 * k + 1244855 := by
    unfold C
    simp [show (3538944 * k + 2489710) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1244855) = 5308416 * k + 3734566 := by
    unfold C
    simp [show (1769472 * k + 1244855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3734566) = 2654208 * k + 1867283 := by
    unfold C
    simp [show (5308416 * k + 3734566) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1867283) = 7962624 * k + 5601850 := by
    unfold C
    simp [show (2654208 * k + 1867283) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5601850) = 3981312 * k + 2800925 := by
    unfold C
    simp [show (7962624 * k + 5601850) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2800925) = 11943936 * k + 8402776 := by
    unfold C
    simp [show (3981312 * k + 2800925) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8402776) = 5971968 * k + 4201388 := by
    unfold C
    simp [show (11943936 * k + 8402776) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4201388) = 2985984 * k + 2100694 := by
    unfold C
    simp [show (5971968 * k + 4201388) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2100694) = 1492992 * k + 1050347 := by
    unfold C
    simp [show (2985984 * k + 2100694) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1050347) = 4478976 * k + 3151042 := by
    unfold C
    simp [show (1492992 * k + 1050347) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3151042) = 2239488 * k + 1575521 := by
    unfold C
    simp [show (4478976 * k + 3151042) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1575521) = 6718464 * k + 4726564 := by
    unfold C
    simp [show (2239488 * k + 1575521) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4726564) = 3359232 * k + 2363282 := by
    unfold C
    simp [show (6718464 * k + 4726564) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2363282) = 1679616 * k + 1181641 := by
    unfold C
    simp [show (3359232 * k + 2363282) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1181641) = 5038848 * k + 3544924 := by
    unfold C
    simp [show (1679616 * k + 1181641) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3544924) = 2519424 * k + 1772462 := by
    unfold C
    simp [show (5038848 * k + 3544924) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1772462) = 1259712 * k + 886231 := by
    unfold C
    simp [show (2519424 * k + 1772462) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 886231) = 3779136 * k + 2658694 := by
    unfold C
    simp [show (1259712 * k + 886231) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2658694) = 1889568 * k + 1329347 := by
    unfold C
    simp [show (3779136 * k + 2658694) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1329347) = 5668704 * k + 3988042 := by
    unfold C
    simp [show (1889568 * k + 1329347) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3988042) = 2834352 * k + 1994021 := by
    unfold C
    simp [show (5668704 * k + 3988042) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1994021) = 8503056 * k + 5982064 := by
    unfold C
    simp [show (2834352 * k + 1994021) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5982064) = 4251528 * k + 2991032 := by
    unfold C
    simp [show (8503056 * k + 5982064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2991032) = 2125764 * k + 1495516 := by
    unfold C
    simp [show (4251528 * k + 2991032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1495516) = 1062882 * k + 747758 := by
    unfold C
    simp [show (2125764 * k + 1495516) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 747758) = 531441 * k + 373879 := by
    unfold C
    simp [show (1062882 * k + 747758) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 737691) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 737691)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_737775 : ∀ k : Nat,
    iterate (1048576 * k + 737775) 32 = 531441 * k + 373921 ∧
      531441 * k + 373921 < 1048576 * k + 737775 := by
  intro k
  have h1 : C (1048576 * k + 737775) = 3145728 * k + 2213326 := by
    unfold C
    simp [show (1048576 * k + 737775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2213326) = 1572864 * k + 1106663 := by
    unfold C
    simp [show (3145728 * k + 2213326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1106663) = 4718592 * k + 3319990 := by
    unfold C
    simp [show (1572864 * k + 1106663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3319990) = 2359296 * k + 1659995 := by
    unfold C
    simp [show (4718592 * k + 3319990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1659995) = 7077888 * k + 4979986 := by
    unfold C
    simp [show (2359296 * k + 1659995) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4979986) = 3538944 * k + 2489993 := by
    unfold C
    simp [show (7077888 * k + 4979986) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2489993) = 10616832 * k + 7469980 := by
    unfold C
    simp [show (3538944 * k + 2489993) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7469980) = 5308416 * k + 3734990 := by
    unfold C
    simp [show (10616832 * k + 7469980) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3734990) = 2654208 * k + 1867495 := by
    unfold C
    simp [show (5308416 * k + 3734990) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1867495) = 7962624 * k + 5602486 := by
    unfold C
    simp [show (2654208 * k + 1867495) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5602486) = 3981312 * k + 2801243 := by
    unfold C
    simp [show (7962624 * k + 5602486) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2801243) = 11943936 * k + 8403730 := by
    unfold C
    simp [show (3981312 * k + 2801243) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8403730) = 5971968 * k + 4201865 := by
    unfold C
    simp [show (11943936 * k + 8403730) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4201865) = 17915904 * k + 12605596 := by
    unfold C
    simp [show (5971968 * k + 4201865) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12605596) = 8957952 * k + 6302798 := by
    unfold C
    simp [show (17915904 * k + 12605596) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6302798) = 4478976 * k + 3151399 := by
    unfold C
    simp [show (8957952 * k + 6302798) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3151399) = 13436928 * k + 9454198 := by
    unfold C
    simp [show (4478976 * k + 3151399) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9454198) = 6718464 * k + 4727099 := by
    unfold C
    simp [show (13436928 * k + 9454198) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4727099) = 20155392 * k + 14181298 := by
    unfold C
    simp [show (6718464 * k + 4727099) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14181298) = 10077696 * k + 7090649 := by
    unfold C
    simp [show (20155392 * k + 14181298) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7090649) = 30233088 * k + 21271948 := by
    unfold C
    simp [show (10077696 * k + 7090649) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21271948) = 15116544 * k + 10635974 := by
    unfold C
    simp [show (30233088 * k + 21271948) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10635974) = 7558272 * k + 5317987 := by
    unfold C
    simp [show (15116544 * k + 10635974) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5317987) = 22674816 * k + 15953962 := by
    unfold C
    simp [show (7558272 * k + 5317987) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15953962) = 11337408 * k + 7976981 := by
    unfold C
    simp [show (22674816 * k + 15953962) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7976981) = 34012224 * k + 23930944 := by
    unfold C
    simp [show (11337408 * k + 7976981) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 23930944) = 17006112 * k + 11965472 := by
    unfold C
    simp [show (34012224 * k + 23930944) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11965472) = 8503056 * k + 5982736 := by
    unfold C
    simp [show (17006112 * k + 11965472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5982736) = 4251528 * k + 2991368 := by
    unfold C
    simp [show (8503056 * k + 5982736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2991368) = 2125764 * k + 1495684 := by
    unfold C
    simp [show (4251528 * k + 2991368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1495684) = 1062882 * k + 747842 := by
    unfold C
    simp [show (2125764 * k + 1495684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 747842) = 531441 * k + 373921 := by
    unfold C
    simp [show (1062882 * k + 747842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 737775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 737775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_738783 : ∀ k : Nat,
    iterate (1048576 * k + 738783) 32 = 531441 * k + 374432 ∧
      531441 * k + 374432 < 1048576 * k + 738783 := by
  intro k
  have h1 : C (1048576 * k + 738783) = 3145728 * k + 2216350 := by
    unfold C
    simp [show (1048576 * k + 738783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2216350) = 1572864 * k + 1108175 := by
    unfold C
    simp [show (3145728 * k + 2216350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1108175) = 4718592 * k + 3324526 := by
    unfold C
    simp [show (1572864 * k + 1108175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3324526) = 2359296 * k + 1662263 := by
    unfold C
    simp [show (4718592 * k + 3324526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1662263) = 7077888 * k + 4986790 := by
    unfold C
    simp [show (2359296 * k + 1662263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4986790) = 3538944 * k + 2493395 := by
    unfold C
    simp [show (7077888 * k + 4986790) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2493395) = 10616832 * k + 7480186 := by
    unfold C
    simp [show (3538944 * k + 2493395) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7480186) = 5308416 * k + 3740093 := by
    unfold C
    simp [show (10616832 * k + 7480186) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3740093) = 15925248 * k + 11220280 := by
    unfold C
    simp [show (5308416 * k + 3740093) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11220280) = 7962624 * k + 5610140 := by
    unfold C
    simp [show (15925248 * k + 11220280) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5610140) = 3981312 * k + 2805070 := by
    unfold C
    simp [show (7962624 * k + 5610140) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2805070) = 1990656 * k + 1402535 := by
    unfold C
    simp [show (3981312 * k + 2805070) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1402535) = 5971968 * k + 4207606 := by
    unfold C
    simp [show (1990656 * k + 1402535) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4207606) = 2985984 * k + 2103803 := by
    unfold C
    simp [show (5971968 * k + 4207606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2103803) = 8957952 * k + 6311410 := by
    unfold C
    simp [show (2985984 * k + 2103803) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6311410) = 4478976 * k + 3155705 := by
    unfold C
    simp [show (8957952 * k + 6311410) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3155705) = 13436928 * k + 9467116 := by
    unfold C
    simp [show (4478976 * k + 3155705) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9467116) = 6718464 * k + 4733558 := by
    unfold C
    simp [show (13436928 * k + 9467116) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4733558) = 3359232 * k + 2366779 := by
    unfold C
    simp [show (6718464 * k + 4733558) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2366779) = 10077696 * k + 7100338 := by
    unfold C
    simp [show (3359232 * k + 2366779) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7100338) = 5038848 * k + 3550169 := by
    unfold C
    simp [show (10077696 * k + 7100338) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3550169) = 15116544 * k + 10650508 := by
    unfold C
    simp [show (5038848 * k + 3550169) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10650508) = 7558272 * k + 5325254 := by
    unfold C
    simp [show (15116544 * k + 10650508) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5325254) = 3779136 * k + 2662627 := by
    unfold C
    simp [show (7558272 * k + 5325254) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2662627) = 11337408 * k + 7987882 := by
    unfold C
    simp [show (3779136 * k + 2662627) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7987882) = 5668704 * k + 3993941 := by
    unfold C
    simp [show (11337408 * k + 7987882) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3993941) = 17006112 * k + 11981824 := by
    unfold C
    simp [show (5668704 * k + 3993941) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11981824) = 8503056 * k + 5990912 := by
    unfold C
    simp [show (17006112 * k + 11981824) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5990912) = 4251528 * k + 2995456 := by
    unfold C
    simp [show (8503056 * k + 5990912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2995456) = 2125764 * k + 1497728 := by
    unfold C
    simp [show (4251528 * k + 2995456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1497728) = 1062882 * k + 748864 := by
    unfold C
    simp [show (2125764 * k + 1497728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 748864) = 531441 * k + 374432 := by
    unfold C
    simp [show (1062882 * k + 748864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 738783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 738783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_739183 : ∀ k : Nat,
    iterate (1048576 * k + 739183) 32 = 531441 * k + 374635 ∧
      531441 * k + 374635 < 1048576 * k + 739183 := by
  intro k
  have h1 : C (1048576 * k + 739183) = 3145728 * k + 2217550 := by
    unfold C
    simp [show (1048576 * k + 739183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2217550) = 1572864 * k + 1108775 := by
    unfold C
    simp [show (3145728 * k + 2217550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1108775) = 4718592 * k + 3326326 := by
    unfold C
    simp [show (1572864 * k + 1108775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3326326) = 2359296 * k + 1663163 := by
    unfold C
    simp [show (4718592 * k + 3326326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1663163) = 7077888 * k + 4989490 := by
    unfold C
    simp [show (2359296 * k + 1663163) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4989490) = 3538944 * k + 2494745 := by
    unfold C
    simp [show (7077888 * k + 4989490) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2494745) = 10616832 * k + 7484236 := by
    unfold C
    simp [show (3538944 * k + 2494745) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7484236) = 5308416 * k + 3742118 := by
    unfold C
    simp [show (10616832 * k + 7484236) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3742118) = 2654208 * k + 1871059 := by
    unfold C
    simp [show (5308416 * k + 3742118) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1871059) = 7962624 * k + 5613178 := by
    unfold C
    simp [show (2654208 * k + 1871059) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5613178) = 3981312 * k + 2806589 := by
    unfold C
    simp [show (7962624 * k + 5613178) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2806589) = 11943936 * k + 8419768 := by
    unfold C
    simp [show (3981312 * k + 2806589) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8419768) = 5971968 * k + 4209884 := by
    unfold C
    simp [show (11943936 * k + 8419768) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4209884) = 2985984 * k + 2104942 := by
    unfold C
    simp [show (5971968 * k + 4209884) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2104942) = 1492992 * k + 1052471 := by
    unfold C
    simp [show (2985984 * k + 2104942) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1052471) = 4478976 * k + 3157414 := by
    unfold C
    simp [show (1492992 * k + 1052471) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3157414) = 2239488 * k + 1578707 := by
    unfold C
    simp [show (4478976 * k + 3157414) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1578707) = 6718464 * k + 4736122 := by
    unfold C
    simp [show (2239488 * k + 1578707) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4736122) = 3359232 * k + 2368061 := by
    unfold C
    simp [show (6718464 * k + 4736122) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2368061) = 10077696 * k + 7104184 := by
    unfold C
    simp [show (3359232 * k + 2368061) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7104184) = 5038848 * k + 3552092 := by
    unfold C
    simp [show (10077696 * k + 7104184) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3552092) = 2519424 * k + 1776046 := by
    unfold C
    simp [show (5038848 * k + 3552092) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1776046) = 1259712 * k + 888023 := by
    unfold C
    simp [show (2519424 * k + 1776046) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 888023) = 3779136 * k + 2664070 := by
    unfold C
    simp [show (1259712 * k + 888023) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2664070) = 1889568 * k + 1332035 := by
    unfold C
    simp [show (3779136 * k + 2664070) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1332035) = 5668704 * k + 3996106 := by
    unfold C
    simp [show (1889568 * k + 1332035) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3996106) = 2834352 * k + 1998053 := by
    unfold C
    simp [show (5668704 * k + 3996106) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1998053) = 8503056 * k + 5994160 := by
    unfold C
    simp [show (2834352 * k + 1998053) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5994160) = 4251528 * k + 2997080 := by
    unfold C
    simp [show (8503056 * k + 5994160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2997080) = 2125764 * k + 1498540 := by
    unfold C
    simp [show (4251528 * k + 2997080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1498540) = 1062882 * k + 749270 := by
    unfold C
    simp [show (2125764 * k + 1498540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 749270) = 531441 * k + 374635 := by
    unfold C
    simp [show (1062882 * k + 749270) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 739183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 739183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_739807 : ∀ k : Nat,
    iterate (1048576 * k + 739807) 32 = 531441 * k + 374951 ∧
      531441 * k + 374951 < 1048576 * k + 739807 := by
  intro k
  have h1 : C (1048576 * k + 739807) = 3145728 * k + 2219422 := by
    unfold C
    simp [show (1048576 * k + 739807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2219422) = 1572864 * k + 1109711 := by
    unfold C
    simp [show (3145728 * k + 2219422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1109711) = 4718592 * k + 3329134 := by
    unfold C
    simp [show (1572864 * k + 1109711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3329134) = 2359296 * k + 1664567 := by
    unfold C
    simp [show (4718592 * k + 3329134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1664567) = 7077888 * k + 4993702 := by
    unfold C
    simp [show (2359296 * k + 1664567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4993702) = 3538944 * k + 2496851 := by
    unfold C
    simp [show (7077888 * k + 4993702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2496851) = 10616832 * k + 7490554 := by
    unfold C
    simp [show (3538944 * k + 2496851) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7490554) = 5308416 * k + 3745277 := by
    unfold C
    simp [show (10616832 * k + 7490554) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3745277) = 15925248 * k + 11235832 := by
    unfold C
    simp [show (5308416 * k + 3745277) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11235832) = 7962624 * k + 5617916 := by
    unfold C
    simp [show (15925248 * k + 11235832) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5617916) = 3981312 * k + 2808958 := by
    unfold C
    simp [show (7962624 * k + 5617916) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2808958) = 1990656 * k + 1404479 := by
    unfold C
    simp [show (3981312 * k + 2808958) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1404479) = 5971968 * k + 4213438 := by
    unfold C
    simp [show (1990656 * k + 1404479) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4213438) = 2985984 * k + 2106719 := by
    unfold C
    simp [show (5971968 * k + 4213438) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2106719) = 8957952 * k + 6320158 := by
    unfold C
    simp [show (2985984 * k + 2106719) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6320158) = 4478976 * k + 3160079 := by
    unfold C
    simp [show (8957952 * k + 6320158) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3160079) = 13436928 * k + 9480238 := by
    unfold C
    simp [show (4478976 * k + 3160079) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9480238) = 6718464 * k + 4740119 := by
    unfold C
    simp [show (13436928 * k + 9480238) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4740119) = 20155392 * k + 14220358 := by
    unfold C
    simp [show (6718464 * k + 4740119) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14220358) = 10077696 * k + 7110179 := by
    unfold C
    simp [show (20155392 * k + 14220358) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7110179) = 30233088 * k + 21330538 := by
    unfold C
    simp [show (10077696 * k + 7110179) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21330538) = 15116544 * k + 10665269 := by
    unfold C
    simp [show (30233088 * k + 21330538) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10665269) = 45349632 * k + 31995808 := by
    unfold C
    simp [show (15116544 * k + 10665269) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 31995808) = 22674816 * k + 15997904 := by
    unfold C
    simp [show (45349632 * k + 31995808) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15997904) = 11337408 * k + 7998952 := by
    unfold C
    simp [show (22674816 * k + 15997904) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7998952) = 5668704 * k + 3999476 := by
    unfold C
    simp [show (11337408 * k + 7998952) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3999476) = 2834352 * k + 1999738 := by
    unfold C
    simp [show (5668704 * k + 3999476) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1999738) = 1417176 * k + 999869 := by
    unfold C
    simp [show (2834352 * k + 1999738) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 999869) = 4251528 * k + 2999608 := by
    unfold C
    simp [show (1417176 * k + 999869) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2999608) = 2125764 * k + 1499804 := by
    unfold C
    simp [show (4251528 * k + 2999608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1499804) = 1062882 * k + 749902 := by
    unfold C
    simp [show (2125764 * k + 1499804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 749902) = 531441 * k + 374951 := by
    unfold C
    simp [show (1062882 * k + 749902) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 739807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 739807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_739967 : ∀ k : Nat,
    iterate (1048576 * k + 739967) 32 = 531441 * k + 375032 ∧
      531441 * k + 375032 < 1048576 * k + 739967 := by
  intro k
  have h1 : C (1048576 * k + 739967) = 3145728 * k + 2219902 := by
    unfold C
    simp [show (1048576 * k + 739967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2219902) = 1572864 * k + 1109951 := by
    unfold C
    simp [show (3145728 * k + 2219902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1109951) = 4718592 * k + 3329854 := by
    unfold C
    simp [show (1572864 * k + 1109951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3329854) = 2359296 * k + 1664927 := by
    unfold C
    simp [show (4718592 * k + 3329854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1664927) = 7077888 * k + 4994782 := by
    unfold C
    simp [show (2359296 * k + 1664927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4994782) = 3538944 * k + 2497391 := by
    unfold C
    simp [show (7077888 * k + 4994782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2497391) = 10616832 * k + 7492174 := by
    unfold C
    simp [show (3538944 * k + 2497391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7492174) = 5308416 * k + 3746087 := by
    unfold C
    simp [show (10616832 * k + 7492174) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3746087) = 15925248 * k + 11238262 := by
    unfold C
    simp [show (5308416 * k + 3746087) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11238262) = 7962624 * k + 5619131 := by
    unfold C
    simp [show (15925248 * k + 11238262) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5619131) = 23887872 * k + 16857394 := by
    unfold C
    simp [show (7962624 * k + 5619131) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16857394) = 11943936 * k + 8428697 := by
    unfold C
    simp [show (23887872 * k + 16857394) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8428697) = 35831808 * k + 25286092 := by
    unfold C
    simp [show (11943936 * k + 8428697) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 25286092) = 17915904 * k + 12643046 := by
    unfold C
    simp [show (35831808 * k + 25286092) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12643046) = 8957952 * k + 6321523 := by
    unfold C
    simp [show (17915904 * k + 12643046) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6321523) = 26873856 * k + 18964570 := by
    unfold C
    simp [show (8957952 * k + 6321523) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18964570) = 13436928 * k + 9482285 := by
    unfold C
    simp [show (26873856 * k + 18964570) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9482285) = 40310784 * k + 28446856 := by
    unfold C
    simp [show (13436928 * k + 9482285) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 28446856) = 20155392 * k + 14223428 := by
    unfold C
    simp [show (40310784 * k + 28446856) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14223428) = 10077696 * k + 7111714 := by
    unfold C
    simp [show (20155392 * k + 14223428) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7111714) = 5038848 * k + 3555857 := by
    unfold C
    simp [show (10077696 * k + 7111714) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3555857) = 15116544 * k + 10667572 := by
    unfold C
    simp [show (5038848 * k + 3555857) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10667572) = 7558272 * k + 5333786 := by
    unfold C
    simp [show (15116544 * k + 10667572) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5333786) = 3779136 * k + 2666893 := by
    unfold C
    simp [show (7558272 * k + 5333786) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2666893) = 11337408 * k + 8000680 := by
    unfold C
    simp [show (3779136 * k + 2666893) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8000680) = 5668704 * k + 4000340 := by
    unfold C
    simp [show (11337408 * k + 8000680) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4000340) = 2834352 * k + 2000170 := by
    unfold C
    simp [show (5668704 * k + 4000340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2000170) = 1417176 * k + 1000085 := by
    unfold C
    simp [show (2834352 * k + 2000170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1000085) = 4251528 * k + 3000256 := by
    unfold C
    simp [show (1417176 * k + 1000085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3000256) = 2125764 * k + 1500128 := by
    unfold C
    simp [show (4251528 * k + 3000256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1500128) = 1062882 * k + 750064 := by
    unfold C
    simp [show (2125764 * k + 1500128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 750064) = 531441 * k + 375032 := by
    unfold C
    simp [show (1062882 * k + 750064) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 739967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 739967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_740079 : ∀ k : Nat,
    iterate (1048576 * k + 740079) 32 = 531441 * k + 375089 ∧
      531441 * k + 375089 < 1048576 * k + 740079 := by
  intro k
  have h1 : C (1048576 * k + 740079) = 3145728 * k + 2220238 := by
    unfold C
    simp [show (1048576 * k + 740079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2220238) = 1572864 * k + 1110119 := by
    unfold C
    simp [show (3145728 * k + 2220238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1110119) = 4718592 * k + 3330358 := by
    unfold C
    simp [show (1572864 * k + 1110119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3330358) = 2359296 * k + 1665179 := by
    unfold C
    simp [show (4718592 * k + 3330358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1665179) = 7077888 * k + 4995538 := by
    unfold C
    simp [show (2359296 * k + 1665179) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4995538) = 3538944 * k + 2497769 := by
    unfold C
    simp [show (7077888 * k + 4995538) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2497769) = 10616832 * k + 7493308 := by
    unfold C
    simp [show (3538944 * k + 2497769) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7493308) = 5308416 * k + 3746654 := by
    unfold C
    simp [show (10616832 * k + 7493308) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3746654) = 2654208 * k + 1873327 := by
    unfold C
    simp [show (5308416 * k + 3746654) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1873327) = 7962624 * k + 5619982 := by
    unfold C
    simp [show (2654208 * k + 1873327) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5619982) = 3981312 * k + 2809991 := by
    unfold C
    simp [show (7962624 * k + 5619982) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2809991) = 11943936 * k + 8429974 := by
    unfold C
    simp [show (3981312 * k + 2809991) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8429974) = 5971968 * k + 4214987 := by
    unfold C
    simp [show (11943936 * k + 8429974) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4214987) = 17915904 * k + 12644962 := by
    unfold C
    simp [show (5971968 * k + 4214987) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12644962) = 8957952 * k + 6322481 := by
    unfold C
    simp [show (17915904 * k + 12644962) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6322481) = 26873856 * k + 18967444 := by
    unfold C
    simp [show (8957952 * k + 6322481) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18967444) = 13436928 * k + 9483722 := by
    unfold C
    simp [show (26873856 * k + 18967444) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9483722) = 6718464 * k + 4741861 := by
    unfold C
    simp [show (13436928 * k + 9483722) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4741861) = 20155392 * k + 14225584 := by
    unfold C
    simp [show (6718464 * k + 4741861) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14225584) = 10077696 * k + 7112792 := by
    unfold C
    simp [show (20155392 * k + 14225584) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7112792) = 5038848 * k + 3556396 := by
    unfold C
    simp [show (10077696 * k + 7112792) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3556396) = 2519424 * k + 1778198 := by
    unfold C
    simp [show (5038848 * k + 3556396) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1778198) = 1259712 * k + 889099 := by
    unfold C
    simp [show (2519424 * k + 1778198) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 889099) = 3779136 * k + 2667298 := by
    unfold C
    simp [show (1259712 * k + 889099) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2667298) = 1889568 * k + 1333649 := by
    unfold C
    simp [show (3779136 * k + 2667298) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1333649) = 5668704 * k + 4000948 := by
    unfold C
    simp [show (1889568 * k + 1333649) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4000948) = 2834352 * k + 2000474 := by
    unfold C
    simp [show (5668704 * k + 4000948) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2000474) = 1417176 * k + 1000237 := by
    unfold C
    simp [show (2834352 * k + 2000474) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1000237) = 4251528 * k + 3000712 := by
    unfold C
    simp [show (1417176 * k + 1000237) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3000712) = 2125764 * k + 1500356 := by
    unfold C
    simp [show (4251528 * k + 3000712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1500356) = 1062882 * k + 750178 := by
    unfold C
    simp [show (2125764 * k + 1500356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 750178) = 531441 * k + 375089 := by
    unfold C
    simp [show (1062882 * k + 750178) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 740079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 740079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_740207 : ∀ k : Nat,
    iterate (1048576 * k + 740207) 32 = 531441 * k + 375154 ∧
      531441 * k + 375154 < 1048576 * k + 740207 := by
  intro k
  have h1 : C (1048576 * k + 740207) = 3145728 * k + 2220622 := by
    unfold C
    simp [show (1048576 * k + 740207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2220622) = 1572864 * k + 1110311 := by
    unfold C
    simp [show (3145728 * k + 2220622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1110311) = 4718592 * k + 3330934 := by
    unfold C
    simp [show (1572864 * k + 1110311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3330934) = 2359296 * k + 1665467 := by
    unfold C
    simp [show (4718592 * k + 3330934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1665467) = 7077888 * k + 4996402 := by
    unfold C
    simp [show (2359296 * k + 1665467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4996402) = 3538944 * k + 2498201 := by
    unfold C
    simp [show (7077888 * k + 4996402) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2498201) = 10616832 * k + 7494604 := by
    unfold C
    simp [show (3538944 * k + 2498201) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7494604) = 5308416 * k + 3747302 := by
    unfold C
    simp [show (10616832 * k + 7494604) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3747302) = 2654208 * k + 1873651 := by
    unfold C
    simp [show (5308416 * k + 3747302) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1873651) = 7962624 * k + 5620954 := by
    unfold C
    simp [show (2654208 * k + 1873651) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5620954) = 3981312 * k + 2810477 := by
    unfold C
    simp [show (7962624 * k + 5620954) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2810477) = 11943936 * k + 8431432 := by
    unfold C
    simp [show (3981312 * k + 2810477) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8431432) = 5971968 * k + 4215716 := by
    unfold C
    simp [show (11943936 * k + 8431432) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4215716) = 2985984 * k + 2107858 := by
    unfold C
    simp [show (5971968 * k + 4215716) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2107858) = 1492992 * k + 1053929 := by
    unfold C
    simp [show (2985984 * k + 2107858) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1053929) = 4478976 * k + 3161788 := by
    unfold C
    simp [show (1492992 * k + 1053929) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3161788) = 2239488 * k + 1580894 := by
    unfold C
    simp [show (4478976 * k + 3161788) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1580894) = 1119744 * k + 790447 := by
    unfold C
    simp [show (2239488 * k + 1580894) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 790447) = 3359232 * k + 2371342 := by
    unfold C
    simp [show (1119744 * k + 790447) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2371342) = 1679616 * k + 1185671 := by
    unfold C
    simp [show (3359232 * k + 2371342) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1185671) = 5038848 * k + 3557014 := by
    unfold C
    simp [show (1679616 * k + 1185671) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3557014) = 2519424 * k + 1778507 := by
    unfold C
    simp [show (5038848 * k + 3557014) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1778507) = 7558272 * k + 5335522 := by
    unfold C
    simp [show (2519424 * k + 1778507) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5335522) = 3779136 * k + 2667761 := by
    unfold C
    simp [show (7558272 * k + 5335522) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2667761) = 11337408 * k + 8003284 := by
    unfold C
    simp [show (3779136 * k + 2667761) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8003284) = 5668704 * k + 4001642 := by
    unfold C
    simp [show (11337408 * k + 8003284) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4001642) = 2834352 * k + 2000821 := by
    unfold C
    simp [show (5668704 * k + 4001642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2000821) = 8503056 * k + 6002464 := by
    unfold C
    simp [show (2834352 * k + 2000821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6002464) = 4251528 * k + 3001232 := by
    unfold C
    simp [show (8503056 * k + 6002464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3001232) = 2125764 * k + 1500616 := by
    unfold C
    simp [show (4251528 * k + 3001232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1500616) = 1062882 * k + 750308 := by
    unfold C
    simp [show (2125764 * k + 1500616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 750308) = 531441 * k + 375154 := by
    unfold C
    simp [show (1062882 * k + 750308) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 740207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 740207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_740847 : ∀ k : Nat,
    iterate (1048576 * k + 740847) 32 = 531441 * k + 375478 ∧
      531441 * k + 375478 < 1048576 * k + 740847 := by
  intro k
  have h1 : C (1048576 * k + 740847) = 3145728 * k + 2222542 := by
    unfold C
    simp [show (1048576 * k + 740847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2222542) = 1572864 * k + 1111271 := by
    unfold C
    simp [show (3145728 * k + 2222542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1111271) = 4718592 * k + 3333814 := by
    unfold C
    simp [show (1572864 * k + 1111271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3333814) = 2359296 * k + 1666907 := by
    unfold C
    simp [show (4718592 * k + 3333814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1666907) = 7077888 * k + 5000722 := by
    unfold C
    simp [show (2359296 * k + 1666907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5000722) = 3538944 * k + 2500361 := by
    unfold C
    simp [show (7077888 * k + 5000722) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2500361) = 10616832 * k + 7501084 := by
    unfold C
    simp [show (3538944 * k + 2500361) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7501084) = 5308416 * k + 3750542 := by
    unfold C
    simp [show (10616832 * k + 7501084) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3750542) = 2654208 * k + 1875271 := by
    unfold C
    simp [show (5308416 * k + 3750542) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1875271) = 7962624 * k + 5625814 := by
    unfold C
    simp [show (2654208 * k + 1875271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5625814) = 3981312 * k + 2812907 := by
    unfold C
    simp [show (7962624 * k + 5625814) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2812907) = 11943936 * k + 8438722 := by
    unfold C
    simp [show (3981312 * k + 2812907) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8438722) = 5971968 * k + 4219361 := by
    unfold C
    simp [show (11943936 * k + 8438722) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4219361) = 17915904 * k + 12658084 := by
    unfold C
    simp [show (5971968 * k + 4219361) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12658084) = 8957952 * k + 6329042 := by
    unfold C
    simp [show (17915904 * k + 12658084) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6329042) = 4478976 * k + 3164521 := by
    unfold C
    simp [show (8957952 * k + 6329042) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3164521) = 13436928 * k + 9493564 := by
    unfold C
    simp [show (4478976 * k + 3164521) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9493564) = 6718464 * k + 4746782 := by
    unfold C
    simp [show (13436928 * k + 9493564) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4746782) = 3359232 * k + 2373391 := by
    unfold C
    simp [show (6718464 * k + 4746782) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2373391) = 10077696 * k + 7120174 := by
    unfold C
    simp [show (3359232 * k + 2373391) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7120174) = 5038848 * k + 3560087 := by
    unfold C
    simp [show (10077696 * k + 7120174) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3560087) = 15116544 * k + 10680262 := by
    unfold C
    simp [show (5038848 * k + 3560087) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10680262) = 7558272 * k + 5340131 := by
    unfold C
    simp [show (15116544 * k + 10680262) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5340131) = 22674816 * k + 16020394 := by
    unfold C
    simp [show (7558272 * k + 5340131) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16020394) = 11337408 * k + 8010197 := by
    unfold C
    simp [show (22674816 * k + 16020394) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8010197) = 34012224 * k + 24030592 := by
    unfold C
    simp [show (11337408 * k + 8010197) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 24030592) = 17006112 * k + 12015296 := by
    unfold C
    simp [show (34012224 * k + 24030592) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12015296) = 8503056 * k + 6007648 := by
    unfold C
    simp [show (17006112 * k + 12015296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6007648) = 4251528 * k + 3003824 := by
    unfold C
    simp [show (8503056 * k + 6007648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3003824) = 2125764 * k + 1501912 := by
    unfold C
    simp [show (4251528 * k + 3003824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1501912) = 1062882 * k + 750956 := by
    unfold C
    simp [show (2125764 * k + 1501912) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 750956) = 531441 * k + 375478 := by
    unfold C
    simp [show (1062882 * k + 750956) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 740847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 740847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_741279 : ∀ k : Nat,
    iterate (1048576 * k + 741279) 32 = 531441 * k + 375697 ∧
      531441 * k + 375697 < 1048576 * k + 741279 := by
  intro k
  have h1 : C (1048576 * k + 741279) = 3145728 * k + 2223838 := by
    unfold C
    simp [show (1048576 * k + 741279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2223838) = 1572864 * k + 1111919 := by
    unfold C
    simp [show (3145728 * k + 2223838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1111919) = 4718592 * k + 3335758 := by
    unfold C
    simp [show (1572864 * k + 1111919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3335758) = 2359296 * k + 1667879 := by
    unfold C
    simp [show (4718592 * k + 3335758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1667879) = 7077888 * k + 5003638 := by
    unfold C
    simp [show (2359296 * k + 1667879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5003638) = 3538944 * k + 2501819 := by
    unfold C
    simp [show (7077888 * k + 5003638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2501819) = 10616832 * k + 7505458 := by
    unfold C
    simp [show (3538944 * k + 2501819) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7505458) = 5308416 * k + 3752729 := by
    unfold C
    simp [show (10616832 * k + 7505458) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3752729) = 15925248 * k + 11258188 := by
    unfold C
    simp [show (5308416 * k + 3752729) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11258188) = 7962624 * k + 5629094 := by
    unfold C
    simp [show (15925248 * k + 11258188) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5629094) = 3981312 * k + 2814547 := by
    unfold C
    simp [show (7962624 * k + 5629094) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2814547) = 11943936 * k + 8443642 := by
    unfold C
    simp [show (3981312 * k + 2814547) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8443642) = 5971968 * k + 4221821 := by
    unfold C
    simp [show (11943936 * k + 8443642) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4221821) = 17915904 * k + 12665464 := by
    unfold C
    simp [show (5971968 * k + 4221821) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12665464) = 8957952 * k + 6332732 := by
    unfold C
    simp [show (17915904 * k + 12665464) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6332732) = 4478976 * k + 3166366 := by
    unfold C
    simp [show (8957952 * k + 6332732) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3166366) = 2239488 * k + 1583183 := by
    unfold C
    simp [show (4478976 * k + 3166366) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1583183) = 6718464 * k + 4749550 := by
    unfold C
    simp [show (2239488 * k + 1583183) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4749550) = 3359232 * k + 2374775 := by
    unfold C
    simp [show (6718464 * k + 4749550) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2374775) = 10077696 * k + 7124326 := by
    unfold C
    simp [show (3359232 * k + 2374775) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7124326) = 5038848 * k + 3562163 := by
    unfold C
    simp [show (10077696 * k + 7124326) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3562163) = 15116544 * k + 10686490 := by
    unfold C
    simp [show (5038848 * k + 3562163) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10686490) = 7558272 * k + 5343245 := by
    unfold C
    simp [show (15116544 * k + 10686490) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5343245) = 22674816 * k + 16029736 := by
    unfold C
    simp [show (7558272 * k + 5343245) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16029736) = 11337408 * k + 8014868 := by
    unfold C
    simp [show (22674816 * k + 16029736) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8014868) = 5668704 * k + 4007434 := by
    unfold C
    simp [show (11337408 * k + 8014868) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4007434) = 2834352 * k + 2003717 := by
    unfold C
    simp [show (5668704 * k + 4007434) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2003717) = 8503056 * k + 6011152 := by
    unfold C
    simp [show (2834352 * k + 2003717) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6011152) = 4251528 * k + 3005576 := by
    unfold C
    simp [show (8503056 * k + 6011152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3005576) = 2125764 * k + 1502788 := by
    unfold C
    simp [show (4251528 * k + 3005576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1502788) = 1062882 * k + 751394 := by
    unfold C
    simp [show (2125764 * k + 1502788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 751394) = 531441 * k + 375697 := by
    unfold C
    simp [show (1062882 * k + 751394) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 741279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 741279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_741855 : ∀ k : Nat,
    iterate (1048576 * k + 741855) 32 = 531441 * k + 375989 ∧
      531441 * k + 375989 < 1048576 * k + 741855 := by
  intro k
  have h1 : C (1048576 * k + 741855) = 3145728 * k + 2225566 := by
    unfold C
    simp [show (1048576 * k + 741855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2225566) = 1572864 * k + 1112783 := by
    unfold C
    simp [show (3145728 * k + 2225566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1112783) = 4718592 * k + 3338350 := by
    unfold C
    simp [show (1572864 * k + 1112783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3338350) = 2359296 * k + 1669175 := by
    unfold C
    simp [show (4718592 * k + 3338350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1669175) = 7077888 * k + 5007526 := by
    unfold C
    simp [show (2359296 * k + 1669175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5007526) = 3538944 * k + 2503763 := by
    unfold C
    simp [show (7077888 * k + 5007526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2503763) = 10616832 * k + 7511290 := by
    unfold C
    simp [show (3538944 * k + 2503763) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7511290) = 5308416 * k + 3755645 := by
    unfold C
    simp [show (10616832 * k + 7511290) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3755645) = 15925248 * k + 11266936 := by
    unfold C
    simp [show (5308416 * k + 3755645) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11266936) = 7962624 * k + 5633468 := by
    unfold C
    simp [show (15925248 * k + 11266936) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5633468) = 3981312 * k + 2816734 := by
    unfold C
    simp [show (7962624 * k + 5633468) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2816734) = 1990656 * k + 1408367 := by
    unfold C
    simp [show (3981312 * k + 2816734) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1408367) = 5971968 * k + 4225102 := by
    unfold C
    simp [show (1990656 * k + 1408367) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4225102) = 2985984 * k + 2112551 := by
    unfold C
    simp [show (5971968 * k + 4225102) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2112551) = 8957952 * k + 6337654 := by
    unfold C
    simp [show (2985984 * k + 2112551) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6337654) = 4478976 * k + 3168827 := by
    unfold C
    simp [show (8957952 * k + 6337654) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3168827) = 13436928 * k + 9506482 := by
    unfold C
    simp [show (4478976 * k + 3168827) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9506482) = 6718464 * k + 4753241 := by
    unfold C
    simp [show (13436928 * k + 9506482) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4753241) = 20155392 * k + 14259724 := by
    unfold C
    simp [show (6718464 * k + 4753241) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14259724) = 10077696 * k + 7129862 := by
    unfold C
    simp [show (20155392 * k + 14259724) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7129862) = 5038848 * k + 3564931 := by
    unfold C
    simp [show (10077696 * k + 7129862) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3564931) = 15116544 * k + 10694794 := by
    unfold C
    simp [show (5038848 * k + 3564931) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10694794) = 7558272 * k + 5347397 := by
    unfold C
    simp [show (15116544 * k + 10694794) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5347397) = 22674816 * k + 16042192 := by
    unfold C
    simp [show (7558272 * k + 5347397) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16042192) = 11337408 * k + 8021096 := by
    unfold C
    simp [show (22674816 * k + 16042192) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8021096) = 5668704 * k + 4010548 := by
    unfold C
    simp [show (11337408 * k + 8021096) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4010548) = 2834352 * k + 2005274 := by
    unfold C
    simp [show (5668704 * k + 4010548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2005274) = 1417176 * k + 1002637 := by
    unfold C
    simp [show (2834352 * k + 2005274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1002637) = 4251528 * k + 3007912 := by
    unfold C
    simp [show (1417176 * k + 1002637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3007912) = 2125764 * k + 1503956 := by
    unfold C
    simp [show (4251528 * k + 3007912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1503956) = 1062882 * k + 751978 := by
    unfold C
    simp [show (2125764 * k + 1503956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 751978) = 531441 * k + 375989 := by
    unfold C
    simp [show (1062882 * k + 751978) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 741855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 741855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_741979 : ∀ k : Nat,
    iterate (1048576 * k + 741979) 32 = 531441 * k + 376052 ∧
      531441 * k + 376052 < 1048576 * k + 741979 := by
  intro k
  have h1 : C (1048576 * k + 741979) = 3145728 * k + 2225938 := by
    unfold C
    simp [show (1048576 * k + 741979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2225938) = 1572864 * k + 1112969 := by
    unfold C
    simp [show (3145728 * k + 2225938) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1112969) = 4718592 * k + 3338908 := by
    unfold C
    simp [show (1572864 * k + 1112969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3338908) = 2359296 * k + 1669454 := by
    unfold C
    simp [show (4718592 * k + 3338908) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1669454) = 1179648 * k + 834727 := by
    unfold C
    simp [show (2359296 * k + 1669454) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 834727) = 3538944 * k + 2504182 := by
    unfold C
    simp [show (1179648 * k + 834727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2504182) = 1769472 * k + 1252091 := by
    unfold C
    simp [show (3538944 * k + 2504182) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1252091) = 5308416 * k + 3756274 := by
    unfold C
    simp [show (1769472 * k + 1252091) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3756274) = 2654208 * k + 1878137 := by
    unfold C
    simp [show (5308416 * k + 3756274) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1878137) = 7962624 * k + 5634412 := by
    unfold C
    simp [show (2654208 * k + 1878137) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5634412) = 3981312 * k + 2817206 := by
    unfold C
    simp [show (7962624 * k + 5634412) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2817206) = 1990656 * k + 1408603 := by
    unfold C
    simp [show (3981312 * k + 2817206) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1408603) = 5971968 * k + 4225810 := by
    unfold C
    simp [show (1990656 * k + 1408603) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4225810) = 2985984 * k + 2112905 := by
    unfold C
    simp [show (5971968 * k + 4225810) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2112905) = 8957952 * k + 6338716 := by
    unfold C
    simp [show (2985984 * k + 2112905) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6338716) = 4478976 * k + 3169358 := by
    unfold C
    simp [show (8957952 * k + 6338716) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3169358) = 2239488 * k + 1584679 := by
    unfold C
    simp [show (4478976 * k + 3169358) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1584679) = 6718464 * k + 4754038 := by
    unfold C
    simp [show (2239488 * k + 1584679) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4754038) = 3359232 * k + 2377019 := by
    unfold C
    simp [show (6718464 * k + 4754038) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2377019) = 10077696 * k + 7131058 := by
    unfold C
    simp [show (3359232 * k + 2377019) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7131058) = 5038848 * k + 3565529 := by
    unfold C
    simp [show (10077696 * k + 7131058) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3565529) = 15116544 * k + 10696588 := by
    unfold C
    simp [show (5038848 * k + 3565529) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10696588) = 7558272 * k + 5348294 := by
    unfold C
    simp [show (15116544 * k + 10696588) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5348294) = 3779136 * k + 2674147 := by
    unfold C
    simp [show (7558272 * k + 5348294) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2674147) = 11337408 * k + 8022442 := by
    unfold C
    simp [show (3779136 * k + 2674147) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8022442) = 5668704 * k + 4011221 := by
    unfold C
    simp [show (11337408 * k + 8022442) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4011221) = 17006112 * k + 12033664 := by
    unfold C
    simp [show (5668704 * k + 4011221) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12033664) = 8503056 * k + 6016832 := by
    unfold C
    simp [show (17006112 * k + 12033664) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6016832) = 4251528 * k + 3008416 := by
    unfold C
    simp [show (8503056 * k + 6016832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3008416) = 2125764 * k + 1504208 := by
    unfold C
    simp [show (4251528 * k + 3008416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1504208) = 1062882 * k + 752104 := by
    unfold C
    simp [show (2125764 * k + 1504208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 752104) = 531441 * k + 376052 := by
    unfold C
    simp [show (1062882 * k + 752104) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 741979) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 741979)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_742015 : ∀ k : Nat,
    iterate (1048576 * k + 742015) 32 = 531441 * k + 376070 ∧
      531441 * k + 376070 < 1048576 * k + 742015 := by
  intro k
  have h1 : C (1048576 * k + 742015) = 3145728 * k + 2226046 := by
    unfold C
    simp [show (1048576 * k + 742015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2226046) = 1572864 * k + 1113023 := by
    unfold C
    simp [show (3145728 * k + 2226046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1113023) = 4718592 * k + 3339070 := by
    unfold C
    simp [show (1572864 * k + 1113023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3339070) = 2359296 * k + 1669535 := by
    unfold C
    simp [show (4718592 * k + 3339070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1669535) = 7077888 * k + 5008606 := by
    unfold C
    simp [show (2359296 * k + 1669535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5008606) = 3538944 * k + 2504303 := by
    unfold C
    simp [show (7077888 * k + 5008606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2504303) = 10616832 * k + 7512910 := by
    unfold C
    simp [show (3538944 * k + 2504303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7512910) = 5308416 * k + 3756455 := by
    unfold C
    simp [show (10616832 * k + 7512910) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3756455) = 15925248 * k + 11269366 := by
    unfold C
    simp [show (5308416 * k + 3756455) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11269366) = 7962624 * k + 5634683 := by
    unfold C
    simp [show (15925248 * k + 11269366) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5634683) = 23887872 * k + 16904050 := by
    unfold C
    simp [show (7962624 * k + 5634683) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16904050) = 11943936 * k + 8452025 := by
    unfold C
    simp [show (23887872 * k + 16904050) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8452025) = 35831808 * k + 25356076 := by
    unfold C
    simp [show (11943936 * k + 8452025) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 25356076) = 17915904 * k + 12678038 := by
    unfold C
    simp [show (35831808 * k + 25356076) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12678038) = 8957952 * k + 6339019 := by
    unfold C
    simp [show (17915904 * k + 12678038) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6339019) = 26873856 * k + 19017058 := by
    unfold C
    simp [show (8957952 * k + 6339019) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19017058) = 13436928 * k + 9508529 := by
    unfold C
    simp [show (26873856 * k + 19017058) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9508529) = 40310784 * k + 28525588 := by
    unfold C
    simp [show (13436928 * k + 9508529) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 28525588) = 20155392 * k + 14262794 := by
    unfold C
    simp [show (40310784 * k + 28525588) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14262794) = 10077696 * k + 7131397 := by
    unfold C
    simp [show (20155392 * k + 14262794) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7131397) = 30233088 * k + 21394192 := by
    unfold C
    simp [show (10077696 * k + 7131397) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21394192) = 15116544 * k + 10697096 := by
    unfold C
    simp [show (30233088 * k + 21394192) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10697096) = 7558272 * k + 5348548 := by
    unfold C
    simp [show (15116544 * k + 10697096) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5348548) = 3779136 * k + 2674274 := by
    unfold C
    simp [show (7558272 * k + 5348548) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2674274) = 1889568 * k + 1337137 := by
    unfold C
    simp [show (3779136 * k + 2674274) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1337137) = 5668704 * k + 4011412 := by
    unfold C
    simp [show (1889568 * k + 1337137) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4011412) = 2834352 * k + 2005706 := by
    unfold C
    simp [show (5668704 * k + 4011412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2005706) = 1417176 * k + 1002853 := by
    unfold C
    simp [show (2834352 * k + 2005706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1002853) = 4251528 * k + 3008560 := by
    unfold C
    simp [show (1417176 * k + 1002853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3008560) = 2125764 * k + 1504280 := by
    unfold C
    simp [show (4251528 * k + 3008560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1504280) = 1062882 * k + 752140 := by
    unfold C
    simp [show (2125764 * k + 1504280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 752140) = 531441 * k + 376070 := by
    unfold C
    simp [show (1062882 * k + 752140) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 742015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 742015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_743919 : ∀ k : Nat,
    iterate (1048576 * k + 743919) 32 = 531441 * k + 377035 ∧
      531441 * k + 377035 < 1048576 * k + 743919 := by
  intro k
  have h1 : C (1048576 * k + 743919) = 3145728 * k + 2231758 := by
    unfold C
    simp [show (1048576 * k + 743919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2231758) = 1572864 * k + 1115879 := by
    unfold C
    simp [show (3145728 * k + 2231758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1115879) = 4718592 * k + 3347638 := by
    unfold C
    simp [show (1572864 * k + 1115879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3347638) = 2359296 * k + 1673819 := by
    unfold C
    simp [show (4718592 * k + 3347638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1673819) = 7077888 * k + 5021458 := by
    unfold C
    simp [show (2359296 * k + 1673819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5021458) = 3538944 * k + 2510729 := by
    unfold C
    simp [show (7077888 * k + 5021458) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2510729) = 10616832 * k + 7532188 := by
    unfold C
    simp [show (3538944 * k + 2510729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7532188) = 5308416 * k + 3766094 := by
    unfold C
    simp [show (10616832 * k + 7532188) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3766094) = 2654208 * k + 1883047 := by
    unfold C
    simp [show (5308416 * k + 3766094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1883047) = 7962624 * k + 5649142 := by
    unfold C
    simp [show (2654208 * k + 1883047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5649142) = 3981312 * k + 2824571 := by
    unfold C
    simp [show (7962624 * k + 5649142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2824571) = 11943936 * k + 8473714 := by
    unfold C
    simp [show (3981312 * k + 2824571) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8473714) = 5971968 * k + 4236857 := by
    unfold C
    simp [show (11943936 * k + 8473714) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4236857) = 17915904 * k + 12710572 := by
    unfold C
    simp [show (5971968 * k + 4236857) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12710572) = 8957952 * k + 6355286 := by
    unfold C
    simp [show (17915904 * k + 12710572) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6355286) = 4478976 * k + 3177643 := by
    unfold C
    simp [show (8957952 * k + 6355286) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3177643) = 13436928 * k + 9532930 := by
    unfold C
    simp [show (4478976 * k + 3177643) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9532930) = 6718464 * k + 4766465 := by
    unfold C
    simp [show (13436928 * k + 9532930) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4766465) = 20155392 * k + 14299396 := by
    unfold C
    simp [show (6718464 * k + 4766465) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14299396) = 10077696 * k + 7149698 := by
    unfold C
    simp [show (20155392 * k + 14299396) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7149698) = 5038848 * k + 3574849 := by
    unfold C
    simp [show (10077696 * k + 7149698) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3574849) = 15116544 * k + 10724548 := by
    unfold C
    simp [show (5038848 * k + 3574849) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10724548) = 7558272 * k + 5362274 := by
    unfold C
    simp [show (15116544 * k + 10724548) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5362274) = 3779136 * k + 2681137 := by
    unfold C
    simp [show (7558272 * k + 5362274) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2681137) = 11337408 * k + 8043412 := by
    unfold C
    simp [show (3779136 * k + 2681137) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8043412) = 5668704 * k + 4021706 := by
    unfold C
    simp [show (11337408 * k + 8043412) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4021706) = 2834352 * k + 2010853 := by
    unfold C
    simp [show (5668704 * k + 4021706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2010853) = 8503056 * k + 6032560 := by
    unfold C
    simp [show (2834352 * k + 2010853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6032560) = 4251528 * k + 3016280 := by
    unfold C
    simp [show (8503056 * k + 6032560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3016280) = 2125764 * k + 1508140 := by
    unfold C
    simp [show (4251528 * k + 3016280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1508140) = 1062882 * k + 754070 := by
    unfold C
    simp [show (2125764 * k + 1508140) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 754070) = 531441 * k + 377035 := by
    unfold C
    simp [show (1062882 * k + 754070) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 743919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 743919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard095
