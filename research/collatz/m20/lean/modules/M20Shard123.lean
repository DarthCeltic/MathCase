import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard123

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_965371 : ∀ k : Nat,
    iterate (1048576 * k + 965371) 32 = 531441 * k + 489272 ∧
      531441 * k + 489272 < 1048576 * k + 965371 := by
  intro k
  have h1 : C (1048576 * k + 965371) = 3145728 * k + 2896114 := by
    unfold C
    simp [show (1048576 * k + 965371) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2896114) = 1572864 * k + 1448057 := by
    unfold C
    simp [show (3145728 * k + 2896114) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1448057) = 4718592 * k + 4344172 := by
    unfold C
    simp [show (1572864 * k + 1448057) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4344172) = 2359296 * k + 2172086 := by
    unfold C
    simp [show (4718592 * k + 4344172) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2172086) = 1179648 * k + 1086043 := by
    unfold C
    simp [show (2359296 * k + 2172086) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1086043) = 3538944 * k + 3258130 := by
    unfold C
    simp [show (1179648 * k + 1086043) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3258130) = 1769472 * k + 1629065 := by
    unfold C
    simp [show (3538944 * k + 3258130) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1629065) = 5308416 * k + 4887196 := by
    unfold C
    simp [show (1769472 * k + 1629065) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4887196) = 2654208 * k + 2443598 := by
    unfold C
    simp [show (5308416 * k + 4887196) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2443598) = 1327104 * k + 1221799 := by
    unfold C
    simp [show (2654208 * k + 2443598) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1221799) = 3981312 * k + 3665398 := by
    unfold C
    simp [show (1327104 * k + 1221799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3665398) = 1990656 * k + 1832699 := by
    unfold C
    simp [show (3981312 * k + 3665398) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1832699) = 5971968 * k + 5498098 := by
    unfold C
    simp [show (1990656 * k + 1832699) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5498098) = 2985984 * k + 2749049 := by
    unfold C
    simp [show (5971968 * k + 5498098) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2749049) = 8957952 * k + 8247148 := by
    unfold C
    simp [show (2985984 * k + 2749049) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8247148) = 4478976 * k + 4123574 := by
    unfold C
    simp [show (8957952 * k + 8247148) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4123574) = 2239488 * k + 2061787 := by
    unfold C
    simp [show (4478976 * k + 4123574) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2061787) = 6718464 * k + 6185362 := by
    unfold C
    simp [show (2239488 * k + 2061787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6185362) = 3359232 * k + 3092681 := by
    unfold C
    simp [show (6718464 * k + 6185362) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3092681) = 10077696 * k + 9278044 := by
    unfold C
    simp [show (3359232 * k + 3092681) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9278044) = 5038848 * k + 4639022 := by
    unfold C
    simp [show (10077696 * k + 9278044) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4639022) = 2519424 * k + 2319511 := by
    unfold C
    simp [show (5038848 * k + 4639022) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2319511) = 7558272 * k + 6958534 := by
    unfold C
    simp [show (2519424 * k + 2319511) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6958534) = 3779136 * k + 3479267 := by
    unfold C
    simp [show (7558272 * k + 6958534) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3479267) = 11337408 * k + 10437802 := by
    unfold C
    simp [show (3779136 * k + 3479267) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10437802) = 5668704 * k + 5218901 := by
    unfold C
    simp [show (11337408 * k + 10437802) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5218901) = 17006112 * k + 15656704 := by
    unfold C
    simp [show (5668704 * k + 5218901) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15656704) = 8503056 * k + 7828352 := by
    unfold C
    simp [show (17006112 * k + 15656704) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7828352) = 4251528 * k + 3914176 := by
    unfold C
    simp [show (8503056 * k + 7828352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3914176) = 2125764 * k + 1957088 := by
    unfold C
    simp [show (4251528 * k + 3914176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1957088) = 1062882 * k + 978544 := by
    unfold C
    simp [show (2125764 * k + 1957088) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 978544) = 531441 * k + 489272 := by
    unfold C
    simp [show (1062882 * k + 978544) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 965371) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 965371)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_965407 : ∀ k : Nat,
    iterate (1048576 * k + 965407) 32 = 531441 * k + 489290 ∧
      531441 * k + 489290 < 1048576 * k + 965407 := by
  intro k
  have h1 : C (1048576 * k + 965407) = 3145728 * k + 2896222 := by
    unfold C
    simp [show (1048576 * k + 965407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2896222) = 1572864 * k + 1448111 := by
    unfold C
    simp [show (3145728 * k + 2896222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1448111) = 4718592 * k + 4344334 := by
    unfold C
    simp [show (1572864 * k + 1448111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4344334) = 2359296 * k + 2172167 := by
    unfold C
    simp [show (4718592 * k + 4344334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2172167) = 7077888 * k + 6516502 := by
    unfold C
    simp [show (2359296 * k + 2172167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6516502) = 3538944 * k + 3258251 := by
    unfold C
    simp [show (7077888 * k + 6516502) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3258251) = 10616832 * k + 9774754 := by
    unfold C
    simp [show (3538944 * k + 3258251) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9774754) = 5308416 * k + 4887377 := by
    unfold C
    simp [show (10616832 * k + 9774754) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4887377) = 15925248 * k + 14662132 := by
    unfold C
    simp [show (5308416 * k + 4887377) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14662132) = 7962624 * k + 7331066 := by
    unfold C
    simp [show (15925248 * k + 14662132) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7331066) = 3981312 * k + 3665533 := by
    unfold C
    simp [show (7962624 * k + 7331066) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3665533) = 11943936 * k + 10996600 := by
    unfold C
    simp [show (3981312 * k + 3665533) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10996600) = 5971968 * k + 5498300 := by
    unfold C
    simp [show (11943936 * k + 10996600) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5498300) = 2985984 * k + 2749150 := by
    unfold C
    simp [show (5971968 * k + 5498300) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2749150) = 1492992 * k + 1374575 := by
    unfold C
    simp [show (2985984 * k + 2749150) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1374575) = 4478976 * k + 4123726 := by
    unfold C
    simp [show (1492992 * k + 1374575) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4123726) = 2239488 * k + 2061863 := by
    unfold C
    simp [show (4478976 * k + 4123726) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2061863) = 6718464 * k + 6185590 := by
    unfold C
    simp [show (2239488 * k + 2061863) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6185590) = 3359232 * k + 3092795 := by
    unfold C
    simp [show (6718464 * k + 6185590) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3092795) = 10077696 * k + 9278386 := by
    unfold C
    simp [show (3359232 * k + 3092795) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9278386) = 5038848 * k + 4639193 := by
    unfold C
    simp [show (10077696 * k + 9278386) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4639193) = 15116544 * k + 13917580 := by
    unfold C
    simp [show (5038848 * k + 4639193) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13917580) = 7558272 * k + 6958790 := by
    unfold C
    simp [show (15116544 * k + 13917580) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6958790) = 3779136 * k + 3479395 := by
    unfold C
    simp [show (7558272 * k + 6958790) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3479395) = 11337408 * k + 10438186 := by
    unfold C
    simp [show (3779136 * k + 3479395) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10438186) = 5668704 * k + 5219093 := by
    unfold C
    simp [show (11337408 * k + 10438186) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5219093) = 17006112 * k + 15657280 := by
    unfold C
    simp [show (5668704 * k + 5219093) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15657280) = 8503056 * k + 7828640 := by
    unfold C
    simp [show (17006112 * k + 15657280) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7828640) = 4251528 * k + 3914320 := by
    unfold C
    simp [show (8503056 * k + 7828640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3914320) = 2125764 * k + 1957160 := by
    unfold C
    simp [show (4251528 * k + 3914320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1957160) = 1062882 * k + 978580 := by
    unfold C
    simp [show (2125764 * k + 1957160) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 978580) = 531441 * k + 489290 := by
    unfold C
    simp [show (1062882 * k + 978580) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 965407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 965407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_965887 : ∀ k : Nat,
    iterate (1048576 * k + 965887) 32 = 531441 * k + 489533 ∧
      531441 * k + 489533 < 1048576 * k + 965887 := by
  intro k
  have h1 : C (1048576 * k + 965887) = 3145728 * k + 2897662 := by
    unfold C
    simp [show (1048576 * k + 965887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2897662) = 1572864 * k + 1448831 := by
    unfold C
    simp [show (3145728 * k + 2897662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1448831) = 4718592 * k + 4346494 := by
    unfold C
    simp [show (1572864 * k + 1448831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4346494) = 2359296 * k + 2173247 := by
    unfold C
    simp [show (4718592 * k + 4346494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2173247) = 7077888 * k + 6519742 := by
    unfold C
    simp [show (2359296 * k + 2173247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6519742) = 3538944 * k + 3259871 := by
    unfold C
    simp [show (7077888 * k + 6519742) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3259871) = 10616832 * k + 9779614 := by
    unfold C
    simp [show (3538944 * k + 3259871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9779614) = 5308416 * k + 4889807 := by
    unfold C
    simp [show (10616832 * k + 9779614) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4889807) = 15925248 * k + 14669422 := by
    unfold C
    simp [show (5308416 * k + 4889807) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14669422) = 7962624 * k + 7334711 := by
    unfold C
    simp [show (15925248 * k + 14669422) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7334711) = 23887872 * k + 22004134 := by
    unfold C
    simp [show (7962624 * k + 7334711) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22004134) = 11943936 * k + 11002067 := by
    unfold C
    simp [show (23887872 * k + 22004134) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11002067) = 35831808 * k + 33006202 := by
    unfold C
    simp [show (11943936 * k + 11002067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33006202) = 17915904 * k + 16503101 := by
    unfold C
    simp [show (35831808 * k + 33006202) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16503101) = 53747712 * k + 49509304 := by
    unfold C
    simp [show (17915904 * k + 16503101) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 49509304) = 26873856 * k + 24754652 := by
    unfold C
    simp [show (53747712 * k + 49509304) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 24754652) = 13436928 * k + 12377326 := by
    unfold C
    simp [show (26873856 * k + 24754652) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12377326) = 6718464 * k + 6188663 := by
    unfold C
    simp [show (13436928 * k + 12377326) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6188663) = 20155392 * k + 18565990 := by
    unfold C
    simp [show (6718464 * k + 6188663) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18565990) = 10077696 * k + 9282995 := by
    unfold C
    simp [show (20155392 * k + 18565990) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9282995) = 30233088 * k + 27848986 := by
    unfold C
    simp [show (10077696 * k + 9282995) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27848986) = 15116544 * k + 13924493 := by
    unfold C
    simp [show (30233088 * k + 27848986) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13924493) = 45349632 * k + 41773480 := by
    unfold C
    simp [show (15116544 * k + 13924493) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 41773480) = 22674816 * k + 20886740 := by
    unfold C
    simp [show (45349632 * k + 41773480) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 20886740) = 11337408 * k + 10443370 := by
    unfold C
    simp [show (22674816 * k + 20886740) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10443370) = 5668704 * k + 5221685 := by
    unfold C
    simp [show (11337408 * k + 10443370) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5221685) = 17006112 * k + 15665056 := by
    unfold C
    simp [show (5668704 * k + 5221685) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15665056) = 8503056 * k + 7832528 := by
    unfold C
    simp [show (17006112 * k + 15665056) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7832528) = 4251528 * k + 3916264 := by
    unfold C
    simp [show (8503056 * k + 7832528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3916264) = 2125764 * k + 1958132 := by
    unfold C
    simp [show (4251528 * k + 3916264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1958132) = 1062882 * k + 979066 := by
    unfold C
    simp [show (2125764 * k + 1958132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 979066) = 531441 * k + 489533 := by
    unfold C
    simp [show (1062882 * k + 979066) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 965887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 965887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_966127 : ∀ k : Nat,
    iterate (1048576 * k + 966127) 32 = 531441 * k + 489655 ∧
      531441 * k + 489655 < 1048576 * k + 966127 := by
  intro k
  have h1 : C (1048576 * k + 966127) = 3145728 * k + 2898382 := by
    unfold C
    simp [show (1048576 * k + 966127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2898382) = 1572864 * k + 1449191 := by
    unfold C
    simp [show (3145728 * k + 2898382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1449191) = 4718592 * k + 4347574 := by
    unfold C
    simp [show (1572864 * k + 1449191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4347574) = 2359296 * k + 2173787 := by
    unfold C
    simp [show (4718592 * k + 4347574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2173787) = 7077888 * k + 6521362 := by
    unfold C
    simp [show (2359296 * k + 2173787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6521362) = 3538944 * k + 3260681 := by
    unfold C
    simp [show (7077888 * k + 6521362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3260681) = 10616832 * k + 9782044 := by
    unfold C
    simp [show (3538944 * k + 3260681) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9782044) = 5308416 * k + 4891022 := by
    unfold C
    simp [show (10616832 * k + 9782044) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4891022) = 2654208 * k + 2445511 := by
    unfold C
    simp [show (5308416 * k + 4891022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2445511) = 7962624 * k + 7336534 := by
    unfold C
    simp [show (2654208 * k + 2445511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7336534) = 3981312 * k + 3668267 := by
    unfold C
    simp [show (7962624 * k + 7336534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3668267) = 11943936 * k + 11004802 := by
    unfold C
    simp [show (3981312 * k + 3668267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11004802) = 5971968 * k + 5502401 := by
    unfold C
    simp [show (11943936 * k + 11004802) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5502401) = 17915904 * k + 16507204 := by
    unfold C
    simp [show (5971968 * k + 5502401) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16507204) = 8957952 * k + 8253602 := by
    unfold C
    simp [show (17915904 * k + 16507204) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8253602) = 4478976 * k + 4126801 := by
    unfold C
    simp [show (8957952 * k + 8253602) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4126801) = 13436928 * k + 12380404 := by
    unfold C
    simp [show (4478976 * k + 4126801) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12380404) = 6718464 * k + 6190202 := by
    unfold C
    simp [show (13436928 * k + 12380404) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6190202) = 3359232 * k + 3095101 := by
    unfold C
    simp [show (6718464 * k + 6190202) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3095101) = 10077696 * k + 9285304 := by
    unfold C
    simp [show (3359232 * k + 3095101) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9285304) = 5038848 * k + 4642652 := by
    unfold C
    simp [show (10077696 * k + 9285304) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4642652) = 2519424 * k + 2321326 := by
    unfold C
    simp [show (5038848 * k + 4642652) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2321326) = 1259712 * k + 1160663 := by
    unfold C
    simp [show (2519424 * k + 2321326) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1160663) = 3779136 * k + 3481990 := by
    unfold C
    simp [show (1259712 * k + 1160663) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3481990) = 1889568 * k + 1740995 := by
    unfold C
    simp [show (3779136 * k + 3481990) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1740995) = 5668704 * k + 5222986 := by
    unfold C
    simp [show (1889568 * k + 1740995) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5222986) = 2834352 * k + 2611493 := by
    unfold C
    simp [show (5668704 * k + 5222986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2611493) = 8503056 * k + 7834480 := by
    unfold C
    simp [show (2834352 * k + 2611493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7834480) = 4251528 * k + 3917240 := by
    unfold C
    simp [show (8503056 * k + 7834480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3917240) = 2125764 * k + 1958620 := by
    unfold C
    simp [show (4251528 * k + 3917240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1958620) = 1062882 * k + 979310 := by
    unfold C
    simp [show (2125764 * k + 1958620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 979310) = 531441 * k + 489655 := by
    unfold C
    simp [show (1062882 * k + 979310) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 966127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 966127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_966591 : ∀ k : Nat,
    iterate (1048576 * k + 966591) 32 = 531441 * k + 489890 ∧
      531441 * k + 489890 < 1048576 * k + 966591 := by
  intro k
  have h1 : C (1048576 * k + 966591) = 3145728 * k + 2899774 := by
    unfold C
    simp [show (1048576 * k + 966591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2899774) = 1572864 * k + 1449887 := by
    unfold C
    simp [show (3145728 * k + 2899774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1449887) = 4718592 * k + 4349662 := by
    unfold C
    simp [show (1572864 * k + 1449887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4349662) = 2359296 * k + 2174831 := by
    unfold C
    simp [show (4718592 * k + 4349662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2174831) = 7077888 * k + 6524494 := by
    unfold C
    simp [show (2359296 * k + 2174831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6524494) = 3538944 * k + 3262247 := by
    unfold C
    simp [show (7077888 * k + 6524494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3262247) = 10616832 * k + 9786742 := by
    unfold C
    simp [show (3538944 * k + 3262247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9786742) = 5308416 * k + 4893371 := by
    unfold C
    simp [show (10616832 * k + 9786742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4893371) = 15925248 * k + 14680114 := by
    unfold C
    simp [show (5308416 * k + 4893371) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14680114) = 7962624 * k + 7340057 := by
    unfold C
    simp [show (15925248 * k + 14680114) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7340057) = 23887872 * k + 22020172 := by
    unfold C
    simp [show (7962624 * k + 7340057) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22020172) = 11943936 * k + 11010086 := by
    unfold C
    simp [show (23887872 * k + 22020172) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11010086) = 5971968 * k + 5505043 := by
    unfold C
    simp [show (11943936 * k + 11010086) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5505043) = 17915904 * k + 16515130 := by
    unfold C
    simp [show (5971968 * k + 5505043) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16515130) = 8957952 * k + 8257565 := by
    unfold C
    simp [show (17915904 * k + 16515130) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8257565) = 26873856 * k + 24772696 := by
    unfold C
    simp [show (8957952 * k + 8257565) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24772696) = 13436928 * k + 12386348 := by
    unfold C
    simp [show (26873856 * k + 24772696) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12386348) = 6718464 * k + 6193174 := by
    unfold C
    simp [show (13436928 * k + 12386348) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6193174) = 3359232 * k + 3096587 := by
    unfold C
    simp [show (6718464 * k + 6193174) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3096587) = 10077696 * k + 9289762 := by
    unfold C
    simp [show (3359232 * k + 3096587) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9289762) = 5038848 * k + 4644881 := by
    unfold C
    simp [show (10077696 * k + 9289762) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4644881) = 15116544 * k + 13934644 := by
    unfold C
    simp [show (5038848 * k + 4644881) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13934644) = 7558272 * k + 6967322 := by
    unfold C
    simp [show (15116544 * k + 13934644) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6967322) = 3779136 * k + 3483661 := by
    unfold C
    simp [show (7558272 * k + 6967322) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3483661) = 11337408 * k + 10450984 := by
    unfold C
    simp [show (3779136 * k + 3483661) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10450984) = 5668704 * k + 5225492 := by
    unfold C
    simp [show (11337408 * k + 10450984) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5225492) = 2834352 * k + 2612746 := by
    unfold C
    simp [show (5668704 * k + 5225492) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2612746) = 1417176 * k + 1306373 := by
    unfold C
    simp [show (2834352 * k + 2612746) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1306373) = 4251528 * k + 3919120 := by
    unfold C
    simp [show (1417176 * k + 1306373) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3919120) = 2125764 * k + 1959560 := by
    unfold C
    simp [show (4251528 * k + 3919120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1959560) = 1062882 * k + 979780 := by
    unfold C
    simp [show (2125764 * k + 1959560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 979780) = 531441 * k + 489890 := by
    unfold C
    simp [show (1062882 * k + 979780) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 966591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 966591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_966703 : ∀ k : Nat,
    iterate (1048576 * k + 966703) 32 = 531441 * k + 489947 ∧
      531441 * k + 489947 < 1048576 * k + 966703 := by
  intro k
  have h1 : C (1048576 * k + 966703) = 3145728 * k + 2900110 := by
    unfold C
    simp [show (1048576 * k + 966703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2900110) = 1572864 * k + 1450055 := by
    unfold C
    simp [show (3145728 * k + 2900110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1450055) = 4718592 * k + 4350166 := by
    unfold C
    simp [show (1572864 * k + 1450055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4350166) = 2359296 * k + 2175083 := by
    unfold C
    simp [show (4718592 * k + 4350166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2175083) = 7077888 * k + 6525250 := by
    unfold C
    simp [show (2359296 * k + 2175083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6525250) = 3538944 * k + 3262625 := by
    unfold C
    simp [show (7077888 * k + 6525250) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3262625) = 10616832 * k + 9787876 := by
    unfold C
    simp [show (3538944 * k + 3262625) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9787876) = 5308416 * k + 4893938 := by
    unfold C
    simp [show (10616832 * k + 9787876) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4893938) = 2654208 * k + 2446969 := by
    unfold C
    simp [show (5308416 * k + 4893938) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2446969) = 7962624 * k + 7340908 := by
    unfold C
    simp [show (2654208 * k + 2446969) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7340908) = 3981312 * k + 3670454 := by
    unfold C
    simp [show (7962624 * k + 7340908) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3670454) = 1990656 * k + 1835227 := by
    unfold C
    simp [show (3981312 * k + 3670454) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1835227) = 5971968 * k + 5505682 := by
    unfold C
    simp [show (1990656 * k + 1835227) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5505682) = 2985984 * k + 2752841 := by
    unfold C
    simp [show (5971968 * k + 5505682) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2752841) = 8957952 * k + 8258524 := by
    unfold C
    simp [show (2985984 * k + 2752841) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8258524) = 4478976 * k + 4129262 := by
    unfold C
    simp [show (8957952 * k + 8258524) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4129262) = 2239488 * k + 2064631 := by
    unfold C
    simp [show (4478976 * k + 4129262) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2064631) = 6718464 * k + 6193894 := by
    unfold C
    simp [show (2239488 * k + 2064631) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6193894) = 3359232 * k + 3096947 := by
    unfold C
    simp [show (6718464 * k + 6193894) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3096947) = 10077696 * k + 9290842 := by
    unfold C
    simp [show (3359232 * k + 3096947) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9290842) = 5038848 * k + 4645421 := by
    unfold C
    simp [show (10077696 * k + 9290842) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4645421) = 15116544 * k + 13936264 := by
    unfold C
    simp [show (5038848 * k + 4645421) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13936264) = 7558272 * k + 6968132 := by
    unfold C
    simp [show (15116544 * k + 13936264) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6968132) = 3779136 * k + 3484066 := by
    unfold C
    simp [show (7558272 * k + 6968132) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3484066) = 1889568 * k + 1742033 := by
    unfold C
    simp [show (3779136 * k + 3484066) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1742033) = 5668704 * k + 5226100 := by
    unfold C
    simp [show (1889568 * k + 1742033) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5226100) = 2834352 * k + 2613050 := by
    unfold C
    simp [show (5668704 * k + 5226100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2613050) = 1417176 * k + 1306525 := by
    unfold C
    simp [show (2834352 * k + 2613050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1306525) = 4251528 * k + 3919576 := by
    unfold C
    simp [show (1417176 * k + 1306525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3919576) = 2125764 * k + 1959788 := by
    unfold C
    simp [show (4251528 * k + 3919576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1959788) = 1062882 * k + 979894 := by
    unfold C
    simp [show (2125764 * k + 1959788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 979894) = 531441 * k + 489947 := by
    unfold C
    simp [show (1062882 * k + 979894) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 966703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 966703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_967583 : ∀ k : Nat,
    iterate (1048576 * k + 967583) 32 = 531441 * k + 490393 ∧
      531441 * k + 490393 < 1048576 * k + 967583 := by
  intro k
  have h1 : C (1048576 * k + 967583) = 3145728 * k + 2902750 := by
    unfold C
    simp [show (1048576 * k + 967583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2902750) = 1572864 * k + 1451375 := by
    unfold C
    simp [show (3145728 * k + 2902750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1451375) = 4718592 * k + 4354126 := by
    unfold C
    simp [show (1572864 * k + 1451375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4354126) = 2359296 * k + 2177063 := by
    unfold C
    simp [show (4718592 * k + 4354126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2177063) = 7077888 * k + 6531190 := by
    unfold C
    simp [show (2359296 * k + 2177063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6531190) = 3538944 * k + 3265595 := by
    unfold C
    simp [show (7077888 * k + 6531190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3265595) = 10616832 * k + 9796786 := by
    unfold C
    simp [show (3538944 * k + 3265595) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9796786) = 5308416 * k + 4898393 := by
    unfold C
    simp [show (10616832 * k + 9796786) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4898393) = 15925248 * k + 14695180 := by
    unfold C
    simp [show (5308416 * k + 4898393) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14695180) = 7962624 * k + 7347590 := by
    unfold C
    simp [show (15925248 * k + 14695180) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7347590) = 3981312 * k + 3673795 := by
    unfold C
    simp [show (7962624 * k + 7347590) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3673795) = 11943936 * k + 11021386 := by
    unfold C
    simp [show (3981312 * k + 3673795) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11021386) = 5971968 * k + 5510693 := by
    unfold C
    simp [show (11943936 * k + 11021386) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5510693) = 17915904 * k + 16532080 := by
    unfold C
    simp [show (5971968 * k + 5510693) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16532080) = 8957952 * k + 8266040 := by
    unfold C
    simp [show (17915904 * k + 16532080) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8266040) = 4478976 * k + 4133020 := by
    unfold C
    simp [show (8957952 * k + 8266040) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4133020) = 2239488 * k + 2066510 := by
    unfold C
    simp [show (4478976 * k + 4133020) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2066510) = 1119744 * k + 1033255 := by
    unfold C
    simp [show (2239488 * k + 2066510) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1033255) = 3359232 * k + 3099766 := by
    unfold C
    simp [show (1119744 * k + 1033255) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3099766) = 1679616 * k + 1549883 := by
    unfold C
    simp [show (3359232 * k + 3099766) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1549883) = 5038848 * k + 4649650 := by
    unfold C
    simp [show (1679616 * k + 1549883) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4649650) = 2519424 * k + 2324825 := by
    unfold C
    simp [show (5038848 * k + 4649650) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2324825) = 7558272 * k + 6974476 := by
    unfold C
    simp [show (2519424 * k + 2324825) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6974476) = 3779136 * k + 3487238 := by
    unfold C
    simp [show (7558272 * k + 6974476) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3487238) = 1889568 * k + 1743619 := by
    unfold C
    simp [show (3779136 * k + 3487238) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1743619) = 5668704 * k + 5230858 := by
    unfold C
    simp [show (1889568 * k + 1743619) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5230858) = 2834352 * k + 2615429 := by
    unfold C
    simp [show (5668704 * k + 5230858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2615429) = 8503056 * k + 7846288 := by
    unfold C
    simp [show (2834352 * k + 2615429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7846288) = 4251528 * k + 3923144 := by
    unfold C
    simp [show (8503056 * k + 7846288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3923144) = 2125764 * k + 1961572 := by
    unfold C
    simp [show (4251528 * k + 3923144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1961572) = 1062882 * k + 980786 := by
    unfold C
    simp [show (2125764 * k + 1961572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 980786) = 531441 * k + 490393 := by
    unfold C
    simp [show (1062882 * k + 980786) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 967583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 967583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_967935 : ∀ k : Nat,
    iterate (1048576 * k + 967935) 32 = 531441 * k + 490571 ∧
      531441 * k + 490571 < 1048576 * k + 967935 := by
  intro k
  have h1 : C (1048576 * k + 967935) = 3145728 * k + 2903806 := by
    unfold C
    simp [show (1048576 * k + 967935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2903806) = 1572864 * k + 1451903 := by
    unfold C
    simp [show (3145728 * k + 2903806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1451903) = 4718592 * k + 4355710 := by
    unfold C
    simp [show (1572864 * k + 1451903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4355710) = 2359296 * k + 2177855 := by
    unfold C
    simp [show (4718592 * k + 4355710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2177855) = 7077888 * k + 6533566 := by
    unfold C
    simp [show (2359296 * k + 2177855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6533566) = 3538944 * k + 3266783 := by
    unfold C
    simp [show (7077888 * k + 6533566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3266783) = 10616832 * k + 9800350 := by
    unfold C
    simp [show (3538944 * k + 3266783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9800350) = 5308416 * k + 4900175 := by
    unfold C
    simp [show (10616832 * k + 9800350) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4900175) = 15925248 * k + 14700526 := by
    unfold C
    simp [show (5308416 * k + 4900175) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14700526) = 7962624 * k + 7350263 := by
    unfold C
    simp [show (15925248 * k + 14700526) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7350263) = 23887872 * k + 22050790 := by
    unfold C
    simp [show (7962624 * k + 7350263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22050790) = 11943936 * k + 11025395 := by
    unfold C
    simp [show (23887872 * k + 22050790) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11025395) = 35831808 * k + 33076186 := by
    unfold C
    simp [show (11943936 * k + 11025395) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33076186) = 17915904 * k + 16538093 := by
    unfold C
    simp [show (35831808 * k + 33076186) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16538093) = 53747712 * k + 49614280 := by
    unfold C
    simp [show (17915904 * k + 16538093) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 49614280) = 26873856 * k + 24807140 := by
    unfold C
    simp [show (53747712 * k + 49614280) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 24807140) = 13436928 * k + 12403570 := by
    unfold C
    simp [show (26873856 * k + 24807140) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12403570) = 6718464 * k + 6201785 := by
    unfold C
    simp [show (13436928 * k + 12403570) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6201785) = 20155392 * k + 18605356 := by
    unfold C
    simp [show (6718464 * k + 6201785) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18605356) = 10077696 * k + 9302678 := by
    unfold C
    simp [show (20155392 * k + 18605356) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9302678) = 5038848 * k + 4651339 := by
    unfold C
    simp [show (10077696 * k + 9302678) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4651339) = 15116544 * k + 13954018 := by
    unfold C
    simp [show (5038848 * k + 4651339) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13954018) = 7558272 * k + 6977009 := by
    unfold C
    simp [show (15116544 * k + 13954018) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6977009) = 22674816 * k + 20931028 := by
    unfold C
    simp [show (7558272 * k + 6977009) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20931028) = 11337408 * k + 10465514 := by
    unfold C
    simp [show (22674816 * k + 20931028) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10465514) = 5668704 * k + 5232757 := by
    unfold C
    simp [show (11337408 * k + 10465514) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5232757) = 17006112 * k + 15698272 := by
    unfold C
    simp [show (5668704 * k + 5232757) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15698272) = 8503056 * k + 7849136 := by
    unfold C
    simp [show (17006112 * k + 15698272) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7849136) = 4251528 * k + 3924568 := by
    unfold C
    simp [show (8503056 * k + 7849136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3924568) = 2125764 * k + 1962284 := by
    unfold C
    simp [show (4251528 * k + 3924568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1962284) = 1062882 * k + 981142 := by
    unfold C
    simp [show (2125764 * k + 1962284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 981142) = 531441 * k + 490571 := by
    unfold C
    simp [show (1062882 * k + 981142) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 967935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 967935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_968063 : ∀ k : Nat,
    iterate (1048576 * k + 968063) 32 = 531441 * k + 490636 ∧
      531441 * k + 490636 < 1048576 * k + 968063 := by
  intro k
  have h1 : C (1048576 * k + 968063) = 3145728 * k + 2904190 := by
    unfold C
    simp [show (1048576 * k + 968063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2904190) = 1572864 * k + 1452095 := by
    unfold C
    simp [show (3145728 * k + 2904190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1452095) = 4718592 * k + 4356286 := by
    unfold C
    simp [show (1572864 * k + 1452095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4356286) = 2359296 * k + 2178143 := by
    unfold C
    simp [show (4718592 * k + 4356286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2178143) = 7077888 * k + 6534430 := by
    unfold C
    simp [show (2359296 * k + 2178143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6534430) = 3538944 * k + 3267215 := by
    unfold C
    simp [show (7077888 * k + 6534430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3267215) = 10616832 * k + 9801646 := by
    unfold C
    simp [show (3538944 * k + 3267215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9801646) = 5308416 * k + 4900823 := by
    unfold C
    simp [show (10616832 * k + 9801646) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4900823) = 15925248 * k + 14702470 := by
    unfold C
    simp [show (5308416 * k + 4900823) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14702470) = 7962624 * k + 7351235 := by
    unfold C
    simp [show (15925248 * k + 14702470) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7351235) = 23887872 * k + 22053706 := by
    unfold C
    simp [show (7962624 * k + 7351235) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22053706) = 11943936 * k + 11026853 := by
    unfold C
    simp [show (23887872 * k + 22053706) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11026853) = 35831808 * k + 33080560 := by
    unfold C
    simp [show (11943936 * k + 11026853) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33080560) = 17915904 * k + 16540280 := by
    unfold C
    simp [show (35831808 * k + 33080560) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16540280) = 8957952 * k + 8270140 := by
    unfold C
    simp [show (17915904 * k + 16540280) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8270140) = 4478976 * k + 4135070 := by
    unfold C
    simp [show (8957952 * k + 8270140) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4135070) = 2239488 * k + 2067535 := by
    unfold C
    simp [show (4478976 * k + 4135070) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2067535) = 6718464 * k + 6202606 := by
    unfold C
    simp [show (2239488 * k + 2067535) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6202606) = 3359232 * k + 3101303 := by
    unfold C
    simp [show (6718464 * k + 6202606) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3101303) = 10077696 * k + 9303910 := by
    unfold C
    simp [show (3359232 * k + 3101303) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9303910) = 5038848 * k + 4651955 := by
    unfold C
    simp [show (10077696 * k + 9303910) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4651955) = 15116544 * k + 13955866 := by
    unfold C
    simp [show (5038848 * k + 4651955) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13955866) = 7558272 * k + 6977933 := by
    unfold C
    simp [show (15116544 * k + 13955866) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6977933) = 22674816 * k + 20933800 := by
    unfold C
    simp [show (7558272 * k + 6977933) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20933800) = 11337408 * k + 10466900 := by
    unfold C
    simp [show (22674816 * k + 20933800) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10466900) = 5668704 * k + 5233450 := by
    unfold C
    simp [show (11337408 * k + 10466900) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5233450) = 2834352 * k + 2616725 := by
    unfold C
    simp [show (5668704 * k + 5233450) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2616725) = 8503056 * k + 7850176 := by
    unfold C
    simp [show (2834352 * k + 2616725) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7850176) = 4251528 * k + 3925088 := by
    unfold C
    simp [show (8503056 * k + 7850176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3925088) = 2125764 * k + 1962544 := by
    unfold C
    simp [show (4251528 * k + 3925088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1962544) = 1062882 * k + 981272 := by
    unfold C
    simp [show (2125764 * k + 1962544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 981272) = 531441 * k + 490636 := by
    unfold C
    simp [show (1062882 * k + 981272) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 968063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 968063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_969467 : ∀ k : Nat,
    iterate (1048576 * k + 969467) 32 = 531441 * k + 491348 ∧
      531441 * k + 491348 < 1048576 * k + 969467 := by
  intro k
  have h1 : C (1048576 * k + 969467) = 3145728 * k + 2908402 := by
    unfold C
    simp [show (1048576 * k + 969467) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2908402) = 1572864 * k + 1454201 := by
    unfold C
    simp [show (3145728 * k + 2908402) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1454201) = 4718592 * k + 4362604 := by
    unfold C
    simp [show (1572864 * k + 1454201) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4362604) = 2359296 * k + 2181302 := by
    unfold C
    simp [show (4718592 * k + 4362604) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2181302) = 1179648 * k + 1090651 := by
    unfold C
    simp [show (2359296 * k + 2181302) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1090651) = 3538944 * k + 3271954 := by
    unfold C
    simp [show (1179648 * k + 1090651) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3271954) = 1769472 * k + 1635977 := by
    unfold C
    simp [show (3538944 * k + 3271954) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1635977) = 5308416 * k + 4907932 := by
    unfold C
    simp [show (1769472 * k + 1635977) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4907932) = 2654208 * k + 2453966 := by
    unfold C
    simp [show (5308416 * k + 4907932) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2453966) = 1327104 * k + 1226983 := by
    unfold C
    simp [show (2654208 * k + 2453966) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1226983) = 3981312 * k + 3680950 := by
    unfold C
    simp [show (1327104 * k + 1226983) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3680950) = 1990656 * k + 1840475 := by
    unfold C
    simp [show (3981312 * k + 3680950) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1840475) = 5971968 * k + 5521426 := by
    unfold C
    simp [show (1990656 * k + 1840475) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5521426) = 2985984 * k + 2760713 := by
    unfold C
    simp [show (5971968 * k + 5521426) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2760713) = 8957952 * k + 8282140 := by
    unfold C
    simp [show (2985984 * k + 2760713) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8282140) = 4478976 * k + 4141070 := by
    unfold C
    simp [show (8957952 * k + 8282140) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4141070) = 2239488 * k + 2070535 := by
    unfold C
    simp [show (4478976 * k + 4141070) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2070535) = 6718464 * k + 6211606 := by
    unfold C
    simp [show (2239488 * k + 2070535) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6211606) = 3359232 * k + 3105803 := by
    unfold C
    simp [show (6718464 * k + 6211606) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3105803) = 10077696 * k + 9317410 := by
    unfold C
    simp [show (3359232 * k + 3105803) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9317410) = 5038848 * k + 4658705 := by
    unfold C
    simp [show (10077696 * k + 9317410) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4658705) = 15116544 * k + 13976116 := by
    unfold C
    simp [show (5038848 * k + 4658705) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13976116) = 7558272 * k + 6988058 := by
    unfold C
    simp [show (15116544 * k + 13976116) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6988058) = 3779136 * k + 3494029 := by
    unfold C
    simp [show (7558272 * k + 6988058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3494029) = 11337408 * k + 10482088 := by
    unfold C
    simp [show (3779136 * k + 3494029) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10482088) = 5668704 * k + 5241044 := by
    unfold C
    simp [show (11337408 * k + 10482088) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5241044) = 2834352 * k + 2620522 := by
    unfold C
    simp [show (5668704 * k + 5241044) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2620522) = 1417176 * k + 1310261 := by
    unfold C
    simp [show (2834352 * k + 2620522) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1310261) = 4251528 * k + 3930784 := by
    unfold C
    simp [show (1417176 * k + 1310261) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3930784) = 2125764 * k + 1965392 := by
    unfold C
    simp [show (4251528 * k + 3930784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1965392) = 1062882 * k + 982696 := by
    unfold C
    simp [show (2125764 * k + 1965392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 982696) = 531441 * k + 491348 := by
    unfold C
    simp [show (1062882 * k + 982696) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 969467) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 969467)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_971551 : ∀ k : Nat,
    iterate (1048576 * k + 971551) 32 = 531441 * k + 492404 ∧
      531441 * k + 492404 < 1048576 * k + 971551 := by
  intro k
  have h1 : C (1048576 * k + 971551) = 3145728 * k + 2914654 := by
    unfold C
    simp [show (1048576 * k + 971551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2914654) = 1572864 * k + 1457327 := by
    unfold C
    simp [show (3145728 * k + 2914654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1457327) = 4718592 * k + 4371982 := by
    unfold C
    simp [show (1572864 * k + 1457327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4371982) = 2359296 * k + 2185991 := by
    unfold C
    simp [show (4718592 * k + 4371982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2185991) = 7077888 * k + 6557974 := by
    unfold C
    simp [show (2359296 * k + 2185991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6557974) = 3538944 * k + 3278987 := by
    unfold C
    simp [show (7077888 * k + 6557974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3278987) = 10616832 * k + 9836962 := by
    unfold C
    simp [show (3538944 * k + 3278987) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9836962) = 5308416 * k + 4918481 := by
    unfold C
    simp [show (10616832 * k + 9836962) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4918481) = 15925248 * k + 14755444 := by
    unfold C
    simp [show (5308416 * k + 4918481) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14755444) = 7962624 * k + 7377722 := by
    unfold C
    simp [show (15925248 * k + 14755444) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7377722) = 3981312 * k + 3688861 := by
    unfold C
    simp [show (7962624 * k + 7377722) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3688861) = 11943936 * k + 11066584 := by
    unfold C
    simp [show (3981312 * k + 3688861) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11066584) = 5971968 * k + 5533292 := by
    unfold C
    simp [show (11943936 * k + 11066584) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5533292) = 2985984 * k + 2766646 := by
    unfold C
    simp [show (5971968 * k + 5533292) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2766646) = 1492992 * k + 1383323 := by
    unfold C
    simp [show (2985984 * k + 2766646) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1383323) = 4478976 * k + 4149970 := by
    unfold C
    simp [show (1492992 * k + 1383323) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4149970) = 2239488 * k + 2074985 := by
    unfold C
    simp [show (4478976 * k + 4149970) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2074985) = 6718464 * k + 6224956 := by
    unfold C
    simp [show (2239488 * k + 2074985) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6224956) = 3359232 * k + 3112478 := by
    unfold C
    simp [show (6718464 * k + 6224956) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3112478) = 1679616 * k + 1556239 := by
    unfold C
    simp [show (3359232 * k + 3112478) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1556239) = 5038848 * k + 4668718 := by
    unfold C
    simp [show (1679616 * k + 1556239) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4668718) = 2519424 * k + 2334359 := by
    unfold C
    simp [show (5038848 * k + 4668718) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2334359) = 7558272 * k + 7003078 := by
    unfold C
    simp [show (2519424 * k + 2334359) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7003078) = 3779136 * k + 3501539 := by
    unfold C
    simp [show (7558272 * k + 7003078) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3501539) = 11337408 * k + 10504618 := by
    unfold C
    simp [show (3779136 * k + 3501539) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10504618) = 5668704 * k + 5252309 := by
    unfold C
    simp [show (11337408 * k + 10504618) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5252309) = 17006112 * k + 15756928 := by
    unfold C
    simp [show (5668704 * k + 5252309) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15756928) = 8503056 * k + 7878464 := by
    unfold C
    simp [show (17006112 * k + 15756928) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7878464) = 4251528 * k + 3939232 := by
    unfold C
    simp [show (8503056 * k + 7878464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3939232) = 2125764 * k + 1969616 := by
    unfold C
    simp [show (4251528 * k + 3939232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1969616) = 1062882 * k + 984808 := by
    unfold C
    simp [show (2125764 * k + 1969616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 984808) = 531441 * k + 492404 := by
    unfold C
    simp [show (1062882 * k + 984808) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 971551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 971551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_972031 : ∀ k : Nat,
    iterate (1048576 * k + 972031) 32 = 531441 * k + 492647 ∧
      531441 * k + 492647 < 1048576 * k + 972031 := by
  intro k
  have h1 : C (1048576 * k + 972031) = 3145728 * k + 2916094 := by
    unfold C
    simp [show (1048576 * k + 972031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2916094) = 1572864 * k + 1458047 := by
    unfold C
    simp [show (3145728 * k + 2916094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1458047) = 4718592 * k + 4374142 := by
    unfold C
    simp [show (1572864 * k + 1458047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4374142) = 2359296 * k + 2187071 := by
    unfold C
    simp [show (4718592 * k + 4374142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2187071) = 7077888 * k + 6561214 := by
    unfold C
    simp [show (2359296 * k + 2187071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6561214) = 3538944 * k + 3280607 := by
    unfold C
    simp [show (7077888 * k + 6561214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3280607) = 10616832 * k + 9841822 := by
    unfold C
    simp [show (3538944 * k + 3280607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9841822) = 5308416 * k + 4920911 := by
    unfold C
    simp [show (10616832 * k + 9841822) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4920911) = 15925248 * k + 14762734 := by
    unfold C
    simp [show (5308416 * k + 4920911) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14762734) = 7962624 * k + 7381367 := by
    unfold C
    simp [show (15925248 * k + 14762734) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7381367) = 23887872 * k + 22144102 := by
    unfold C
    simp [show (7962624 * k + 7381367) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22144102) = 11943936 * k + 11072051 := by
    unfold C
    simp [show (23887872 * k + 22144102) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11072051) = 35831808 * k + 33216154 := by
    unfold C
    simp [show (11943936 * k + 11072051) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33216154) = 17915904 * k + 16608077 := by
    unfold C
    simp [show (35831808 * k + 33216154) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16608077) = 53747712 * k + 49824232 := by
    unfold C
    simp [show (17915904 * k + 16608077) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 49824232) = 26873856 * k + 24912116 := by
    unfold C
    simp [show (53747712 * k + 49824232) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 24912116) = 13436928 * k + 12456058 := by
    unfold C
    simp [show (26873856 * k + 24912116) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12456058) = 6718464 * k + 6228029 := by
    unfold C
    simp [show (13436928 * k + 12456058) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6228029) = 20155392 * k + 18684088 := by
    unfold C
    simp [show (6718464 * k + 6228029) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18684088) = 10077696 * k + 9342044 := by
    unfold C
    simp [show (20155392 * k + 18684088) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9342044) = 5038848 * k + 4671022 := by
    unfold C
    simp [show (10077696 * k + 9342044) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4671022) = 2519424 * k + 2335511 := by
    unfold C
    simp [show (5038848 * k + 4671022) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2335511) = 7558272 * k + 7006534 := by
    unfold C
    simp [show (2519424 * k + 2335511) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7006534) = 3779136 * k + 3503267 := by
    unfold C
    simp [show (7558272 * k + 7006534) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3503267) = 11337408 * k + 10509802 := by
    unfold C
    simp [show (3779136 * k + 3503267) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10509802) = 5668704 * k + 5254901 := by
    unfold C
    simp [show (11337408 * k + 10509802) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5254901) = 17006112 * k + 15764704 := by
    unfold C
    simp [show (5668704 * k + 5254901) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15764704) = 8503056 * k + 7882352 := by
    unfold C
    simp [show (17006112 * k + 15764704) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7882352) = 4251528 * k + 3941176 := by
    unfold C
    simp [show (8503056 * k + 7882352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3941176) = 2125764 * k + 1970588 := by
    unfold C
    simp [show (4251528 * k + 3941176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1970588) = 1062882 * k + 985294 := by
    unfold C
    simp [show (2125764 * k + 1970588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 985294) = 531441 * k + 492647 := by
    unfold C
    simp [show (1062882 * k + 985294) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 972031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 972031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_972159 : ∀ k : Nat,
    iterate (1048576 * k + 972159) 32 = 531441 * k + 492712 ∧
      531441 * k + 492712 < 1048576 * k + 972159 := by
  intro k
  have h1 : C (1048576 * k + 972159) = 3145728 * k + 2916478 := by
    unfold C
    simp [show (1048576 * k + 972159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2916478) = 1572864 * k + 1458239 := by
    unfold C
    simp [show (3145728 * k + 2916478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1458239) = 4718592 * k + 4374718 := by
    unfold C
    simp [show (1572864 * k + 1458239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4374718) = 2359296 * k + 2187359 := by
    unfold C
    simp [show (4718592 * k + 4374718) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2187359) = 7077888 * k + 6562078 := by
    unfold C
    simp [show (2359296 * k + 2187359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6562078) = 3538944 * k + 3281039 := by
    unfold C
    simp [show (7077888 * k + 6562078) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3281039) = 10616832 * k + 9843118 := by
    unfold C
    simp [show (3538944 * k + 3281039) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9843118) = 5308416 * k + 4921559 := by
    unfold C
    simp [show (10616832 * k + 9843118) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4921559) = 15925248 * k + 14764678 := by
    unfold C
    simp [show (5308416 * k + 4921559) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14764678) = 7962624 * k + 7382339 := by
    unfold C
    simp [show (15925248 * k + 14764678) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7382339) = 23887872 * k + 22147018 := by
    unfold C
    simp [show (7962624 * k + 7382339) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22147018) = 11943936 * k + 11073509 := by
    unfold C
    simp [show (23887872 * k + 22147018) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11073509) = 35831808 * k + 33220528 := by
    unfold C
    simp [show (11943936 * k + 11073509) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33220528) = 17915904 * k + 16610264 := by
    unfold C
    simp [show (35831808 * k + 33220528) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16610264) = 8957952 * k + 8305132 := by
    unfold C
    simp [show (17915904 * k + 16610264) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8305132) = 4478976 * k + 4152566 := by
    unfold C
    simp [show (8957952 * k + 8305132) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4152566) = 2239488 * k + 2076283 := by
    unfold C
    simp [show (4478976 * k + 4152566) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2076283) = 6718464 * k + 6228850 := by
    unfold C
    simp [show (2239488 * k + 2076283) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6228850) = 3359232 * k + 3114425 := by
    unfold C
    simp [show (6718464 * k + 6228850) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3114425) = 10077696 * k + 9343276 := by
    unfold C
    simp [show (3359232 * k + 3114425) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9343276) = 5038848 * k + 4671638 := by
    unfold C
    simp [show (10077696 * k + 9343276) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4671638) = 2519424 * k + 2335819 := by
    unfold C
    simp [show (5038848 * k + 4671638) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2335819) = 7558272 * k + 7007458 := by
    unfold C
    simp [show (2519424 * k + 2335819) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7007458) = 3779136 * k + 3503729 := by
    unfold C
    simp [show (7558272 * k + 7007458) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3503729) = 11337408 * k + 10511188 := by
    unfold C
    simp [show (3779136 * k + 3503729) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10511188) = 5668704 * k + 5255594 := by
    unfold C
    simp [show (11337408 * k + 10511188) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5255594) = 2834352 * k + 2627797 := by
    unfold C
    simp [show (5668704 * k + 5255594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2627797) = 8503056 * k + 7883392 := by
    unfold C
    simp [show (2834352 * k + 2627797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7883392) = 4251528 * k + 3941696 := by
    unfold C
    simp [show (8503056 * k + 7883392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3941696) = 2125764 * k + 1970848 := by
    unfold C
    simp [show (4251528 * k + 3941696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1970848) = 1062882 * k + 985424 := by
    unfold C
    simp [show (2125764 * k + 1970848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 985424) = 531441 * k + 492712 := by
    unfold C
    simp [show (1062882 * k + 985424) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 972159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 972159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_972735 : ∀ k : Nat,
    iterate (1048576 * k + 972735) 32 = 531441 * k + 493004 ∧
      531441 * k + 493004 < 1048576 * k + 972735 := by
  intro k
  have h1 : C (1048576 * k + 972735) = 3145728 * k + 2918206 := by
    unfold C
    simp [show (1048576 * k + 972735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2918206) = 1572864 * k + 1459103 := by
    unfold C
    simp [show (3145728 * k + 2918206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1459103) = 4718592 * k + 4377310 := by
    unfold C
    simp [show (1572864 * k + 1459103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4377310) = 2359296 * k + 2188655 := by
    unfold C
    simp [show (4718592 * k + 4377310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2188655) = 7077888 * k + 6565966 := by
    unfold C
    simp [show (2359296 * k + 2188655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6565966) = 3538944 * k + 3282983 := by
    unfold C
    simp [show (7077888 * k + 6565966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3282983) = 10616832 * k + 9848950 := by
    unfold C
    simp [show (3538944 * k + 3282983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9848950) = 5308416 * k + 4924475 := by
    unfold C
    simp [show (10616832 * k + 9848950) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4924475) = 15925248 * k + 14773426 := by
    unfold C
    simp [show (5308416 * k + 4924475) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14773426) = 7962624 * k + 7386713 := by
    unfold C
    simp [show (15925248 * k + 14773426) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7386713) = 23887872 * k + 22160140 := by
    unfold C
    simp [show (7962624 * k + 7386713) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22160140) = 11943936 * k + 11080070 := by
    unfold C
    simp [show (23887872 * k + 22160140) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11080070) = 5971968 * k + 5540035 := by
    unfold C
    simp [show (11943936 * k + 11080070) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5540035) = 17915904 * k + 16620106 := by
    unfold C
    simp [show (5971968 * k + 5540035) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16620106) = 8957952 * k + 8310053 := by
    unfold C
    simp [show (17915904 * k + 16620106) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8310053) = 26873856 * k + 24930160 := by
    unfold C
    simp [show (8957952 * k + 8310053) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24930160) = 13436928 * k + 12465080 := by
    unfold C
    simp [show (26873856 * k + 24930160) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12465080) = 6718464 * k + 6232540 := by
    unfold C
    simp [show (13436928 * k + 12465080) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6232540) = 3359232 * k + 3116270 := by
    unfold C
    simp [show (6718464 * k + 6232540) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3116270) = 1679616 * k + 1558135 := by
    unfold C
    simp [show (3359232 * k + 3116270) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1558135) = 5038848 * k + 4674406 := by
    unfold C
    simp [show (1679616 * k + 1558135) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4674406) = 2519424 * k + 2337203 := by
    unfold C
    simp [show (5038848 * k + 4674406) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2337203) = 7558272 * k + 7011610 := by
    unfold C
    simp [show (2519424 * k + 2337203) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7011610) = 3779136 * k + 3505805 := by
    unfold C
    simp [show (7558272 * k + 7011610) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3505805) = 11337408 * k + 10517416 := by
    unfold C
    simp [show (3779136 * k + 3505805) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10517416) = 5668704 * k + 5258708 := by
    unfold C
    simp [show (11337408 * k + 10517416) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5258708) = 2834352 * k + 2629354 := by
    unfold C
    simp [show (5668704 * k + 5258708) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2629354) = 1417176 * k + 1314677 := by
    unfold C
    simp [show (2834352 * k + 2629354) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1314677) = 4251528 * k + 3944032 := by
    unfold C
    simp [show (1417176 * k + 1314677) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3944032) = 2125764 * k + 1972016 := by
    unfold C
    simp [show (4251528 * k + 3944032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1972016) = 1062882 * k + 986008 := by
    unfold C
    simp [show (2125764 * k + 1972016) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 986008) = 531441 * k + 493004 := by
    unfold C
    simp [show (1062882 * k + 986008) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 972735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 972735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_972847 : ∀ k : Nat,
    iterate (1048576 * k + 972847) 32 = 531441 * k + 493061 ∧
      531441 * k + 493061 < 1048576 * k + 972847 := by
  intro k
  have h1 : C (1048576 * k + 972847) = 3145728 * k + 2918542 := by
    unfold C
    simp [show (1048576 * k + 972847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2918542) = 1572864 * k + 1459271 := by
    unfold C
    simp [show (3145728 * k + 2918542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1459271) = 4718592 * k + 4377814 := by
    unfold C
    simp [show (1572864 * k + 1459271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4377814) = 2359296 * k + 2188907 := by
    unfold C
    simp [show (4718592 * k + 4377814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2188907) = 7077888 * k + 6566722 := by
    unfold C
    simp [show (2359296 * k + 2188907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6566722) = 3538944 * k + 3283361 := by
    unfold C
    simp [show (7077888 * k + 6566722) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3283361) = 10616832 * k + 9850084 := by
    unfold C
    simp [show (3538944 * k + 3283361) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9850084) = 5308416 * k + 4925042 := by
    unfold C
    simp [show (10616832 * k + 9850084) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4925042) = 2654208 * k + 2462521 := by
    unfold C
    simp [show (5308416 * k + 4925042) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2462521) = 7962624 * k + 7387564 := by
    unfold C
    simp [show (2654208 * k + 2462521) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7387564) = 3981312 * k + 3693782 := by
    unfold C
    simp [show (7962624 * k + 7387564) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3693782) = 1990656 * k + 1846891 := by
    unfold C
    simp [show (3981312 * k + 3693782) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1846891) = 5971968 * k + 5540674 := by
    unfold C
    simp [show (1990656 * k + 1846891) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5540674) = 2985984 * k + 2770337 := by
    unfold C
    simp [show (5971968 * k + 5540674) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2770337) = 8957952 * k + 8311012 := by
    unfold C
    simp [show (2985984 * k + 2770337) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8311012) = 4478976 * k + 4155506 := by
    unfold C
    simp [show (8957952 * k + 8311012) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4155506) = 2239488 * k + 2077753 := by
    unfold C
    simp [show (4478976 * k + 4155506) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2077753) = 6718464 * k + 6233260 := by
    unfold C
    simp [show (2239488 * k + 2077753) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6233260) = 3359232 * k + 3116630 := by
    unfold C
    simp [show (6718464 * k + 6233260) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3116630) = 1679616 * k + 1558315 := by
    unfold C
    simp [show (3359232 * k + 3116630) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1558315) = 5038848 * k + 4674946 := by
    unfold C
    simp [show (1679616 * k + 1558315) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4674946) = 2519424 * k + 2337473 := by
    unfold C
    simp [show (5038848 * k + 4674946) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2337473) = 7558272 * k + 7012420 := by
    unfold C
    simp [show (2519424 * k + 2337473) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7012420) = 3779136 * k + 3506210 := by
    unfold C
    simp [show (7558272 * k + 7012420) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3506210) = 1889568 * k + 1753105 := by
    unfold C
    simp [show (3779136 * k + 3506210) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1753105) = 5668704 * k + 5259316 := by
    unfold C
    simp [show (1889568 * k + 1753105) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5259316) = 2834352 * k + 2629658 := by
    unfold C
    simp [show (5668704 * k + 5259316) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2629658) = 1417176 * k + 1314829 := by
    unfold C
    simp [show (2834352 * k + 2629658) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1314829) = 4251528 * k + 3944488 := by
    unfold C
    simp [show (1417176 * k + 1314829) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3944488) = 2125764 * k + 1972244 := by
    unfold C
    simp [show (4251528 * k + 3944488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1972244) = 1062882 * k + 986122 := by
    unfold C
    simp [show (2125764 * k + 1972244) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 986122) = 531441 * k + 493061 := by
    unfold C
    simp [show (1062882 * k + 986122) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 972847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 972847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_973007 : ∀ k : Nat,
    iterate (1048576 * k + 973007) 32 = 531441 * k + 493142 ∧
      531441 * k + 493142 < 1048576 * k + 973007 := by
  intro k
  have h1 : C (1048576 * k + 973007) = 3145728 * k + 2919022 := by
    unfold C
    simp [show (1048576 * k + 973007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2919022) = 1572864 * k + 1459511 := by
    unfold C
    simp [show (3145728 * k + 2919022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1459511) = 4718592 * k + 4378534 := by
    unfold C
    simp [show (1572864 * k + 1459511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4378534) = 2359296 * k + 2189267 := by
    unfold C
    simp [show (4718592 * k + 4378534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2189267) = 7077888 * k + 6567802 := by
    unfold C
    simp [show (2359296 * k + 2189267) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6567802) = 3538944 * k + 3283901 := by
    unfold C
    simp [show (7077888 * k + 6567802) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3283901) = 10616832 * k + 9851704 := by
    unfold C
    simp [show (3538944 * k + 3283901) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9851704) = 5308416 * k + 4925852 := by
    unfold C
    simp [show (10616832 * k + 9851704) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4925852) = 2654208 * k + 2462926 := by
    unfold C
    simp [show (5308416 * k + 4925852) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2462926) = 1327104 * k + 1231463 := by
    unfold C
    simp [show (2654208 * k + 2462926) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1231463) = 3981312 * k + 3694390 := by
    unfold C
    simp [show (1327104 * k + 1231463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3694390) = 1990656 * k + 1847195 := by
    unfold C
    simp [show (3981312 * k + 3694390) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1847195) = 5971968 * k + 5541586 := by
    unfold C
    simp [show (1990656 * k + 1847195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5541586) = 2985984 * k + 2770793 := by
    unfold C
    simp [show (5971968 * k + 5541586) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2770793) = 8957952 * k + 8312380 := by
    unfold C
    simp [show (2985984 * k + 2770793) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8312380) = 4478976 * k + 4156190 := by
    unfold C
    simp [show (8957952 * k + 8312380) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4156190) = 2239488 * k + 2078095 := by
    unfold C
    simp [show (4478976 * k + 4156190) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2078095) = 6718464 * k + 6234286 := by
    unfold C
    simp [show (2239488 * k + 2078095) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6234286) = 3359232 * k + 3117143 := by
    unfold C
    simp [show (6718464 * k + 6234286) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3117143) = 10077696 * k + 9351430 := by
    unfold C
    simp [show (3359232 * k + 3117143) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9351430) = 5038848 * k + 4675715 := by
    unfold C
    simp [show (10077696 * k + 9351430) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4675715) = 15116544 * k + 14027146 := by
    unfold C
    simp [show (5038848 * k + 4675715) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14027146) = 7558272 * k + 7013573 := by
    unfold C
    simp [show (15116544 * k + 14027146) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7013573) = 22674816 * k + 21040720 := by
    unfold C
    simp [show (7558272 * k + 7013573) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21040720) = 11337408 * k + 10520360 := by
    unfold C
    simp [show (22674816 * k + 21040720) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10520360) = 5668704 * k + 5260180 := by
    unfold C
    simp [show (11337408 * k + 10520360) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5260180) = 2834352 * k + 2630090 := by
    unfold C
    simp [show (5668704 * k + 5260180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2630090) = 1417176 * k + 1315045 := by
    unfold C
    simp [show (2834352 * k + 2630090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1315045) = 4251528 * k + 3945136 := by
    unfold C
    simp [show (1417176 * k + 1315045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3945136) = 2125764 * k + 1972568 := by
    unfold C
    simp [show (4251528 * k + 3945136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1972568) = 1062882 * k + 986284 := by
    unfold C
    simp [show (2125764 * k + 1972568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 986284) = 531441 * k + 493142 := by
    unfold C
    simp [show (1062882 * k + 986284) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 973007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 973007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_973159 : ∀ k : Nat,
    iterate (1048576 * k + 973159) 32 = 531441 * k + 493219 ∧
      531441 * k + 493219 < 1048576 * k + 973159 := by
  intro k
  have h1 : C (1048576 * k + 973159) = 3145728 * k + 2919478 := by
    unfold C
    simp [show (1048576 * k + 973159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2919478) = 1572864 * k + 1459739 := by
    unfold C
    simp [show (3145728 * k + 2919478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1459739) = 4718592 * k + 4379218 := by
    unfold C
    simp [show (1572864 * k + 1459739) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4379218) = 2359296 * k + 2189609 := by
    unfold C
    simp [show (4718592 * k + 4379218) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2189609) = 7077888 * k + 6568828 := by
    unfold C
    simp [show (2359296 * k + 2189609) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6568828) = 3538944 * k + 3284414 := by
    unfold C
    simp [show (7077888 * k + 6568828) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3284414) = 1769472 * k + 1642207 := by
    unfold C
    simp [show (3538944 * k + 3284414) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1642207) = 5308416 * k + 4926622 := by
    unfold C
    simp [show (1769472 * k + 1642207) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4926622) = 2654208 * k + 2463311 := by
    unfold C
    simp [show (5308416 * k + 4926622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2463311) = 7962624 * k + 7389934 := by
    unfold C
    simp [show (2654208 * k + 2463311) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7389934) = 3981312 * k + 3694967 := by
    unfold C
    simp [show (7962624 * k + 7389934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3694967) = 11943936 * k + 11084902 := by
    unfold C
    simp [show (3981312 * k + 3694967) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11084902) = 5971968 * k + 5542451 := by
    unfold C
    simp [show (11943936 * k + 11084902) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5542451) = 17915904 * k + 16627354 := by
    unfold C
    simp [show (5971968 * k + 5542451) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16627354) = 8957952 * k + 8313677 := by
    unfold C
    simp [show (17915904 * k + 16627354) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8313677) = 26873856 * k + 24941032 := by
    unfold C
    simp [show (8957952 * k + 8313677) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24941032) = 13436928 * k + 12470516 := by
    unfold C
    simp [show (26873856 * k + 24941032) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12470516) = 6718464 * k + 6235258 := by
    unfold C
    simp [show (13436928 * k + 12470516) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6235258) = 3359232 * k + 3117629 := by
    unfold C
    simp [show (6718464 * k + 6235258) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3117629) = 10077696 * k + 9352888 := by
    unfold C
    simp [show (3359232 * k + 3117629) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9352888) = 5038848 * k + 4676444 := by
    unfold C
    simp [show (10077696 * k + 9352888) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4676444) = 2519424 * k + 2338222 := by
    unfold C
    simp [show (5038848 * k + 4676444) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2338222) = 1259712 * k + 1169111 := by
    unfold C
    simp [show (2519424 * k + 2338222) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1169111) = 3779136 * k + 3507334 := by
    unfold C
    simp [show (1259712 * k + 1169111) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3507334) = 1889568 * k + 1753667 := by
    unfold C
    simp [show (3779136 * k + 3507334) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1753667) = 5668704 * k + 5261002 := by
    unfold C
    simp [show (1889568 * k + 1753667) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5261002) = 2834352 * k + 2630501 := by
    unfold C
    simp [show (5668704 * k + 5261002) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2630501) = 8503056 * k + 7891504 := by
    unfold C
    simp [show (2834352 * k + 2630501) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7891504) = 4251528 * k + 3945752 := by
    unfold C
    simp [show (8503056 * k + 7891504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3945752) = 2125764 * k + 1972876 := by
    unfold C
    simp [show (4251528 * k + 3945752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1972876) = 1062882 * k + 986438 := by
    unfold C
    simp [show (2125764 * k + 1972876) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 986438) = 531441 * k + 493219 := by
    unfold C
    simp [show (1062882 * k + 986438) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 973159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 973159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_973415 : ∀ k : Nat,
    iterate (1048576 * k + 973415) 32 = 531441 * k + 493349 ∧
      531441 * k + 493349 < 1048576 * k + 973415 := by
  intro k
  have h1 : C (1048576 * k + 973415) = 3145728 * k + 2920246 := by
    unfold C
    simp [show (1048576 * k + 973415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2920246) = 1572864 * k + 1460123 := by
    unfold C
    simp [show (3145728 * k + 2920246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1460123) = 4718592 * k + 4380370 := by
    unfold C
    simp [show (1572864 * k + 1460123) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4380370) = 2359296 * k + 2190185 := by
    unfold C
    simp [show (4718592 * k + 4380370) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2190185) = 7077888 * k + 6570556 := by
    unfold C
    simp [show (2359296 * k + 2190185) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6570556) = 3538944 * k + 3285278 := by
    unfold C
    simp [show (7077888 * k + 6570556) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3285278) = 1769472 * k + 1642639 := by
    unfold C
    simp [show (3538944 * k + 3285278) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1642639) = 5308416 * k + 4927918 := by
    unfold C
    simp [show (1769472 * k + 1642639) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4927918) = 2654208 * k + 2463959 := by
    unfold C
    simp [show (5308416 * k + 4927918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2463959) = 7962624 * k + 7391878 := by
    unfold C
    simp [show (2654208 * k + 2463959) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7391878) = 3981312 * k + 3695939 := by
    unfold C
    simp [show (7962624 * k + 7391878) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3695939) = 11943936 * k + 11087818 := by
    unfold C
    simp [show (3981312 * k + 3695939) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11087818) = 5971968 * k + 5543909 := by
    unfold C
    simp [show (11943936 * k + 11087818) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5543909) = 17915904 * k + 16631728 := by
    unfold C
    simp [show (5971968 * k + 5543909) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16631728) = 8957952 * k + 8315864 := by
    unfold C
    simp [show (17915904 * k + 16631728) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8315864) = 4478976 * k + 4157932 := by
    unfold C
    simp [show (8957952 * k + 8315864) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4157932) = 2239488 * k + 2078966 := by
    unfold C
    simp [show (4478976 * k + 4157932) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2078966) = 1119744 * k + 1039483 := by
    unfold C
    simp [show (2239488 * k + 2078966) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1039483) = 3359232 * k + 3118450 := by
    unfold C
    simp [show (1119744 * k + 1039483) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3118450) = 1679616 * k + 1559225 := by
    unfold C
    simp [show (3359232 * k + 3118450) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1559225) = 5038848 * k + 4677676 := by
    unfold C
    simp [show (1679616 * k + 1559225) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4677676) = 2519424 * k + 2338838 := by
    unfold C
    simp [show (5038848 * k + 4677676) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2338838) = 1259712 * k + 1169419 := by
    unfold C
    simp [show (2519424 * k + 2338838) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1169419) = 3779136 * k + 3508258 := by
    unfold C
    simp [show (1259712 * k + 1169419) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3508258) = 1889568 * k + 1754129 := by
    unfold C
    simp [show (3779136 * k + 3508258) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1754129) = 5668704 * k + 5262388 := by
    unfold C
    simp [show (1889568 * k + 1754129) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5262388) = 2834352 * k + 2631194 := by
    unfold C
    simp [show (5668704 * k + 5262388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2631194) = 1417176 * k + 1315597 := by
    unfold C
    simp [show (2834352 * k + 2631194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1315597) = 4251528 * k + 3946792 := by
    unfold C
    simp [show (1417176 * k + 1315597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3946792) = 2125764 * k + 1973396 := by
    unfold C
    simp [show (4251528 * k + 3946792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1973396) = 1062882 * k + 986698 := by
    unfold C
    simp [show (2125764 * k + 1973396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 986698) = 531441 * k + 493349 := by
    unfold C
    simp [show (1062882 * k + 986698) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 973415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 973415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_974587 : ∀ k : Nat,
    iterate (1048576 * k + 974587) 32 = 531441 * k + 493943 ∧
      531441 * k + 493943 < 1048576 * k + 974587 := by
  intro k
  have h1 : C (1048576 * k + 974587) = 3145728 * k + 2923762 := by
    unfold C
    simp [show (1048576 * k + 974587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2923762) = 1572864 * k + 1461881 := by
    unfold C
    simp [show (3145728 * k + 2923762) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1461881) = 4718592 * k + 4385644 := by
    unfold C
    simp [show (1572864 * k + 1461881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4385644) = 2359296 * k + 2192822 := by
    unfold C
    simp [show (4718592 * k + 4385644) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2192822) = 1179648 * k + 1096411 := by
    unfold C
    simp [show (2359296 * k + 2192822) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1096411) = 3538944 * k + 3289234 := by
    unfold C
    simp [show (1179648 * k + 1096411) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3289234) = 1769472 * k + 1644617 := by
    unfold C
    simp [show (3538944 * k + 3289234) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1644617) = 5308416 * k + 4933852 := by
    unfold C
    simp [show (1769472 * k + 1644617) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4933852) = 2654208 * k + 2466926 := by
    unfold C
    simp [show (5308416 * k + 4933852) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2466926) = 1327104 * k + 1233463 := by
    unfold C
    simp [show (2654208 * k + 2466926) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1233463) = 3981312 * k + 3700390 := by
    unfold C
    simp [show (1327104 * k + 1233463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3700390) = 1990656 * k + 1850195 := by
    unfold C
    simp [show (3981312 * k + 3700390) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1850195) = 5971968 * k + 5550586 := by
    unfold C
    simp [show (1990656 * k + 1850195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5550586) = 2985984 * k + 2775293 := by
    unfold C
    simp [show (5971968 * k + 5550586) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2775293) = 8957952 * k + 8325880 := by
    unfold C
    simp [show (2985984 * k + 2775293) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8325880) = 4478976 * k + 4162940 := by
    unfold C
    simp [show (8957952 * k + 8325880) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4162940) = 2239488 * k + 2081470 := by
    unfold C
    simp [show (4478976 * k + 4162940) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2081470) = 1119744 * k + 1040735 := by
    unfold C
    simp [show (2239488 * k + 2081470) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1040735) = 3359232 * k + 3122206 := by
    unfold C
    simp [show (1119744 * k + 1040735) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3122206) = 1679616 * k + 1561103 := by
    unfold C
    simp [show (3359232 * k + 3122206) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1561103) = 5038848 * k + 4683310 := by
    unfold C
    simp [show (1679616 * k + 1561103) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4683310) = 2519424 * k + 2341655 := by
    unfold C
    simp [show (5038848 * k + 4683310) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2341655) = 7558272 * k + 7024966 := by
    unfold C
    simp [show (2519424 * k + 2341655) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7024966) = 3779136 * k + 3512483 := by
    unfold C
    simp [show (7558272 * k + 7024966) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3512483) = 11337408 * k + 10537450 := by
    unfold C
    simp [show (3779136 * k + 3512483) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10537450) = 5668704 * k + 5268725 := by
    unfold C
    simp [show (11337408 * k + 10537450) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5268725) = 17006112 * k + 15806176 := by
    unfold C
    simp [show (5668704 * k + 5268725) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15806176) = 8503056 * k + 7903088 := by
    unfold C
    simp [show (17006112 * k + 15806176) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7903088) = 4251528 * k + 3951544 := by
    unfold C
    simp [show (8503056 * k + 7903088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3951544) = 2125764 * k + 1975772 := by
    unfold C
    simp [show (4251528 * k + 3951544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1975772) = 1062882 * k + 987886 := by
    unfold C
    simp [show (2125764 * k + 1975772) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 987886) = 531441 * k + 493943 := by
    unfold C
    simp [show (1062882 * k + 987886) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 974587) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 974587)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_974959 : ∀ k : Nat,
    iterate (1048576 * k + 974959) 32 = 531441 * k + 494131 ∧
      531441 * k + 494131 < 1048576 * k + 974959 := by
  intro k
  have h1 : C (1048576 * k + 974959) = 3145728 * k + 2924878 := by
    unfold C
    simp [show (1048576 * k + 974959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2924878) = 1572864 * k + 1462439 := by
    unfold C
    simp [show (3145728 * k + 2924878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1462439) = 4718592 * k + 4387318 := by
    unfold C
    simp [show (1572864 * k + 1462439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4387318) = 2359296 * k + 2193659 := by
    unfold C
    simp [show (4718592 * k + 4387318) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2193659) = 7077888 * k + 6580978 := by
    unfold C
    simp [show (2359296 * k + 2193659) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6580978) = 3538944 * k + 3290489 := by
    unfold C
    simp [show (7077888 * k + 6580978) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3290489) = 10616832 * k + 9871468 := by
    unfold C
    simp [show (3538944 * k + 3290489) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9871468) = 5308416 * k + 4935734 := by
    unfold C
    simp [show (10616832 * k + 9871468) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4935734) = 2654208 * k + 2467867 := by
    unfold C
    simp [show (5308416 * k + 4935734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2467867) = 7962624 * k + 7403602 := by
    unfold C
    simp [show (2654208 * k + 2467867) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7403602) = 3981312 * k + 3701801 := by
    unfold C
    simp [show (7962624 * k + 7403602) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3701801) = 11943936 * k + 11105404 := by
    unfold C
    simp [show (3981312 * k + 3701801) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11105404) = 5971968 * k + 5552702 := by
    unfold C
    simp [show (11943936 * k + 11105404) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5552702) = 2985984 * k + 2776351 := by
    unfold C
    simp [show (5971968 * k + 5552702) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2776351) = 8957952 * k + 8329054 := by
    unfold C
    simp [show (2985984 * k + 2776351) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8329054) = 4478976 * k + 4164527 := by
    unfold C
    simp [show (8957952 * k + 8329054) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4164527) = 13436928 * k + 12493582 := by
    unfold C
    simp [show (4478976 * k + 4164527) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12493582) = 6718464 * k + 6246791 := by
    unfold C
    simp [show (13436928 * k + 12493582) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6246791) = 20155392 * k + 18740374 := by
    unfold C
    simp [show (6718464 * k + 6246791) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18740374) = 10077696 * k + 9370187 := by
    unfold C
    simp [show (20155392 * k + 18740374) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9370187) = 30233088 * k + 28110562 := by
    unfold C
    simp [show (10077696 * k + 9370187) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28110562) = 15116544 * k + 14055281 := by
    unfold C
    simp [show (30233088 * k + 28110562) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14055281) = 45349632 * k + 42165844 := by
    unfold C
    simp [show (15116544 * k + 14055281) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 42165844) = 22674816 * k + 21082922 := by
    unfold C
    simp [show (45349632 * k + 42165844) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21082922) = 11337408 * k + 10541461 := by
    unfold C
    simp [show (22674816 * k + 21082922) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10541461) = 34012224 * k + 31624384 := by
    unfold C
    simp [show (11337408 * k + 10541461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 31624384) = 17006112 * k + 15812192 := by
    unfold C
    simp [show (34012224 * k + 31624384) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15812192) = 8503056 * k + 7906096 := by
    unfold C
    simp [show (17006112 * k + 15812192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7906096) = 4251528 * k + 3953048 := by
    unfold C
    simp [show (8503056 * k + 7906096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3953048) = 2125764 * k + 1976524 := by
    unfold C
    simp [show (4251528 * k + 3953048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1976524) = 1062882 * k + 988262 := by
    unfold C
    simp [show (2125764 * k + 1976524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 988262) = 531441 * k + 494131 := by
    unfold C
    simp [show (1062882 * k + 988262) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 974959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 974959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard123
