import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard050

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_394175 : ∀ k : Nat,
    iterate (1048576 * k + 394175) 32 = 531441 * k + 199777 ∧
      531441 * k + 199777 < 1048576 * k + 394175 := by
  intro k
  have h1 : C (1048576 * k + 394175) = 3145728 * k + 1182526 := by
    unfold C
    simp [show (1048576 * k + 394175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1182526) = 1572864 * k + 591263 := by
    unfold C
    simp [show (3145728 * k + 1182526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 591263) = 4718592 * k + 1773790 := by
    unfold C
    simp [show (1572864 * k + 591263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1773790) = 2359296 * k + 886895 := by
    unfold C
    simp [show (4718592 * k + 1773790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 886895) = 7077888 * k + 2660686 := by
    unfold C
    simp [show (2359296 * k + 886895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2660686) = 3538944 * k + 1330343 := by
    unfold C
    simp [show (7077888 * k + 2660686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1330343) = 10616832 * k + 3991030 := by
    unfold C
    simp [show (3538944 * k + 1330343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3991030) = 5308416 * k + 1995515 := by
    unfold C
    simp [show (10616832 * k + 3991030) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1995515) = 15925248 * k + 5986546 := by
    unfold C
    simp [show (5308416 * k + 1995515) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5986546) = 7962624 * k + 2993273 := by
    unfold C
    simp [show (15925248 * k + 5986546) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2993273) = 23887872 * k + 8979820 := by
    unfold C
    simp [show (7962624 * k + 2993273) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8979820) = 11943936 * k + 4489910 := by
    unfold C
    simp [show (23887872 * k + 8979820) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4489910) = 5971968 * k + 2244955 := by
    unfold C
    simp [show (11943936 * k + 4489910) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2244955) = 17915904 * k + 6734866 := by
    unfold C
    simp [show (5971968 * k + 2244955) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6734866) = 8957952 * k + 3367433 := by
    unfold C
    simp [show (17915904 * k + 6734866) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3367433) = 26873856 * k + 10102300 := by
    unfold C
    simp [show (8957952 * k + 3367433) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10102300) = 13436928 * k + 5051150 := by
    unfold C
    simp [show (26873856 * k + 10102300) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5051150) = 6718464 * k + 2525575 := by
    unfold C
    simp [show (13436928 * k + 5051150) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2525575) = 20155392 * k + 7576726 := by
    unfold C
    simp [show (6718464 * k + 2525575) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7576726) = 10077696 * k + 3788363 := by
    unfold C
    simp [show (20155392 * k + 7576726) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3788363) = 30233088 * k + 11365090 := by
    unfold C
    simp [show (10077696 * k + 3788363) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11365090) = 15116544 * k + 5682545 := by
    unfold C
    simp [show (30233088 * k + 11365090) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5682545) = 45349632 * k + 17047636 := by
    unfold C
    simp [show (15116544 * k + 5682545) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 17047636) = 22674816 * k + 8523818 := by
    unfold C
    simp [show (45349632 * k + 17047636) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8523818) = 11337408 * k + 4261909 := by
    unfold C
    simp [show (22674816 * k + 8523818) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4261909) = 34012224 * k + 12785728 := by
    unfold C
    simp [show (11337408 * k + 4261909) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 12785728) = 17006112 * k + 6392864 := by
    unfold C
    simp [show (34012224 * k + 12785728) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6392864) = 8503056 * k + 3196432 := by
    unfold C
    simp [show (17006112 * k + 6392864) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3196432) = 4251528 * k + 1598216 := by
    unfold C
    simp [show (8503056 * k + 3196432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1598216) = 2125764 * k + 799108 := by
    unfold C
    simp [show (4251528 * k + 1598216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 799108) = 1062882 * k + 399554 := by
    unfold C
    simp [show (2125764 * k + 799108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 399554) = 531441 * k + 199777 := by
    unfold C
    simp [show (1062882 * k + 399554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 394175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 394175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_394559 : ∀ k : Nat,
    iterate (1048576 * k + 394559) 32 = 531441 * k + 199972 ∧
      531441 * k + 199972 < 1048576 * k + 394559 := by
  intro k
  have h1 : C (1048576 * k + 394559) = 3145728 * k + 1183678 := by
    unfold C
    simp [show (1048576 * k + 394559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1183678) = 1572864 * k + 591839 := by
    unfold C
    simp [show (3145728 * k + 1183678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 591839) = 4718592 * k + 1775518 := by
    unfold C
    simp [show (1572864 * k + 591839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1775518) = 2359296 * k + 887759 := by
    unfold C
    simp [show (4718592 * k + 1775518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 887759) = 7077888 * k + 2663278 := by
    unfold C
    simp [show (2359296 * k + 887759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2663278) = 3538944 * k + 1331639 := by
    unfold C
    simp [show (7077888 * k + 2663278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1331639) = 10616832 * k + 3994918 := by
    unfold C
    simp [show (3538944 * k + 1331639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3994918) = 5308416 * k + 1997459 := by
    unfold C
    simp [show (10616832 * k + 3994918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1997459) = 15925248 * k + 5992378 := by
    unfold C
    simp [show (5308416 * k + 1997459) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5992378) = 7962624 * k + 2996189 := by
    unfold C
    simp [show (15925248 * k + 5992378) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2996189) = 23887872 * k + 8988568 := by
    unfold C
    simp [show (7962624 * k + 2996189) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8988568) = 11943936 * k + 4494284 := by
    unfold C
    simp [show (23887872 * k + 8988568) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4494284) = 5971968 * k + 2247142 := by
    unfold C
    simp [show (11943936 * k + 4494284) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2247142) = 2985984 * k + 1123571 := by
    unfold C
    simp [show (5971968 * k + 2247142) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1123571) = 8957952 * k + 3370714 := by
    unfold C
    simp [show (2985984 * k + 1123571) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3370714) = 4478976 * k + 1685357 := by
    unfold C
    simp [show (8957952 * k + 3370714) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1685357) = 13436928 * k + 5056072 := by
    unfold C
    simp [show (4478976 * k + 1685357) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5056072) = 6718464 * k + 2528036 := by
    unfold C
    simp [show (13436928 * k + 5056072) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2528036) = 3359232 * k + 1264018 := by
    unfold C
    simp [show (6718464 * k + 2528036) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1264018) = 1679616 * k + 632009 := by
    unfold C
    simp [show (3359232 * k + 1264018) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 632009) = 5038848 * k + 1896028 := by
    unfold C
    simp [show (1679616 * k + 632009) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1896028) = 2519424 * k + 948014 := by
    unfold C
    simp [show (5038848 * k + 1896028) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 948014) = 1259712 * k + 474007 := by
    unfold C
    simp [show (2519424 * k + 948014) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 474007) = 3779136 * k + 1422022 := by
    unfold C
    simp [show (1259712 * k + 474007) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1422022) = 1889568 * k + 711011 := by
    unfold C
    simp [show (3779136 * k + 1422022) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 711011) = 5668704 * k + 2133034 := by
    unfold C
    simp [show (1889568 * k + 711011) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2133034) = 2834352 * k + 1066517 := by
    unfold C
    simp [show (5668704 * k + 2133034) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1066517) = 8503056 * k + 3199552 := by
    unfold C
    simp [show (2834352 * k + 1066517) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3199552) = 4251528 * k + 1599776 := by
    unfold C
    simp [show (8503056 * k + 3199552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1599776) = 2125764 * k + 799888 := by
    unfold C
    simp [show (4251528 * k + 1599776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 799888) = 1062882 * k + 399944 := by
    unfold C
    simp [show (2125764 * k + 799888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 399944) = 531441 * k + 199972 := by
    unfold C
    simp [show (1062882 * k + 399944) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 394559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 394559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_394719 : ∀ k : Nat,
    iterate (1048576 * k + 394719) 32 = 531441 * k + 200053 ∧
      531441 * k + 200053 < 1048576 * k + 394719 := by
  intro k
  have h1 : C (1048576 * k + 394719) = 3145728 * k + 1184158 := by
    unfold C
    simp [show (1048576 * k + 394719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1184158) = 1572864 * k + 592079 := by
    unfold C
    simp [show (3145728 * k + 1184158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 592079) = 4718592 * k + 1776238 := by
    unfold C
    simp [show (1572864 * k + 592079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1776238) = 2359296 * k + 888119 := by
    unfold C
    simp [show (4718592 * k + 1776238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 888119) = 7077888 * k + 2664358 := by
    unfold C
    simp [show (2359296 * k + 888119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2664358) = 3538944 * k + 1332179 := by
    unfold C
    simp [show (7077888 * k + 2664358) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1332179) = 10616832 * k + 3996538 := by
    unfold C
    simp [show (3538944 * k + 1332179) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3996538) = 5308416 * k + 1998269 := by
    unfold C
    simp [show (10616832 * k + 3996538) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1998269) = 15925248 * k + 5994808 := by
    unfold C
    simp [show (5308416 * k + 1998269) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5994808) = 7962624 * k + 2997404 := by
    unfold C
    simp [show (15925248 * k + 5994808) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2997404) = 3981312 * k + 1498702 := by
    unfold C
    simp [show (7962624 * k + 2997404) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1498702) = 1990656 * k + 749351 := by
    unfold C
    simp [show (3981312 * k + 1498702) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 749351) = 5971968 * k + 2248054 := by
    unfold C
    simp [show (1990656 * k + 749351) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2248054) = 2985984 * k + 1124027 := by
    unfold C
    simp [show (5971968 * k + 2248054) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1124027) = 8957952 * k + 3372082 := by
    unfold C
    simp [show (2985984 * k + 1124027) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3372082) = 4478976 * k + 1686041 := by
    unfold C
    simp [show (8957952 * k + 3372082) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1686041) = 13436928 * k + 5058124 := by
    unfold C
    simp [show (4478976 * k + 1686041) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5058124) = 6718464 * k + 2529062 := by
    unfold C
    simp [show (13436928 * k + 5058124) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2529062) = 3359232 * k + 1264531 := by
    unfold C
    simp [show (6718464 * k + 2529062) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1264531) = 10077696 * k + 3793594 := by
    unfold C
    simp [show (3359232 * k + 1264531) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3793594) = 5038848 * k + 1896797 := by
    unfold C
    simp [show (10077696 * k + 3793594) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1896797) = 15116544 * k + 5690392 := by
    unfold C
    simp [show (5038848 * k + 1896797) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5690392) = 7558272 * k + 2845196 := by
    unfold C
    simp [show (15116544 * k + 5690392) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2845196) = 3779136 * k + 1422598 := by
    unfold C
    simp [show (7558272 * k + 2845196) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1422598) = 1889568 * k + 711299 := by
    unfold C
    simp [show (3779136 * k + 1422598) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 711299) = 5668704 * k + 2133898 := by
    unfold C
    simp [show (1889568 * k + 711299) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2133898) = 2834352 * k + 1066949 := by
    unfold C
    simp [show (5668704 * k + 2133898) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1066949) = 8503056 * k + 3200848 := by
    unfold C
    simp [show (2834352 * k + 1066949) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3200848) = 4251528 * k + 1600424 := by
    unfold C
    simp [show (8503056 * k + 3200848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1600424) = 2125764 * k + 800212 := by
    unfold C
    simp [show (4251528 * k + 1600424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 800212) = 1062882 * k + 400106 := by
    unfold C
    simp [show (2125764 * k + 800212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 400106) = 531441 * k + 200053 := by
    unfold C
    simp [show (1062882 * k + 400106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 394719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 394719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_395099 : ∀ k : Nat,
    iterate (1048576 * k + 395099) 32 = 531441 * k + 200246 ∧
      531441 * k + 200246 < 1048576 * k + 395099 := by
  intro k
  have h1 : C (1048576 * k + 395099) = 3145728 * k + 1185298 := by
    unfold C
    simp [show (1048576 * k + 395099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1185298) = 1572864 * k + 592649 := by
    unfold C
    simp [show (3145728 * k + 1185298) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 592649) = 4718592 * k + 1777948 := by
    unfold C
    simp [show (1572864 * k + 592649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1777948) = 2359296 * k + 888974 := by
    unfold C
    simp [show (4718592 * k + 1777948) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 888974) = 1179648 * k + 444487 := by
    unfold C
    simp [show (2359296 * k + 888974) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 444487) = 3538944 * k + 1333462 := by
    unfold C
    simp [show (1179648 * k + 444487) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1333462) = 1769472 * k + 666731 := by
    unfold C
    simp [show (3538944 * k + 1333462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 666731) = 5308416 * k + 2000194 := by
    unfold C
    simp [show (1769472 * k + 666731) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2000194) = 2654208 * k + 1000097 := by
    unfold C
    simp [show (5308416 * k + 2000194) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1000097) = 7962624 * k + 3000292 := by
    unfold C
    simp [show (2654208 * k + 1000097) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3000292) = 3981312 * k + 1500146 := by
    unfold C
    simp [show (7962624 * k + 3000292) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1500146) = 1990656 * k + 750073 := by
    unfold C
    simp [show (3981312 * k + 1500146) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 750073) = 5971968 * k + 2250220 := by
    unfold C
    simp [show (1990656 * k + 750073) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2250220) = 2985984 * k + 1125110 := by
    unfold C
    simp [show (5971968 * k + 2250220) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1125110) = 1492992 * k + 562555 := by
    unfold C
    simp [show (2985984 * k + 1125110) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 562555) = 4478976 * k + 1687666 := by
    unfold C
    simp [show (1492992 * k + 562555) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1687666) = 2239488 * k + 843833 := by
    unfold C
    simp [show (4478976 * k + 1687666) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 843833) = 6718464 * k + 2531500 := by
    unfold C
    simp [show (2239488 * k + 843833) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2531500) = 3359232 * k + 1265750 := by
    unfold C
    simp [show (6718464 * k + 2531500) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1265750) = 1679616 * k + 632875 := by
    unfold C
    simp [show (3359232 * k + 1265750) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 632875) = 5038848 * k + 1898626 := by
    unfold C
    simp [show (1679616 * k + 632875) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1898626) = 2519424 * k + 949313 := by
    unfold C
    simp [show (5038848 * k + 1898626) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 949313) = 7558272 * k + 2847940 := by
    unfold C
    simp [show (2519424 * k + 949313) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2847940) = 3779136 * k + 1423970 := by
    unfold C
    simp [show (7558272 * k + 2847940) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1423970) = 1889568 * k + 711985 := by
    unfold C
    simp [show (3779136 * k + 1423970) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 711985) = 5668704 * k + 2135956 := by
    unfold C
    simp [show (1889568 * k + 711985) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2135956) = 2834352 * k + 1067978 := by
    unfold C
    simp [show (5668704 * k + 2135956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1067978) = 1417176 * k + 533989 := by
    unfold C
    simp [show (2834352 * k + 1067978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 533989) = 4251528 * k + 1601968 := by
    unfold C
    simp [show (1417176 * k + 533989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1601968) = 2125764 * k + 800984 := by
    unfold C
    simp [show (4251528 * k + 1601968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 800984) = 1062882 * k + 400492 := by
    unfold C
    simp [show (2125764 * k + 800984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 400492) = 531441 * k + 200246 := by
    unfold C
    simp [show (1062882 * k + 400492) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 395099) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 395099)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_395259 : ∀ k : Nat,
    iterate (1048576 * k + 395259) 32 = 531441 * k + 200327 ∧
      531441 * k + 200327 < 1048576 * k + 395259 := by
  intro k
  have h1 : C (1048576 * k + 395259) = 3145728 * k + 1185778 := by
    unfold C
    simp [show (1048576 * k + 395259) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1185778) = 1572864 * k + 592889 := by
    unfold C
    simp [show (3145728 * k + 1185778) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 592889) = 4718592 * k + 1778668 := by
    unfold C
    simp [show (1572864 * k + 592889) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1778668) = 2359296 * k + 889334 := by
    unfold C
    simp [show (4718592 * k + 1778668) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 889334) = 1179648 * k + 444667 := by
    unfold C
    simp [show (2359296 * k + 889334) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 444667) = 3538944 * k + 1334002 := by
    unfold C
    simp [show (1179648 * k + 444667) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1334002) = 1769472 * k + 667001 := by
    unfold C
    simp [show (3538944 * k + 1334002) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 667001) = 5308416 * k + 2001004 := by
    unfold C
    simp [show (1769472 * k + 667001) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2001004) = 2654208 * k + 1000502 := by
    unfold C
    simp [show (5308416 * k + 2001004) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1000502) = 1327104 * k + 500251 := by
    unfold C
    simp [show (2654208 * k + 1000502) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 500251) = 3981312 * k + 1500754 := by
    unfold C
    simp [show (1327104 * k + 500251) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1500754) = 1990656 * k + 750377 := by
    unfold C
    simp [show (3981312 * k + 1500754) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 750377) = 5971968 * k + 2251132 := by
    unfold C
    simp [show (1990656 * k + 750377) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2251132) = 2985984 * k + 1125566 := by
    unfold C
    simp [show (5971968 * k + 2251132) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1125566) = 1492992 * k + 562783 := by
    unfold C
    simp [show (2985984 * k + 1125566) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 562783) = 4478976 * k + 1688350 := by
    unfold C
    simp [show (1492992 * k + 562783) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1688350) = 2239488 * k + 844175 := by
    unfold C
    simp [show (4478976 * k + 1688350) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 844175) = 6718464 * k + 2532526 := by
    unfold C
    simp [show (2239488 * k + 844175) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2532526) = 3359232 * k + 1266263 := by
    unfold C
    simp [show (6718464 * k + 2532526) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1266263) = 10077696 * k + 3798790 := by
    unfold C
    simp [show (3359232 * k + 1266263) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3798790) = 5038848 * k + 1899395 := by
    unfold C
    simp [show (10077696 * k + 3798790) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1899395) = 15116544 * k + 5698186 := by
    unfold C
    simp [show (5038848 * k + 1899395) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5698186) = 7558272 * k + 2849093 := by
    unfold C
    simp [show (15116544 * k + 5698186) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2849093) = 22674816 * k + 8547280 := by
    unfold C
    simp [show (7558272 * k + 2849093) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8547280) = 11337408 * k + 4273640 := by
    unfold C
    simp [show (22674816 * k + 8547280) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4273640) = 5668704 * k + 2136820 := by
    unfold C
    simp [show (11337408 * k + 4273640) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2136820) = 2834352 * k + 1068410 := by
    unfold C
    simp [show (5668704 * k + 2136820) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1068410) = 1417176 * k + 534205 := by
    unfold C
    simp [show (2834352 * k + 1068410) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 534205) = 4251528 * k + 1602616 := by
    unfold C
    simp [show (1417176 * k + 534205) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1602616) = 2125764 * k + 801308 := by
    unfold C
    simp [show (4251528 * k + 1602616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 801308) = 1062882 * k + 400654 := by
    unfold C
    simp [show (2125764 * k + 801308) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 400654) = 531441 * k + 200327 := by
    unfold C
    simp [show (1062882 * k + 400654) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 395259) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 395259)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_396223 : ∀ k : Nat,
    iterate (1048576 * k + 396223) 32 = 531441 * k + 200815 ∧
      531441 * k + 200815 < 1048576 * k + 396223 := by
  intro k
  have h1 : C (1048576 * k + 396223) = 3145728 * k + 1188670 := by
    unfold C
    simp [show (1048576 * k + 396223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1188670) = 1572864 * k + 594335 := by
    unfold C
    simp [show (3145728 * k + 1188670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 594335) = 4718592 * k + 1783006 := by
    unfold C
    simp [show (1572864 * k + 594335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1783006) = 2359296 * k + 891503 := by
    unfold C
    simp [show (4718592 * k + 1783006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 891503) = 7077888 * k + 2674510 := by
    unfold C
    simp [show (2359296 * k + 891503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2674510) = 3538944 * k + 1337255 := by
    unfold C
    simp [show (7077888 * k + 2674510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1337255) = 10616832 * k + 4011766 := by
    unfold C
    simp [show (3538944 * k + 1337255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4011766) = 5308416 * k + 2005883 := by
    unfold C
    simp [show (10616832 * k + 4011766) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2005883) = 15925248 * k + 6017650 := by
    unfold C
    simp [show (5308416 * k + 2005883) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6017650) = 7962624 * k + 3008825 := by
    unfold C
    simp [show (15925248 * k + 6017650) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3008825) = 23887872 * k + 9026476 := by
    unfold C
    simp [show (7962624 * k + 3008825) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9026476) = 11943936 * k + 4513238 := by
    unfold C
    simp [show (23887872 * k + 9026476) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4513238) = 5971968 * k + 2256619 := by
    unfold C
    simp [show (11943936 * k + 4513238) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2256619) = 17915904 * k + 6769858 := by
    unfold C
    simp [show (5971968 * k + 2256619) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6769858) = 8957952 * k + 3384929 := by
    unfold C
    simp [show (17915904 * k + 6769858) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3384929) = 26873856 * k + 10154788 := by
    unfold C
    simp [show (8957952 * k + 3384929) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10154788) = 13436928 * k + 5077394 := by
    unfold C
    simp [show (26873856 * k + 10154788) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5077394) = 6718464 * k + 2538697 := by
    unfold C
    simp [show (13436928 * k + 5077394) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2538697) = 20155392 * k + 7616092 := by
    unfold C
    simp [show (6718464 * k + 2538697) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7616092) = 10077696 * k + 3808046 := by
    unfold C
    simp [show (20155392 * k + 7616092) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3808046) = 5038848 * k + 1904023 := by
    unfold C
    simp [show (10077696 * k + 3808046) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1904023) = 15116544 * k + 5712070 := by
    unfold C
    simp [show (5038848 * k + 1904023) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5712070) = 7558272 * k + 2856035 := by
    unfold C
    simp [show (15116544 * k + 5712070) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2856035) = 22674816 * k + 8568106 := by
    unfold C
    simp [show (7558272 * k + 2856035) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8568106) = 11337408 * k + 4284053 := by
    unfold C
    simp [show (22674816 * k + 8568106) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4284053) = 34012224 * k + 12852160 := by
    unfold C
    simp [show (11337408 * k + 4284053) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 12852160) = 17006112 * k + 6426080 := by
    unfold C
    simp [show (34012224 * k + 12852160) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6426080) = 8503056 * k + 3213040 := by
    unfold C
    simp [show (17006112 * k + 6426080) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3213040) = 4251528 * k + 1606520 := by
    unfold C
    simp [show (8503056 * k + 3213040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1606520) = 2125764 * k + 803260 := by
    unfold C
    simp [show (4251528 * k + 1606520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 803260) = 1062882 * k + 401630 := by
    unfold C
    simp [show (2125764 * k + 803260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 401630) = 531441 * k + 200815 := by
    unfold C
    simp [show (1062882 * k + 401630) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 396223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 396223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_396479 : ∀ k : Nat,
    iterate (1048576 * k + 396479) 32 = 531441 * k + 200945 ∧
      531441 * k + 200945 < 1048576 * k + 396479 := by
  intro k
  have h1 : C (1048576 * k + 396479) = 3145728 * k + 1189438 := by
    unfold C
    simp [show (1048576 * k + 396479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1189438) = 1572864 * k + 594719 := by
    unfold C
    simp [show (3145728 * k + 1189438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 594719) = 4718592 * k + 1784158 := by
    unfold C
    simp [show (1572864 * k + 594719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1784158) = 2359296 * k + 892079 := by
    unfold C
    simp [show (4718592 * k + 1784158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 892079) = 7077888 * k + 2676238 := by
    unfold C
    simp [show (2359296 * k + 892079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2676238) = 3538944 * k + 1338119 := by
    unfold C
    simp [show (7077888 * k + 2676238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1338119) = 10616832 * k + 4014358 := by
    unfold C
    simp [show (3538944 * k + 1338119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4014358) = 5308416 * k + 2007179 := by
    unfold C
    simp [show (10616832 * k + 4014358) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2007179) = 15925248 * k + 6021538 := by
    unfold C
    simp [show (5308416 * k + 2007179) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6021538) = 7962624 * k + 3010769 := by
    unfold C
    simp [show (15925248 * k + 6021538) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3010769) = 23887872 * k + 9032308 := by
    unfold C
    simp [show (7962624 * k + 3010769) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9032308) = 11943936 * k + 4516154 := by
    unfold C
    simp [show (23887872 * k + 9032308) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4516154) = 5971968 * k + 2258077 := by
    unfold C
    simp [show (11943936 * k + 4516154) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2258077) = 17915904 * k + 6774232 := by
    unfold C
    simp [show (5971968 * k + 2258077) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6774232) = 8957952 * k + 3387116 := by
    unfold C
    simp [show (17915904 * k + 6774232) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3387116) = 4478976 * k + 1693558 := by
    unfold C
    simp [show (8957952 * k + 3387116) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1693558) = 2239488 * k + 846779 := by
    unfold C
    simp [show (4478976 * k + 1693558) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 846779) = 6718464 * k + 2540338 := by
    unfold C
    simp [show (2239488 * k + 846779) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2540338) = 3359232 * k + 1270169 := by
    unfold C
    simp [show (6718464 * k + 2540338) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1270169) = 10077696 * k + 3810508 := by
    unfold C
    simp [show (3359232 * k + 1270169) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3810508) = 5038848 * k + 1905254 := by
    unfold C
    simp [show (10077696 * k + 3810508) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1905254) = 2519424 * k + 952627 := by
    unfold C
    simp [show (5038848 * k + 1905254) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 952627) = 7558272 * k + 2857882 := by
    unfold C
    simp [show (2519424 * k + 952627) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2857882) = 3779136 * k + 1428941 := by
    unfold C
    simp [show (7558272 * k + 2857882) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1428941) = 11337408 * k + 4286824 := by
    unfold C
    simp [show (3779136 * k + 1428941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4286824) = 5668704 * k + 2143412 := by
    unfold C
    simp [show (11337408 * k + 4286824) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2143412) = 2834352 * k + 1071706 := by
    unfold C
    simp [show (5668704 * k + 2143412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1071706) = 1417176 * k + 535853 := by
    unfold C
    simp [show (2834352 * k + 1071706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 535853) = 4251528 * k + 1607560 := by
    unfold C
    simp [show (1417176 * k + 535853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1607560) = 2125764 * k + 803780 := by
    unfold C
    simp [show (4251528 * k + 1607560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 803780) = 1062882 * k + 401890 := by
    unfold C
    simp [show (2125764 * k + 803780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 401890) = 531441 * k + 200945 := by
    unfold C
    simp [show (1062882 * k + 401890) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 396479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 396479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_396591 : ∀ k : Nat,
    iterate (1048576 * k + 396591) 32 = 531441 * k + 201002 ∧
      531441 * k + 201002 < 1048576 * k + 396591 := by
  intro k
  have h1 : C (1048576 * k + 396591) = 3145728 * k + 1189774 := by
    unfold C
    simp [show (1048576 * k + 396591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1189774) = 1572864 * k + 594887 := by
    unfold C
    simp [show (3145728 * k + 1189774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 594887) = 4718592 * k + 1784662 := by
    unfold C
    simp [show (1572864 * k + 594887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1784662) = 2359296 * k + 892331 := by
    unfold C
    simp [show (4718592 * k + 1784662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 892331) = 7077888 * k + 2676994 := by
    unfold C
    simp [show (2359296 * k + 892331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2676994) = 3538944 * k + 1338497 := by
    unfold C
    simp [show (7077888 * k + 2676994) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1338497) = 10616832 * k + 4015492 := by
    unfold C
    simp [show (3538944 * k + 1338497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4015492) = 5308416 * k + 2007746 := by
    unfold C
    simp [show (10616832 * k + 4015492) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2007746) = 2654208 * k + 1003873 := by
    unfold C
    simp [show (5308416 * k + 2007746) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1003873) = 7962624 * k + 3011620 := by
    unfold C
    simp [show (2654208 * k + 1003873) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3011620) = 3981312 * k + 1505810 := by
    unfold C
    simp [show (7962624 * k + 3011620) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1505810) = 1990656 * k + 752905 := by
    unfold C
    simp [show (3981312 * k + 1505810) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 752905) = 5971968 * k + 2258716 := by
    unfold C
    simp [show (1990656 * k + 752905) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2258716) = 2985984 * k + 1129358 := by
    unfold C
    simp [show (5971968 * k + 2258716) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1129358) = 1492992 * k + 564679 := by
    unfold C
    simp [show (2985984 * k + 1129358) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 564679) = 4478976 * k + 1694038 := by
    unfold C
    simp [show (1492992 * k + 564679) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1694038) = 2239488 * k + 847019 := by
    unfold C
    simp [show (4478976 * k + 1694038) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 847019) = 6718464 * k + 2541058 := by
    unfold C
    simp [show (2239488 * k + 847019) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2541058) = 3359232 * k + 1270529 := by
    unfold C
    simp [show (6718464 * k + 2541058) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1270529) = 10077696 * k + 3811588 := by
    unfold C
    simp [show (3359232 * k + 1270529) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3811588) = 5038848 * k + 1905794 := by
    unfold C
    simp [show (10077696 * k + 3811588) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1905794) = 2519424 * k + 952897 := by
    unfold C
    simp [show (5038848 * k + 1905794) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 952897) = 7558272 * k + 2858692 := by
    unfold C
    simp [show (2519424 * k + 952897) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2858692) = 3779136 * k + 1429346 := by
    unfold C
    simp [show (7558272 * k + 2858692) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1429346) = 1889568 * k + 714673 := by
    unfold C
    simp [show (3779136 * k + 1429346) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 714673) = 5668704 * k + 2144020 := by
    unfold C
    simp [show (1889568 * k + 714673) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2144020) = 2834352 * k + 1072010 := by
    unfold C
    simp [show (5668704 * k + 2144020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1072010) = 1417176 * k + 536005 := by
    unfold C
    simp [show (2834352 * k + 1072010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 536005) = 4251528 * k + 1608016 := by
    unfold C
    simp [show (1417176 * k + 536005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1608016) = 2125764 * k + 804008 := by
    unfold C
    simp [show (4251528 * k + 1608016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 804008) = 1062882 * k + 402004 := by
    unfold C
    simp [show (2125764 * k + 804008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 402004) = 531441 * k + 201002 := by
    unfold C
    simp [show (1062882 * k + 402004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 396591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 396591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_396799 : ∀ k : Nat,
    iterate (1048576 * k + 396799) 32 = 531441 * k + 201107 ∧
      531441 * k + 201107 < 1048576 * k + 396799 := by
  intro k
  have h1 : C (1048576 * k + 396799) = 3145728 * k + 1190398 := by
    unfold C
    simp [show (1048576 * k + 396799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1190398) = 1572864 * k + 595199 := by
    unfold C
    simp [show (3145728 * k + 1190398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 595199) = 4718592 * k + 1785598 := by
    unfold C
    simp [show (1572864 * k + 595199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1785598) = 2359296 * k + 892799 := by
    unfold C
    simp [show (4718592 * k + 1785598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 892799) = 7077888 * k + 2678398 := by
    unfold C
    simp [show (2359296 * k + 892799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2678398) = 3538944 * k + 1339199 := by
    unfold C
    simp [show (7077888 * k + 2678398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1339199) = 10616832 * k + 4017598 := by
    unfold C
    simp [show (3538944 * k + 1339199) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4017598) = 5308416 * k + 2008799 := by
    unfold C
    simp [show (10616832 * k + 4017598) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2008799) = 15925248 * k + 6026398 := by
    unfold C
    simp [show (5308416 * k + 2008799) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6026398) = 7962624 * k + 3013199 := by
    unfold C
    simp [show (15925248 * k + 6026398) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3013199) = 23887872 * k + 9039598 := by
    unfold C
    simp [show (7962624 * k + 3013199) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9039598) = 11943936 * k + 4519799 := by
    unfold C
    simp [show (23887872 * k + 9039598) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4519799) = 35831808 * k + 13559398 := by
    unfold C
    simp [show (11943936 * k + 4519799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13559398) = 17915904 * k + 6779699 := by
    unfold C
    simp [show (35831808 * k + 13559398) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6779699) = 53747712 * k + 20339098 := by
    unfold C
    simp [show (17915904 * k + 6779699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 20339098) = 26873856 * k + 10169549 := by
    unfold C
    simp [show (53747712 * k + 20339098) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 10169549) = 80621568 * k + 30508648 := by
    unfold C
    simp [show (26873856 * k + 10169549) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 30508648) = 40310784 * k + 15254324 := by
    unfold C
    simp [show (80621568 * k + 30508648) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 15254324) = 20155392 * k + 7627162 := by
    unfold C
    simp [show (40310784 * k + 15254324) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7627162) = 10077696 * k + 3813581 := by
    unfold C
    simp [show (20155392 * k + 7627162) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3813581) = 30233088 * k + 11440744 := by
    unfold C
    simp [show (10077696 * k + 3813581) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11440744) = 15116544 * k + 5720372 := by
    unfold C
    simp [show (30233088 * k + 11440744) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5720372) = 7558272 * k + 2860186 := by
    unfold C
    simp [show (15116544 * k + 5720372) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2860186) = 3779136 * k + 1430093 := by
    unfold C
    simp [show (7558272 * k + 2860186) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1430093) = 11337408 * k + 4290280 := by
    unfold C
    simp [show (3779136 * k + 1430093) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4290280) = 5668704 * k + 2145140 := by
    unfold C
    simp [show (11337408 * k + 4290280) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2145140) = 2834352 * k + 1072570 := by
    unfold C
    simp [show (5668704 * k + 2145140) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1072570) = 1417176 * k + 536285 := by
    unfold C
    simp [show (2834352 * k + 1072570) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 536285) = 4251528 * k + 1608856 := by
    unfold C
    simp [show (1417176 * k + 536285) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1608856) = 2125764 * k + 804428 := by
    unfold C
    simp [show (4251528 * k + 1608856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 804428) = 1062882 * k + 402214 := by
    unfold C
    simp [show (2125764 * k + 804428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 402214) = 531441 * k + 201107 := by
    unfold C
    simp [show (1062882 * k + 402214) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 396799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 396799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_397639 : ∀ k : Nat,
    iterate (1048576 * k + 397639) 32 = 531441 * k + 201533 ∧
      531441 * k + 201533 < 1048576 * k + 397639 := by
  intro k
  have h1 : C (1048576 * k + 397639) = 3145728 * k + 1192918 := by
    unfold C
    simp [show (1048576 * k + 397639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1192918) = 1572864 * k + 596459 := by
    unfold C
    simp [show (3145728 * k + 1192918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 596459) = 4718592 * k + 1789378 := by
    unfold C
    simp [show (1572864 * k + 596459) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1789378) = 2359296 * k + 894689 := by
    unfold C
    simp [show (4718592 * k + 1789378) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 894689) = 7077888 * k + 2684068 := by
    unfold C
    simp [show (2359296 * k + 894689) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2684068) = 3538944 * k + 1342034 := by
    unfold C
    simp [show (7077888 * k + 2684068) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1342034) = 1769472 * k + 671017 := by
    unfold C
    simp [show (3538944 * k + 1342034) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 671017) = 5308416 * k + 2013052 := by
    unfold C
    simp [show (1769472 * k + 671017) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2013052) = 2654208 * k + 1006526 := by
    unfold C
    simp [show (5308416 * k + 2013052) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1006526) = 1327104 * k + 503263 := by
    unfold C
    simp [show (2654208 * k + 1006526) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 503263) = 3981312 * k + 1509790 := by
    unfold C
    simp [show (1327104 * k + 503263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1509790) = 1990656 * k + 754895 := by
    unfold C
    simp [show (3981312 * k + 1509790) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 754895) = 5971968 * k + 2264686 := by
    unfold C
    simp [show (1990656 * k + 754895) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2264686) = 2985984 * k + 1132343 := by
    unfold C
    simp [show (5971968 * k + 2264686) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1132343) = 8957952 * k + 3397030 := by
    unfold C
    simp [show (2985984 * k + 1132343) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3397030) = 4478976 * k + 1698515 := by
    unfold C
    simp [show (8957952 * k + 3397030) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1698515) = 13436928 * k + 5095546 := by
    unfold C
    simp [show (4478976 * k + 1698515) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5095546) = 6718464 * k + 2547773 := by
    unfold C
    simp [show (13436928 * k + 5095546) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2547773) = 20155392 * k + 7643320 := by
    unfold C
    simp [show (6718464 * k + 2547773) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7643320) = 10077696 * k + 3821660 := by
    unfold C
    simp [show (20155392 * k + 7643320) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3821660) = 5038848 * k + 1910830 := by
    unfold C
    simp [show (10077696 * k + 3821660) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1910830) = 2519424 * k + 955415 := by
    unfold C
    simp [show (5038848 * k + 1910830) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 955415) = 7558272 * k + 2866246 := by
    unfold C
    simp [show (2519424 * k + 955415) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2866246) = 3779136 * k + 1433123 := by
    unfold C
    simp [show (7558272 * k + 2866246) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1433123) = 11337408 * k + 4299370 := by
    unfold C
    simp [show (3779136 * k + 1433123) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4299370) = 5668704 * k + 2149685 := by
    unfold C
    simp [show (11337408 * k + 4299370) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2149685) = 17006112 * k + 6449056 := by
    unfold C
    simp [show (5668704 * k + 2149685) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6449056) = 8503056 * k + 3224528 := by
    unfold C
    simp [show (17006112 * k + 6449056) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3224528) = 4251528 * k + 1612264 := by
    unfold C
    simp [show (8503056 * k + 3224528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1612264) = 2125764 * k + 806132 := by
    unfold C
    simp [show (4251528 * k + 1612264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 806132) = 1062882 * k + 403066 := by
    unfold C
    simp [show (2125764 * k + 806132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 403066) = 531441 * k + 201533 := by
    unfold C
    simp [show (1062882 * k + 403066) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 397639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 397639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_397915 : ∀ k : Nat,
    iterate (1048576 * k + 397915) 32 = 531441 * k + 201673 ∧
      531441 * k + 201673 < 1048576 * k + 397915 := by
  intro k
  have h1 : C (1048576 * k + 397915) = 3145728 * k + 1193746 := by
    unfold C
    simp [show (1048576 * k + 397915) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1193746) = 1572864 * k + 596873 := by
    unfold C
    simp [show (3145728 * k + 1193746) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 596873) = 4718592 * k + 1790620 := by
    unfold C
    simp [show (1572864 * k + 596873) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1790620) = 2359296 * k + 895310 := by
    unfold C
    simp [show (4718592 * k + 1790620) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 895310) = 1179648 * k + 447655 := by
    unfold C
    simp [show (2359296 * k + 895310) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 447655) = 3538944 * k + 1342966 := by
    unfold C
    simp [show (1179648 * k + 447655) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1342966) = 1769472 * k + 671483 := by
    unfold C
    simp [show (3538944 * k + 1342966) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 671483) = 5308416 * k + 2014450 := by
    unfold C
    simp [show (1769472 * k + 671483) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2014450) = 2654208 * k + 1007225 := by
    unfold C
    simp [show (5308416 * k + 2014450) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1007225) = 7962624 * k + 3021676 := by
    unfold C
    simp [show (2654208 * k + 1007225) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3021676) = 3981312 * k + 1510838 := by
    unfold C
    simp [show (7962624 * k + 3021676) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1510838) = 1990656 * k + 755419 := by
    unfold C
    simp [show (3981312 * k + 1510838) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 755419) = 5971968 * k + 2266258 := by
    unfold C
    simp [show (1990656 * k + 755419) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2266258) = 2985984 * k + 1133129 := by
    unfold C
    simp [show (5971968 * k + 2266258) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1133129) = 8957952 * k + 3399388 := by
    unfold C
    simp [show (2985984 * k + 1133129) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3399388) = 4478976 * k + 1699694 := by
    unfold C
    simp [show (8957952 * k + 3399388) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1699694) = 2239488 * k + 849847 := by
    unfold C
    simp [show (4478976 * k + 1699694) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 849847) = 6718464 * k + 2549542 := by
    unfold C
    simp [show (2239488 * k + 849847) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2549542) = 3359232 * k + 1274771 := by
    unfold C
    simp [show (6718464 * k + 2549542) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1274771) = 10077696 * k + 3824314 := by
    unfold C
    simp [show (3359232 * k + 1274771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3824314) = 5038848 * k + 1912157 := by
    unfold C
    simp [show (10077696 * k + 3824314) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1912157) = 15116544 * k + 5736472 := by
    unfold C
    simp [show (5038848 * k + 1912157) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5736472) = 7558272 * k + 2868236 := by
    unfold C
    simp [show (15116544 * k + 5736472) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2868236) = 3779136 * k + 1434118 := by
    unfold C
    simp [show (7558272 * k + 2868236) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1434118) = 1889568 * k + 717059 := by
    unfold C
    simp [show (3779136 * k + 1434118) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 717059) = 5668704 * k + 2151178 := by
    unfold C
    simp [show (1889568 * k + 717059) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2151178) = 2834352 * k + 1075589 := by
    unfold C
    simp [show (5668704 * k + 2151178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1075589) = 8503056 * k + 3226768 := by
    unfold C
    simp [show (2834352 * k + 1075589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3226768) = 4251528 * k + 1613384 := by
    unfold C
    simp [show (8503056 * k + 3226768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1613384) = 2125764 * k + 806692 := by
    unfold C
    simp [show (4251528 * k + 1613384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 806692) = 1062882 * k + 403346 := by
    unfold C
    simp [show (2125764 * k + 806692) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 403346) = 531441 * k + 201673 := by
    unfold C
    simp [show (1062882 * k + 403346) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 397915) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 397915)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_398271 : ∀ k : Nat,
    iterate (1048576 * k + 398271) 32 = 531441 * k + 201853 ∧
      531441 * k + 201853 < 1048576 * k + 398271 := by
  intro k
  have h1 : C (1048576 * k + 398271) = 3145728 * k + 1194814 := by
    unfold C
    simp [show (1048576 * k + 398271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1194814) = 1572864 * k + 597407 := by
    unfold C
    simp [show (3145728 * k + 1194814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 597407) = 4718592 * k + 1792222 := by
    unfold C
    simp [show (1572864 * k + 597407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1792222) = 2359296 * k + 896111 := by
    unfold C
    simp [show (4718592 * k + 1792222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 896111) = 7077888 * k + 2688334 := by
    unfold C
    simp [show (2359296 * k + 896111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2688334) = 3538944 * k + 1344167 := by
    unfold C
    simp [show (7077888 * k + 2688334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1344167) = 10616832 * k + 4032502 := by
    unfold C
    simp [show (3538944 * k + 1344167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4032502) = 5308416 * k + 2016251 := by
    unfold C
    simp [show (10616832 * k + 4032502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2016251) = 15925248 * k + 6048754 := by
    unfold C
    simp [show (5308416 * k + 2016251) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6048754) = 7962624 * k + 3024377 := by
    unfold C
    simp [show (15925248 * k + 6048754) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3024377) = 23887872 * k + 9073132 := by
    unfold C
    simp [show (7962624 * k + 3024377) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9073132) = 11943936 * k + 4536566 := by
    unfold C
    simp [show (23887872 * k + 9073132) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4536566) = 5971968 * k + 2268283 := by
    unfold C
    simp [show (11943936 * k + 4536566) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2268283) = 17915904 * k + 6804850 := by
    unfold C
    simp [show (5971968 * k + 2268283) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6804850) = 8957952 * k + 3402425 := by
    unfold C
    simp [show (17915904 * k + 6804850) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3402425) = 26873856 * k + 10207276 := by
    unfold C
    simp [show (8957952 * k + 3402425) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10207276) = 13436928 * k + 5103638 := by
    unfold C
    simp [show (26873856 * k + 10207276) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5103638) = 6718464 * k + 2551819 := by
    unfold C
    simp [show (13436928 * k + 5103638) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2551819) = 20155392 * k + 7655458 := by
    unfold C
    simp [show (6718464 * k + 2551819) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7655458) = 10077696 * k + 3827729 := by
    unfold C
    simp [show (20155392 * k + 7655458) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3827729) = 30233088 * k + 11483188 := by
    unfold C
    simp [show (10077696 * k + 3827729) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11483188) = 15116544 * k + 5741594 := by
    unfold C
    simp [show (30233088 * k + 11483188) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5741594) = 7558272 * k + 2870797 := by
    unfold C
    simp [show (15116544 * k + 5741594) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2870797) = 22674816 * k + 8612392 := by
    unfold C
    simp [show (7558272 * k + 2870797) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8612392) = 11337408 * k + 4306196 := by
    unfold C
    simp [show (22674816 * k + 8612392) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4306196) = 5668704 * k + 2153098 := by
    unfold C
    simp [show (11337408 * k + 4306196) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2153098) = 2834352 * k + 1076549 := by
    unfold C
    simp [show (5668704 * k + 2153098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1076549) = 8503056 * k + 3229648 := by
    unfold C
    simp [show (2834352 * k + 1076549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3229648) = 4251528 * k + 1614824 := by
    unfold C
    simp [show (8503056 * k + 3229648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1614824) = 2125764 * k + 807412 := by
    unfold C
    simp [show (4251528 * k + 1614824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 807412) = 1062882 * k + 403706 := by
    unfold C
    simp [show (2125764 * k + 807412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 403706) = 531441 * k + 201853 := by
    unfold C
    simp [show (1062882 * k + 403706) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 398271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 398271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_398503 : ∀ k : Nat,
    iterate (1048576 * k + 398503) 32 = 531441 * k + 201971 ∧
      531441 * k + 201971 < 1048576 * k + 398503 := by
  intro k
  have h1 : C (1048576 * k + 398503) = 3145728 * k + 1195510 := by
    unfold C
    simp [show (1048576 * k + 398503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1195510) = 1572864 * k + 597755 := by
    unfold C
    simp [show (3145728 * k + 1195510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 597755) = 4718592 * k + 1793266 := by
    unfold C
    simp [show (1572864 * k + 597755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1793266) = 2359296 * k + 896633 := by
    unfold C
    simp [show (4718592 * k + 1793266) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 896633) = 7077888 * k + 2689900 := by
    unfold C
    simp [show (2359296 * k + 896633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2689900) = 3538944 * k + 1344950 := by
    unfold C
    simp [show (7077888 * k + 2689900) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1344950) = 1769472 * k + 672475 := by
    unfold C
    simp [show (3538944 * k + 1344950) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 672475) = 5308416 * k + 2017426 := by
    unfold C
    simp [show (1769472 * k + 672475) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2017426) = 2654208 * k + 1008713 := by
    unfold C
    simp [show (5308416 * k + 2017426) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1008713) = 7962624 * k + 3026140 := by
    unfold C
    simp [show (2654208 * k + 1008713) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3026140) = 3981312 * k + 1513070 := by
    unfold C
    simp [show (7962624 * k + 3026140) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1513070) = 1990656 * k + 756535 := by
    unfold C
    simp [show (3981312 * k + 1513070) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 756535) = 5971968 * k + 2269606 := by
    unfold C
    simp [show (1990656 * k + 756535) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2269606) = 2985984 * k + 1134803 := by
    unfold C
    simp [show (5971968 * k + 2269606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1134803) = 8957952 * k + 3404410 := by
    unfold C
    simp [show (2985984 * k + 1134803) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3404410) = 4478976 * k + 1702205 := by
    unfold C
    simp [show (8957952 * k + 3404410) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1702205) = 13436928 * k + 5106616 := by
    unfold C
    simp [show (4478976 * k + 1702205) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5106616) = 6718464 * k + 2553308 := by
    unfold C
    simp [show (13436928 * k + 5106616) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2553308) = 3359232 * k + 1276654 := by
    unfold C
    simp [show (6718464 * k + 2553308) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1276654) = 1679616 * k + 638327 := by
    unfold C
    simp [show (3359232 * k + 1276654) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 638327) = 5038848 * k + 1914982 := by
    unfold C
    simp [show (1679616 * k + 638327) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1914982) = 2519424 * k + 957491 := by
    unfold C
    simp [show (5038848 * k + 1914982) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 957491) = 7558272 * k + 2872474 := by
    unfold C
    simp [show (2519424 * k + 957491) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2872474) = 3779136 * k + 1436237 := by
    unfold C
    simp [show (7558272 * k + 2872474) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1436237) = 11337408 * k + 4308712 := by
    unfold C
    simp [show (3779136 * k + 1436237) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4308712) = 5668704 * k + 2154356 := by
    unfold C
    simp [show (11337408 * k + 4308712) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2154356) = 2834352 * k + 1077178 := by
    unfold C
    simp [show (5668704 * k + 2154356) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1077178) = 1417176 * k + 538589 := by
    unfold C
    simp [show (2834352 * k + 1077178) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 538589) = 4251528 * k + 1615768 := by
    unfold C
    simp [show (1417176 * k + 538589) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1615768) = 2125764 * k + 807884 := by
    unfold C
    simp [show (4251528 * k + 1615768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 807884) = 1062882 * k + 403942 := by
    unfold C
    simp [show (2125764 * k + 807884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 403942) = 531441 * k + 201971 := by
    unfold C
    simp [show (1062882 * k + 403942) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 398503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 398503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_399007 : ∀ k : Nat,
    iterate (1048576 * k + 399007) 32 = 531441 * k + 202226 ∧
      531441 * k + 202226 < 1048576 * k + 399007 := by
  intro k
  have h1 : C (1048576 * k + 399007) = 3145728 * k + 1197022 := by
    unfold C
    simp [show (1048576 * k + 399007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1197022) = 1572864 * k + 598511 := by
    unfold C
    simp [show (3145728 * k + 1197022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 598511) = 4718592 * k + 1795534 := by
    unfold C
    simp [show (1572864 * k + 598511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1795534) = 2359296 * k + 897767 := by
    unfold C
    simp [show (4718592 * k + 1795534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 897767) = 7077888 * k + 2693302 := by
    unfold C
    simp [show (2359296 * k + 897767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2693302) = 3538944 * k + 1346651 := by
    unfold C
    simp [show (7077888 * k + 2693302) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1346651) = 10616832 * k + 4039954 := by
    unfold C
    simp [show (3538944 * k + 1346651) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4039954) = 5308416 * k + 2019977 := by
    unfold C
    simp [show (10616832 * k + 4039954) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2019977) = 15925248 * k + 6059932 := by
    unfold C
    simp [show (5308416 * k + 2019977) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6059932) = 7962624 * k + 3029966 := by
    unfold C
    simp [show (15925248 * k + 6059932) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3029966) = 3981312 * k + 1514983 := by
    unfold C
    simp [show (7962624 * k + 3029966) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1514983) = 11943936 * k + 4544950 := by
    unfold C
    simp [show (3981312 * k + 1514983) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4544950) = 5971968 * k + 2272475 := by
    unfold C
    simp [show (11943936 * k + 4544950) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2272475) = 17915904 * k + 6817426 := by
    unfold C
    simp [show (5971968 * k + 2272475) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6817426) = 8957952 * k + 3408713 := by
    unfold C
    simp [show (17915904 * k + 6817426) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3408713) = 26873856 * k + 10226140 := by
    unfold C
    simp [show (8957952 * k + 3408713) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10226140) = 13436928 * k + 5113070 := by
    unfold C
    simp [show (26873856 * k + 10226140) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5113070) = 6718464 * k + 2556535 := by
    unfold C
    simp [show (13436928 * k + 5113070) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2556535) = 20155392 * k + 7669606 := by
    unfold C
    simp [show (6718464 * k + 2556535) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7669606) = 10077696 * k + 3834803 := by
    unfold C
    simp [show (20155392 * k + 7669606) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3834803) = 30233088 * k + 11504410 := by
    unfold C
    simp [show (10077696 * k + 3834803) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11504410) = 15116544 * k + 5752205 := by
    unfold C
    simp [show (30233088 * k + 11504410) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5752205) = 45349632 * k + 17256616 := by
    unfold C
    simp [show (15116544 * k + 5752205) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 17256616) = 22674816 * k + 8628308 := by
    unfold C
    simp [show (45349632 * k + 17256616) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8628308) = 11337408 * k + 4314154 := by
    unfold C
    simp [show (22674816 * k + 8628308) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4314154) = 5668704 * k + 2157077 := by
    unfold C
    simp [show (11337408 * k + 4314154) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2157077) = 17006112 * k + 6471232 := by
    unfold C
    simp [show (5668704 * k + 2157077) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6471232) = 8503056 * k + 3235616 := by
    unfold C
    simp [show (17006112 * k + 6471232) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3235616) = 4251528 * k + 1617808 := by
    unfold C
    simp [show (8503056 * k + 3235616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1617808) = 2125764 * k + 808904 := by
    unfold C
    simp [show (4251528 * k + 1617808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 808904) = 1062882 * k + 404452 := by
    unfold C
    simp [show (2125764 * k + 808904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 404452) = 531441 * k + 202226 := by
    unfold C
    simp [show (1062882 * k + 404452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 399007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 399007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_399355 : ∀ k : Nat,
    iterate (1048576 * k + 399355) 32 = 531441 * k + 202403 ∧
      531441 * k + 202403 < 1048576 * k + 399355 := by
  intro k
  have h1 : C (1048576 * k + 399355) = 3145728 * k + 1198066 := by
    unfold C
    simp [show (1048576 * k + 399355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1198066) = 1572864 * k + 599033 := by
    unfold C
    simp [show (3145728 * k + 1198066) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 599033) = 4718592 * k + 1797100 := by
    unfold C
    simp [show (1572864 * k + 599033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1797100) = 2359296 * k + 898550 := by
    unfold C
    simp [show (4718592 * k + 1797100) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 898550) = 1179648 * k + 449275 := by
    unfold C
    simp [show (2359296 * k + 898550) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 449275) = 3538944 * k + 1347826 := by
    unfold C
    simp [show (1179648 * k + 449275) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1347826) = 1769472 * k + 673913 := by
    unfold C
    simp [show (3538944 * k + 1347826) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 673913) = 5308416 * k + 2021740 := by
    unfold C
    simp [show (1769472 * k + 673913) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2021740) = 2654208 * k + 1010870 := by
    unfold C
    simp [show (5308416 * k + 2021740) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1010870) = 1327104 * k + 505435 := by
    unfold C
    simp [show (2654208 * k + 1010870) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 505435) = 3981312 * k + 1516306 := by
    unfold C
    simp [show (1327104 * k + 505435) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1516306) = 1990656 * k + 758153 := by
    unfold C
    simp [show (3981312 * k + 1516306) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 758153) = 5971968 * k + 2274460 := by
    unfold C
    simp [show (1990656 * k + 758153) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2274460) = 2985984 * k + 1137230 := by
    unfold C
    simp [show (5971968 * k + 2274460) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1137230) = 1492992 * k + 568615 := by
    unfold C
    simp [show (2985984 * k + 1137230) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 568615) = 4478976 * k + 1705846 := by
    unfold C
    simp [show (1492992 * k + 568615) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1705846) = 2239488 * k + 852923 := by
    unfold C
    simp [show (4478976 * k + 1705846) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 852923) = 6718464 * k + 2558770 := by
    unfold C
    simp [show (2239488 * k + 852923) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2558770) = 3359232 * k + 1279385 := by
    unfold C
    simp [show (6718464 * k + 2558770) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1279385) = 10077696 * k + 3838156 := by
    unfold C
    simp [show (3359232 * k + 1279385) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3838156) = 5038848 * k + 1919078 := by
    unfold C
    simp [show (10077696 * k + 3838156) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1919078) = 2519424 * k + 959539 := by
    unfold C
    simp [show (5038848 * k + 1919078) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 959539) = 7558272 * k + 2878618 := by
    unfold C
    simp [show (2519424 * k + 959539) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2878618) = 3779136 * k + 1439309 := by
    unfold C
    simp [show (7558272 * k + 2878618) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1439309) = 11337408 * k + 4317928 := by
    unfold C
    simp [show (3779136 * k + 1439309) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4317928) = 5668704 * k + 2158964 := by
    unfold C
    simp [show (11337408 * k + 4317928) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2158964) = 2834352 * k + 1079482 := by
    unfold C
    simp [show (5668704 * k + 2158964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1079482) = 1417176 * k + 539741 := by
    unfold C
    simp [show (2834352 * k + 1079482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 539741) = 4251528 * k + 1619224 := by
    unfold C
    simp [show (1417176 * k + 539741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1619224) = 2125764 * k + 809612 := by
    unfold C
    simp [show (4251528 * k + 1619224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 809612) = 1062882 * k + 404806 := by
    unfold C
    simp [show (2125764 * k + 809612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 404806) = 531441 * k + 202403 := by
    unfold C
    simp [show (1062882 * k + 404806) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 399355) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 399355)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_399983 : ∀ k : Nat,
    iterate (1048576 * k + 399983) 32 = 531441 * k + 202721 ∧
      531441 * k + 202721 < 1048576 * k + 399983 := by
  intro k
  have h1 : C (1048576 * k + 399983) = 3145728 * k + 1199950 := by
    unfold C
    simp [show (1048576 * k + 399983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1199950) = 1572864 * k + 599975 := by
    unfold C
    simp [show (3145728 * k + 1199950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 599975) = 4718592 * k + 1799926 := by
    unfold C
    simp [show (1572864 * k + 599975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1799926) = 2359296 * k + 899963 := by
    unfold C
    simp [show (4718592 * k + 1799926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 899963) = 7077888 * k + 2699890 := by
    unfold C
    simp [show (2359296 * k + 899963) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2699890) = 3538944 * k + 1349945 := by
    unfold C
    simp [show (7077888 * k + 2699890) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1349945) = 10616832 * k + 4049836 := by
    unfold C
    simp [show (3538944 * k + 1349945) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4049836) = 5308416 * k + 2024918 := by
    unfold C
    simp [show (10616832 * k + 4049836) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2024918) = 2654208 * k + 1012459 := by
    unfold C
    simp [show (5308416 * k + 2024918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1012459) = 7962624 * k + 3037378 := by
    unfold C
    simp [show (2654208 * k + 1012459) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3037378) = 3981312 * k + 1518689 := by
    unfold C
    simp [show (7962624 * k + 3037378) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1518689) = 11943936 * k + 4556068 := by
    unfold C
    simp [show (3981312 * k + 1518689) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4556068) = 5971968 * k + 2278034 := by
    unfold C
    simp [show (11943936 * k + 4556068) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2278034) = 2985984 * k + 1139017 := by
    unfold C
    simp [show (5971968 * k + 2278034) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1139017) = 8957952 * k + 3417052 := by
    unfold C
    simp [show (2985984 * k + 1139017) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3417052) = 4478976 * k + 1708526 := by
    unfold C
    simp [show (8957952 * k + 3417052) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1708526) = 2239488 * k + 854263 := by
    unfold C
    simp [show (4478976 * k + 1708526) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 854263) = 6718464 * k + 2562790 := by
    unfold C
    simp [show (2239488 * k + 854263) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2562790) = 3359232 * k + 1281395 := by
    unfold C
    simp [show (6718464 * k + 2562790) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1281395) = 10077696 * k + 3844186 := by
    unfold C
    simp [show (3359232 * k + 1281395) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3844186) = 5038848 * k + 1922093 := by
    unfold C
    simp [show (10077696 * k + 3844186) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1922093) = 15116544 * k + 5766280 := by
    unfold C
    simp [show (5038848 * k + 1922093) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5766280) = 7558272 * k + 2883140 := by
    unfold C
    simp [show (15116544 * k + 5766280) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2883140) = 3779136 * k + 1441570 := by
    unfold C
    simp [show (7558272 * k + 2883140) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1441570) = 1889568 * k + 720785 := by
    unfold C
    simp [show (3779136 * k + 1441570) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 720785) = 5668704 * k + 2162356 := by
    unfold C
    simp [show (1889568 * k + 720785) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2162356) = 2834352 * k + 1081178 := by
    unfold C
    simp [show (5668704 * k + 2162356) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1081178) = 1417176 * k + 540589 := by
    unfold C
    simp [show (2834352 * k + 1081178) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 540589) = 4251528 * k + 1621768 := by
    unfold C
    simp [show (1417176 * k + 540589) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1621768) = 2125764 * k + 810884 := by
    unfold C
    simp [show (4251528 * k + 1621768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 810884) = 1062882 * k + 405442 := by
    unfold C
    simp [show (2125764 * k + 810884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 405442) = 531441 * k + 202721 := by
    unfold C
    simp [show (1062882 * k + 405442) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 399983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 399983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_400863 : ∀ k : Nat,
    iterate (1048576 * k + 400863) 32 = 531441 * k + 203167 ∧
      531441 * k + 203167 < 1048576 * k + 400863 := by
  intro k
  have h1 : C (1048576 * k + 400863) = 3145728 * k + 1202590 := by
    unfold C
    simp [show (1048576 * k + 400863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1202590) = 1572864 * k + 601295 := by
    unfold C
    simp [show (3145728 * k + 1202590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 601295) = 4718592 * k + 1803886 := by
    unfold C
    simp [show (1572864 * k + 601295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1803886) = 2359296 * k + 901943 := by
    unfold C
    simp [show (4718592 * k + 1803886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 901943) = 7077888 * k + 2705830 := by
    unfold C
    simp [show (2359296 * k + 901943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2705830) = 3538944 * k + 1352915 := by
    unfold C
    simp [show (7077888 * k + 2705830) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1352915) = 10616832 * k + 4058746 := by
    unfold C
    simp [show (3538944 * k + 1352915) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4058746) = 5308416 * k + 2029373 := by
    unfold C
    simp [show (10616832 * k + 4058746) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2029373) = 15925248 * k + 6088120 := by
    unfold C
    simp [show (5308416 * k + 2029373) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6088120) = 7962624 * k + 3044060 := by
    unfold C
    simp [show (15925248 * k + 6088120) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3044060) = 3981312 * k + 1522030 := by
    unfold C
    simp [show (7962624 * k + 3044060) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1522030) = 1990656 * k + 761015 := by
    unfold C
    simp [show (3981312 * k + 1522030) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 761015) = 5971968 * k + 2283046 := by
    unfold C
    simp [show (1990656 * k + 761015) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2283046) = 2985984 * k + 1141523 := by
    unfold C
    simp [show (5971968 * k + 2283046) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1141523) = 8957952 * k + 3424570 := by
    unfold C
    simp [show (2985984 * k + 1141523) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3424570) = 4478976 * k + 1712285 := by
    unfold C
    simp [show (8957952 * k + 3424570) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1712285) = 13436928 * k + 5136856 := by
    unfold C
    simp [show (4478976 * k + 1712285) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5136856) = 6718464 * k + 2568428 := by
    unfold C
    simp [show (13436928 * k + 5136856) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2568428) = 3359232 * k + 1284214 := by
    unfold C
    simp [show (6718464 * k + 2568428) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1284214) = 1679616 * k + 642107 := by
    unfold C
    simp [show (3359232 * k + 1284214) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 642107) = 5038848 * k + 1926322 := by
    unfold C
    simp [show (1679616 * k + 642107) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1926322) = 2519424 * k + 963161 := by
    unfold C
    simp [show (5038848 * k + 1926322) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 963161) = 7558272 * k + 2889484 := by
    unfold C
    simp [show (2519424 * k + 963161) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2889484) = 3779136 * k + 1444742 := by
    unfold C
    simp [show (7558272 * k + 2889484) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1444742) = 1889568 * k + 722371 := by
    unfold C
    simp [show (3779136 * k + 1444742) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 722371) = 5668704 * k + 2167114 := by
    unfold C
    simp [show (1889568 * k + 722371) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2167114) = 2834352 * k + 1083557 := by
    unfold C
    simp [show (5668704 * k + 2167114) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1083557) = 8503056 * k + 3250672 := by
    unfold C
    simp [show (2834352 * k + 1083557) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3250672) = 4251528 * k + 1625336 := by
    unfold C
    simp [show (8503056 * k + 3250672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1625336) = 2125764 * k + 812668 := by
    unfold C
    simp [show (4251528 * k + 1625336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 812668) = 1062882 * k + 406334 := by
    unfold C
    simp [show (2125764 * k + 812668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 406334) = 531441 * k + 203167 := by
    unfold C
    simp [show (1062882 * k + 406334) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 400863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 400863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_401055 : ∀ k : Nat,
    iterate (1048576 * k + 401055) 32 = 531441 * k + 203264 ∧
      531441 * k + 203264 < 1048576 * k + 401055 := by
  intro k
  have h1 : C (1048576 * k + 401055) = 3145728 * k + 1203166 := by
    unfold C
    simp [show (1048576 * k + 401055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1203166) = 1572864 * k + 601583 := by
    unfold C
    simp [show (3145728 * k + 1203166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 601583) = 4718592 * k + 1804750 := by
    unfold C
    simp [show (1572864 * k + 601583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1804750) = 2359296 * k + 902375 := by
    unfold C
    simp [show (4718592 * k + 1804750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 902375) = 7077888 * k + 2707126 := by
    unfold C
    simp [show (2359296 * k + 902375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2707126) = 3538944 * k + 1353563 := by
    unfold C
    simp [show (7077888 * k + 2707126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1353563) = 10616832 * k + 4060690 := by
    unfold C
    simp [show (3538944 * k + 1353563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4060690) = 5308416 * k + 2030345 := by
    unfold C
    simp [show (10616832 * k + 4060690) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2030345) = 15925248 * k + 6091036 := by
    unfold C
    simp [show (5308416 * k + 2030345) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6091036) = 7962624 * k + 3045518 := by
    unfold C
    simp [show (15925248 * k + 6091036) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3045518) = 3981312 * k + 1522759 := by
    unfold C
    simp [show (7962624 * k + 3045518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1522759) = 11943936 * k + 4568278 := by
    unfold C
    simp [show (3981312 * k + 1522759) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4568278) = 5971968 * k + 2284139 := by
    unfold C
    simp [show (11943936 * k + 4568278) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2284139) = 17915904 * k + 6852418 := by
    unfold C
    simp [show (5971968 * k + 2284139) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6852418) = 8957952 * k + 3426209 := by
    unfold C
    simp [show (17915904 * k + 6852418) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3426209) = 26873856 * k + 10278628 := by
    unfold C
    simp [show (8957952 * k + 3426209) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10278628) = 13436928 * k + 5139314 := by
    unfold C
    simp [show (26873856 * k + 10278628) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5139314) = 6718464 * k + 2569657 := by
    unfold C
    simp [show (13436928 * k + 5139314) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2569657) = 20155392 * k + 7708972 := by
    unfold C
    simp [show (6718464 * k + 2569657) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7708972) = 10077696 * k + 3854486 := by
    unfold C
    simp [show (20155392 * k + 7708972) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3854486) = 5038848 * k + 1927243 := by
    unfold C
    simp [show (10077696 * k + 3854486) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1927243) = 15116544 * k + 5781730 := by
    unfold C
    simp [show (5038848 * k + 1927243) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5781730) = 7558272 * k + 2890865 := by
    unfold C
    simp [show (15116544 * k + 5781730) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2890865) = 22674816 * k + 8672596 := by
    unfold C
    simp [show (7558272 * k + 2890865) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8672596) = 11337408 * k + 4336298 := by
    unfold C
    simp [show (22674816 * k + 8672596) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4336298) = 5668704 * k + 2168149 := by
    unfold C
    simp [show (11337408 * k + 4336298) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2168149) = 17006112 * k + 6504448 := by
    unfold C
    simp [show (5668704 * k + 2168149) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6504448) = 8503056 * k + 3252224 := by
    unfold C
    simp [show (17006112 * k + 6504448) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3252224) = 4251528 * k + 1626112 := by
    unfold C
    simp [show (8503056 * k + 3252224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1626112) = 2125764 * k + 813056 := by
    unfold C
    simp [show (4251528 * k + 1626112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 813056) = 1062882 * k + 406528 := by
    unfold C
    simp [show (2125764 * k + 813056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 406528) = 531441 * k + 203264 := by
    unfold C
    simp [show (1062882 * k + 406528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 401055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 401055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_401343 : ∀ k : Nat,
    iterate (1048576 * k + 401343) 32 = 531441 * k + 203410 ∧
      531441 * k + 203410 < 1048576 * k + 401343 := by
  intro k
  have h1 : C (1048576 * k + 401343) = 3145728 * k + 1204030 := by
    unfold C
    simp [show (1048576 * k + 401343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1204030) = 1572864 * k + 602015 := by
    unfold C
    simp [show (3145728 * k + 1204030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 602015) = 4718592 * k + 1806046 := by
    unfold C
    simp [show (1572864 * k + 602015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1806046) = 2359296 * k + 903023 := by
    unfold C
    simp [show (4718592 * k + 1806046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 903023) = 7077888 * k + 2709070 := by
    unfold C
    simp [show (2359296 * k + 903023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2709070) = 3538944 * k + 1354535 := by
    unfold C
    simp [show (7077888 * k + 2709070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1354535) = 10616832 * k + 4063606 := by
    unfold C
    simp [show (3538944 * k + 1354535) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4063606) = 5308416 * k + 2031803 := by
    unfold C
    simp [show (10616832 * k + 4063606) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2031803) = 15925248 * k + 6095410 := by
    unfold C
    simp [show (5308416 * k + 2031803) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6095410) = 7962624 * k + 3047705 := by
    unfold C
    simp [show (15925248 * k + 6095410) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3047705) = 23887872 * k + 9143116 := by
    unfold C
    simp [show (7962624 * k + 3047705) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9143116) = 11943936 * k + 4571558 := by
    unfold C
    simp [show (23887872 * k + 9143116) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4571558) = 5971968 * k + 2285779 := by
    unfold C
    simp [show (11943936 * k + 4571558) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2285779) = 17915904 * k + 6857338 := by
    unfold C
    simp [show (5971968 * k + 2285779) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6857338) = 8957952 * k + 3428669 := by
    unfold C
    simp [show (17915904 * k + 6857338) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3428669) = 26873856 * k + 10286008 := by
    unfold C
    simp [show (8957952 * k + 3428669) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10286008) = 13436928 * k + 5143004 := by
    unfold C
    simp [show (26873856 * k + 10286008) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5143004) = 6718464 * k + 2571502 := by
    unfold C
    simp [show (13436928 * k + 5143004) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2571502) = 3359232 * k + 1285751 := by
    unfold C
    simp [show (6718464 * k + 2571502) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1285751) = 10077696 * k + 3857254 := by
    unfold C
    simp [show (3359232 * k + 1285751) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3857254) = 5038848 * k + 1928627 := by
    unfold C
    simp [show (10077696 * k + 3857254) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1928627) = 15116544 * k + 5785882 := by
    unfold C
    simp [show (5038848 * k + 1928627) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5785882) = 7558272 * k + 2892941 := by
    unfold C
    simp [show (15116544 * k + 5785882) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2892941) = 22674816 * k + 8678824 := by
    unfold C
    simp [show (7558272 * k + 2892941) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8678824) = 11337408 * k + 4339412 := by
    unfold C
    simp [show (22674816 * k + 8678824) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4339412) = 5668704 * k + 2169706 := by
    unfold C
    simp [show (11337408 * k + 4339412) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2169706) = 2834352 * k + 1084853 := by
    unfold C
    simp [show (5668704 * k + 2169706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1084853) = 8503056 * k + 3254560 := by
    unfold C
    simp [show (2834352 * k + 1084853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3254560) = 4251528 * k + 1627280 := by
    unfold C
    simp [show (8503056 * k + 3254560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1627280) = 2125764 * k + 813640 := by
    unfold C
    simp [show (4251528 * k + 1627280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 813640) = 1062882 * k + 406820 := by
    unfold C
    simp [show (2125764 * k + 813640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 406820) = 531441 * k + 203410 := by
    unfold C
    simp [show (1062882 * k + 406820) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 401343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 401343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_401735 : ∀ k : Nat,
    iterate (1048576 * k + 401735) 32 = 531441 * k + 203609 ∧
      531441 * k + 203609 < 1048576 * k + 401735 := by
  intro k
  have h1 : C (1048576 * k + 401735) = 3145728 * k + 1205206 := by
    unfold C
    simp [show (1048576 * k + 401735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1205206) = 1572864 * k + 602603 := by
    unfold C
    simp [show (3145728 * k + 1205206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 602603) = 4718592 * k + 1807810 := by
    unfold C
    simp [show (1572864 * k + 602603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1807810) = 2359296 * k + 903905 := by
    unfold C
    simp [show (4718592 * k + 1807810) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 903905) = 7077888 * k + 2711716 := by
    unfold C
    simp [show (2359296 * k + 903905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2711716) = 3538944 * k + 1355858 := by
    unfold C
    simp [show (7077888 * k + 2711716) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1355858) = 1769472 * k + 677929 := by
    unfold C
    simp [show (3538944 * k + 1355858) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 677929) = 5308416 * k + 2033788 := by
    unfold C
    simp [show (1769472 * k + 677929) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2033788) = 2654208 * k + 1016894 := by
    unfold C
    simp [show (5308416 * k + 2033788) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1016894) = 1327104 * k + 508447 := by
    unfold C
    simp [show (2654208 * k + 1016894) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 508447) = 3981312 * k + 1525342 := by
    unfold C
    simp [show (1327104 * k + 508447) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1525342) = 1990656 * k + 762671 := by
    unfold C
    simp [show (3981312 * k + 1525342) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 762671) = 5971968 * k + 2288014 := by
    unfold C
    simp [show (1990656 * k + 762671) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2288014) = 2985984 * k + 1144007 := by
    unfold C
    simp [show (5971968 * k + 2288014) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1144007) = 8957952 * k + 3432022 := by
    unfold C
    simp [show (2985984 * k + 1144007) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3432022) = 4478976 * k + 1716011 := by
    unfold C
    simp [show (8957952 * k + 3432022) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1716011) = 13436928 * k + 5148034 := by
    unfold C
    simp [show (4478976 * k + 1716011) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5148034) = 6718464 * k + 2574017 := by
    unfold C
    simp [show (13436928 * k + 5148034) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2574017) = 20155392 * k + 7722052 := by
    unfold C
    simp [show (6718464 * k + 2574017) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7722052) = 10077696 * k + 3861026 := by
    unfold C
    simp [show (20155392 * k + 7722052) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3861026) = 5038848 * k + 1930513 := by
    unfold C
    simp [show (10077696 * k + 3861026) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1930513) = 15116544 * k + 5791540 := by
    unfold C
    simp [show (5038848 * k + 1930513) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5791540) = 7558272 * k + 2895770 := by
    unfold C
    simp [show (15116544 * k + 5791540) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2895770) = 3779136 * k + 1447885 := by
    unfold C
    simp [show (7558272 * k + 2895770) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1447885) = 11337408 * k + 4343656 := by
    unfold C
    simp [show (3779136 * k + 1447885) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4343656) = 5668704 * k + 2171828 := by
    unfold C
    simp [show (11337408 * k + 4343656) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2171828) = 2834352 * k + 1085914 := by
    unfold C
    simp [show (5668704 * k + 2171828) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1085914) = 1417176 * k + 542957 := by
    unfold C
    simp [show (2834352 * k + 1085914) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 542957) = 4251528 * k + 1628872 := by
    unfold C
    simp [show (1417176 * k + 542957) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1628872) = 2125764 * k + 814436 := by
    unfold C
    simp [show (4251528 * k + 1628872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 814436) = 1062882 * k + 407218 := by
    unfold C
    simp [show (2125764 * k + 814436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 407218) = 531441 * k + 203609 := by
    unfold C
    simp [show (1062882 * k + 407218) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 401735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 401735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard050
