import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard128

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_1004059 : ∀ k : Nat,
    iterate (1048576 * k + 1004059) 32 = 531441 * k + 508880 ∧
      531441 * k + 508880 < 1048576 * k + 1004059 := by
  intro k
  have h1 : C (1048576 * k + 1004059) = 3145728 * k + 3012178 := by
    unfold C
    simp [show (1048576 * k + 1004059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3012178) = 1572864 * k + 1506089 := by
    unfold C
    simp [show (3145728 * k + 3012178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1506089) = 4718592 * k + 4518268 := by
    unfold C
    simp [show (1572864 * k + 1506089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4518268) = 2359296 * k + 2259134 := by
    unfold C
    simp [show (4718592 * k + 4518268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2259134) = 1179648 * k + 1129567 := by
    unfold C
    simp [show (2359296 * k + 2259134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1129567) = 3538944 * k + 3388702 := by
    unfold C
    simp [show (1179648 * k + 1129567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3388702) = 1769472 * k + 1694351 := by
    unfold C
    simp [show (3538944 * k + 3388702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1694351) = 5308416 * k + 5083054 := by
    unfold C
    simp [show (1769472 * k + 1694351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5083054) = 2654208 * k + 2541527 := by
    unfold C
    simp [show (5308416 * k + 5083054) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2541527) = 7962624 * k + 7624582 := by
    unfold C
    simp [show (2654208 * k + 2541527) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7624582) = 3981312 * k + 3812291 := by
    unfold C
    simp [show (7962624 * k + 7624582) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3812291) = 11943936 * k + 11436874 := by
    unfold C
    simp [show (3981312 * k + 3812291) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11436874) = 5971968 * k + 5718437 := by
    unfold C
    simp [show (11943936 * k + 11436874) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5718437) = 17915904 * k + 17155312 := by
    unfold C
    simp [show (5971968 * k + 5718437) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17155312) = 8957952 * k + 8577656 := by
    unfold C
    simp [show (17915904 * k + 17155312) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8577656) = 4478976 * k + 4288828 := by
    unfold C
    simp [show (8957952 * k + 8577656) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4288828) = 2239488 * k + 2144414 := by
    unfold C
    simp [show (4478976 * k + 4288828) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2144414) = 1119744 * k + 1072207 := by
    unfold C
    simp [show (2239488 * k + 2144414) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1072207) = 3359232 * k + 3216622 := by
    unfold C
    simp [show (1119744 * k + 1072207) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3216622) = 1679616 * k + 1608311 := by
    unfold C
    simp [show (3359232 * k + 3216622) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1608311) = 5038848 * k + 4824934 := by
    unfold C
    simp [show (1679616 * k + 1608311) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4824934) = 2519424 * k + 2412467 := by
    unfold C
    simp [show (5038848 * k + 4824934) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2412467) = 7558272 * k + 7237402 := by
    unfold C
    simp [show (2519424 * k + 2412467) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7237402) = 3779136 * k + 3618701 := by
    unfold C
    simp [show (7558272 * k + 7237402) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3618701) = 11337408 * k + 10856104 := by
    unfold C
    simp [show (3779136 * k + 3618701) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10856104) = 5668704 * k + 5428052 := by
    unfold C
    simp [show (11337408 * k + 10856104) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5428052) = 2834352 * k + 2714026 := by
    unfold C
    simp [show (5668704 * k + 5428052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2714026) = 1417176 * k + 1357013 := by
    unfold C
    simp [show (2834352 * k + 2714026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1357013) = 4251528 * k + 4071040 := by
    unfold C
    simp [show (1417176 * k + 1357013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4071040) = 2125764 * k + 2035520 := by
    unfold C
    simp [show (4251528 * k + 4071040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2035520) = 1062882 * k + 1017760 := by
    unfold C
    simp [show (2125764 * k + 2035520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1017760) = 531441 * k + 508880 := by
    unfold C
    simp [show (1062882 * k + 1017760) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1004059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1004059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1004415 : ∀ k : Nat,
    iterate (1048576 * k + 1004415) 32 = 531441 * k + 509060 ∧
      531441 * k + 509060 < 1048576 * k + 1004415 := by
  intro k
  have h1 : C (1048576 * k + 1004415) = 3145728 * k + 3013246 := by
    unfold C
    simp [show (1048576 * k + 1004415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3013246) = 1572864 * k + 1506623 := by
    unfold C
    simp [show (3145728 * k + 3013246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1506623) = 4718592 * k + 4519870 := by
    unfold C
    simp [show (1572864 * k + 1506623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4519870) = 2359296 * k + 2259935 := by
    unfold C
    simp [show (4718592 * k + 4519870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2259935) = 7077888 * k + 6779806 := by
    unfold C
    simp [show (2359296 * k + 2259935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6779806) = 3538944 * k + 3389903 := by
    unfold C
    simp [show (7077888 * k + 6779806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3389903) = 10616832 * k + 10169710 := by
    unfold C
    simp [show (3538944 * k + 3389903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10169710) = 5308416 * k + 5084855 := by
    unfold C
    simp [show (10616832 * k + 10169710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5084855) = 15925248 * k + 15254566 := by
    unfold C
    simp [show (5308416 * k + 5084855) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15254566) = 7962624 * k + 7627283 := by
    unfold C
    simp [show (15925248 * k + 15254566) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7627283) = 23887872 * k + 22881850 := by
    unfold C
    simp [show (7962624 * k + 7627283) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22881850) = 11943936 * k + 11440925 := by
    unfold C
    simp [show (23887872 * k + 22881850) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11440925) = 35831808 * k + 34322776 := by
    unfold C
    simp [show (11943936 * k + 11440925) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34322776) = 17915904 * k + 17161388 := by
    unfold C
    simp [show (35831808 * k + 34322776) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17161388) = 8957952 * k + 8580694 := by
    unfold C
    simp [show (17915904 * k + 17161388) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8580694) = 4478976 * k + 4290347 := by
    unfold C
    simp [show (8957952 * k + 8580694) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4290347) = 13436928 * k + 12871042 := by
    unfold C
    simp [show (4478976 * k + 4290347) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12871042) = 6718464 * k + 6435521 := by
    unfold C
    simp [show (13436928 * k + 12871042) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6435521) = 20155392 * k + 19306564 := by
    unfold C
    simp [show (6718464 * k + 6435521) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19306564) = 10077696 * k + 9653282 := by
    unfold C
    simp [show (20155392 * k + 19306564) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9653282) = 5038848 * k + 4826641 := by
    unfold C
    simp [show (10077696 * k + 9653282) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4826641) = 15116544 * k + 14479924 := by
    unfold C
    simp [show (5038848 * k + 4826641) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14479924) = 7558272 * k + 7239962 := by
    unfold C
    simp [show (15116544 * k + 14479924) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7239962) = 3779136 * k + 3619981 := by
    unfold C
    simp [show (7558272 * k + 7239962) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3619981) = 11337408 * k + 10859944 := by
    unfold C
    simp [show (3779136 * k + 3619981) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10859944) = 5668704 * k + 5429972 := by
    unfold C
    simp [show (11337408 * k + 10859944) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5429972) = 2834352 * k + 2714986 := by
    unfold C
    simp [show (5668704 * k + 5429972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2714986) = 1417176 * k + 1357493 := by
    unfold C
    simp [show (2834352 * k + 2714986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1357493) = 4251528 * k + 4072480 := by
    unfold C
    simp [show (1417176 * k + 1357493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4072480) = 2125764 * k + 2036240 := by
    unfold C
    simp [show (4251528 * k + 4072480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2036240) = 1062882 * k + 1018120 := by
    unfold C
    simp [show (2125764 * k + 2036240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1018120) = 531441 * k + 509060 := by
    unfold C
    simp [show (1062882 * k + 1018120) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1004415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1004415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1005887 : ∀ k : Nat,
    iterate (1048576 * k + 1005887) 32 = 531441 * k + 509806 ∧
      531441 * k + 509806 < 1048576 * k + 1005887 := by
  intro k
  have h1 : C (1048576 * k + 1005887) = 3145728 * k + 3017662 := by
    unfold C
    simp [show (1048576 * k + 1005887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3017662) = 1572864 * k + 1508831 := by
    unfold C
    simp [show (3145728 * k + 3017662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1508831) = 4718592 * k + 4526494 := by
    unfold C
    simp [show (1572864 * k + 1508831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4526494) = 2359296 * k + 2263247 := by
    unfold C
    simp [show (4718592 * k + 4526494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2263247) = 7077888 * k + 6789742 := by
    unfold C
    simp [show (2359296 * k + 2263247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6789742) = 3538944 * k + 3394871 := by
    unfold C
    simp [show (7077888 * k + 6789742) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3394871) = 10616832 * k + 10184614 := by
    unfold C
    simp [show (3538944 * k + 3394871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10184614) = 5308416 * k + 5092307 := by
    unfold C
    simp [show (10616832 * k + 10184614) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5092307) = 15925248 * k + 15276922 := by
    unfold C
    simp [show (5308416 * k + 5092307) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15276922) = 7962624 * k + 7638461 := by
    unfold C
    simp [show (15925248 * k + 15276922) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7638461) = 23887872 * k + 22915384 := by
    unfold C
    simp [show (7962624 * k + 7638461) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22915384) = 11943936 * k + 11457692 := by
    unfold C
    simp [show (23887872 * k + 22915384) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11457692) = 5971968 * k + 5728846 := by
    unfold C
    simp [show (11943936 * k + 11457692) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5728846) = 2985984 * k + 2864423 := by
    unfold C
    simp [show (5971968 * k + 5728846) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2864423) = 8957952 * k + 8593270 := by
    unfold C
    simp [show (2985984 * k + 2864423) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8593270) = 4478976 * k + 4296635 := by
    unfold C
    simp [show (8957952 * k + 8593270) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4296635) = 13436928 * k + 12889906 := by
    unfold C
    simp [show (4478976 * k + 4296635) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12889906) = 6718464 * k + 6444953 := by
    unfold C
    simp [show (13436928 * k + 12889906) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6444953) = 20155392 * k + 19334860 := by
    unfold C
    simp [show (6718464 * k + 6444953) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19334860) = 10077696 * k + 9667430 := by
    unfold C
    simp [show (20155392 * k + 19334860) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9667430) = 5038848 * k + 4833715 := by
    unfold C
    simp [show (10077696 * k + 9667430) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4833715) = 15116544 * k + 14501146 := by
    unfold C
    simp [show (5038848 * k + 4833715) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14501146) = 7558272 * k + 7250573 := by
    unfold C
    simp [show (15116544 * k + 14501146) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7250573) = 22674816 * k + 21751720 := by
    unfold C
    simp [show (7558272 * k + 7250573) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21751720) = 11337408 * k + 10875860 := by
    unfold C
    simp [show (22674816 * k + 21751720) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10875860) = 5668704 * k + 5437930 := by
    unfold C
    simp [show (11337408 * k + 10875860) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5437930) = 2834352 * k + 2718965 := by
    unfold C
    simp [show (5668704 * k + 5437930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2718965) = 8503056 * k + 8156896 := by
    unfold C
    simp [show (2834352 * k + 2718965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8156896) = 4251528 * k + 4078448 := by
    unfold C
    simp [show (8503056 * k + 8156896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4078448) = 2125764 * k + 2039224 := by
    unfold C
    simp [show (4251528 * k + 4078448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2039224) = 1062882 * k + 1019612 := by
    unfold C
    simp [show (2125764 * k + 2039224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1019612) = 531441 * k + 509806 := by
    unfold C
    simp [show (1062882 * k + 1019612) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1005887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1005887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1006463 : ∀ k : Nat,
    iterate (1048576 * k + 1006463) 32 = 531441 * k + 510098 ∧
      531441 * k + 510098 < 1048576 * k + 1006463 := by
  intro k
  have h1 : C (1048576 * k + 1006463) = 3145728 * k + 3019390 := by
    unfold C
    simp [show (1048576 * k + 1006463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3019390) = 1572864 * k + 1509695 := by
    unfold C
    simp [show (3145728 * k + 3019390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1509695) = 4718592 * k + 4529086 := by
    unfold C
    simp [show (1572864 * k + 1509695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4529086) = 2359296 * k + 2264543 := by
    unfold C
    simp [show (4718592 * k + 4529086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2264543) = 7077888 * k + 6793630 := by
    unfold C
    simp [show (2359296 * k + 2264543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6793630) = 3538944 * k + 3396815 := by
    unfold C
    simp [show (7077888 * k + 6793630) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3396815) = 10616832 * k + 10190446 := by
    unfold C
    simp [show (3538944 * k + 3396815) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10190446) = 5308416 * k + 5095223 := by
    unfold C
    simp [show (10616832 * k + 10190446) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5095223) = 15925248 * k + 15285670 := by
    unfold C
    simp [show (5308416 * k + 5095223) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15285670) = 7962624 * k + 7642835 := by
    unfold C
    simp [show (15925248 * k + 15285670) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7642835) = 23887872 * k + 22928506 := by
    unfold C
    simp [show (7962624 * k + 7642835) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22928506) = 11943936 * k + 11464253 := by
    unfold C
    simp [show (23887872 * k + 22928506) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11464253) = 35831808 * k + 34392760 := by
    unfold C
    simp [show (11943936 * k + 11464253) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34392760) = 17915904 * k + 17196380 := by
    unfold C
    simp [show (35831808 * k + 34392760) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17196380) = 8957952 * k + 8598190 := by
    unfold C
    simp [show (17915904 * k + 17196380) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8598190) = 4478976 * k + 4299095 := by
    unfold C
    simp [show (8957952 * k + 8598190) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4299095) = 13436928 * k + 12897286 := by
    unfold C
    simp [show (4478976 * k + 4299095) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12897286) = 6718464 * k + 6448643 := by
    unfold C
    simp [show (13436928 * k + 12897286) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6448643) = 20155392 * k + 19345930 := by
    unfold C
    simp [show (6718464 * k + 6448643) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19345930) = 10077696 * k + 9672965 := by
    unfold C
    simp [show (20155392 * k + 19345930) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9672965) = 30233088 * k + 29018896 := by
    unfold C
    simp [show (10077696 * k + 9672965) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29018896) = 15116544 * k + 14509448 := by
    unfold C
    simp [show (30233088 * k + 29018896) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14509448) = 7558272 * k + 7254724 := by
    unfold C
    simp [show (15116544 * k + 14509448) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7254724) = 3779136 * k + 3627362 := by
    unfold C
    simp [show (7558272 * k + 7254724) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3627362) = 1889568 * k + 1813681 := by
    unfold C
    simp [show (3779136 * k + 3627362) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1813681) = 5668704 * k + 5441044 := by
    unfold C
    simp [show (1889568 * k + 1813681) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5441044) = 2834352 * k + 2720522 := by
    unfold C
    simp [show (5668704 * k + 5441044) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2720522) = 1417176 * k + 1360261 := by
    unfold C
    simp [show (2834352 * k + 2720522) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1360261) = 4251528 * k + 4080784 := by
    unfold C
    simp [show (1417176 * k + 1360261) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4080784) = 2125764 * k + 2040392 := by
    unfold C
    simp [show (4251528 * k + 4080784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2040392) = 1062882 * k + 1020196 := by
    unfold C
    simp [show (2125764 * k + 2040392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1020196) = 531441 * k + 510098 := by
    unfold C
    simp [show (1062882 * k + 1020196) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1006463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1006463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1007231 : ∀ k : Nat,
    iterate (1048576 * k + 1007231) 32 = 531441 * k + 510487 ∧
      531441 * k + 510487 < 1048576 * k + 1007231 := by
  intro k
  have h1 : C (1048576 * k + 1007231) = 3145728 * k + 3021694 := by
    unfold C
    simp [show (1048576 * k + 1007231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3021694) = 1572864 * k + 1510847 := by
    unfold C
    simp [show (3145728 * k + 3021694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1510847) = 4718592 * k + 4532542 := by
    unfold C
    simp [show (1572864 * k + 1510847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4532542) = 2359296 * k + 2266271 := by
    unfold C
    simp [show (4718592 * k + 4532542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2266271) = 7077888 * k + 6798814 := by
    unfold C
    simp [show (2359296 * k + 2266271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6798814) = 3538944 * k + 3399407 := by
    unfold C
    simp [show (7077888 * k + 6798814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3399407) = 10616832 * k + 10198222 := by
    unfold C
    simp [show (3538944 * k + 3399407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10198222) = 5308416 * k + 5099111 := by
    unfold C
    simp [show (10616832 * k + 10198222) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5099111) = 15925248 * k + 15297334 := by
    unfold C
    simp [show (5308416 * k + 5099111) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15297334) = 7962624 * k + 7648667 := by
    unfold C
    simp [show (15925248 * k + 15297334) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7648667) = 23887872 * k + 22946002 := by
    unfold C
    simp [show (7962624 * k + 7648667) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22946002) = 11943936 * k + 11473001 := by
    unfold C
    simp [show (23887872 * k + 22946002) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11473001) = 35831808 * k + 34419004 := by
    unfold C
    simp [show (11943936 * k + 11473001) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34419004) = 17915904 * k + 17209502 := by
    unfold C
    simp [show (35831808 * k + 34419004) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17209502) = 8957952 * k + 8604751 := by
    unfold C
    simp [show (17915904 * k + 17209502) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8604751) = 26873856 * k + 25814254 := by
    unfold C
    simp [show (8957952 * k + 8604751) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25814254) = 13436928 * k + 12907127 := by
    unfold C
    simp [show (26873856 * k + 25814254) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12907127) = 40310784 * k + 38721382 := by
    unfold C
    simp [show (13436928 * k + 12907127) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38721382) = 20155392 * k + 19360691 := by
    unfold C
    simp [show (40310784 * k + 38721382) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19360691) = 60466176 * k + 58082074 := by
    unfold C
    simp [show (20155392 * k + 19360691) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 58082074) = 30233088 * k + 29041037 := by
    unfold C
    simp [show (60466176 * k + 58082074) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29041037) = 90699264 * k + 87123112 := by
    unfold C
    simp [show (30233088 * k + 29041037) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 87123112) = 45349632 * k + 43561556 := by
    unfold C
    simp [show (90699264 * k + 87123112) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 43561556) = 22674816 * k + 21780778 := by
    unfold C
    simp [show (45349632 * k + 43561556) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21780778) = 11337408 * k + 10890389 := by
    unfold C
    simp [show (22674816 * k + 21780778) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10890389) = 34012224 * k + 32671168 := by
    unfold C
    simp [show (11337408 * k + 10890389) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 32671168) = 17006112 * k + 16335584 := by
    unfold C
    simp [show (34012224 * k + 32671168) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16335584) = 8503056 * k + 8167792 := by
    unfold C
    simp [show (17006112 * k + 16335584) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8167792) = 4251528 * k + 4083896 := by
    unfold C
    simp [show (8503056 * k + 8167792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4083896) = 2125764 * k + 2041948 := by
    unfold C
    simp [show (4251528 * k + 4083896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2041948) = 1062882 * k + 1020974 := by
    unfold C
    simp [show (2125764 * k + 2041948) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1020974) = 531441 * k + 510487 := by
    unfold C
    simp [show (1062882 * k + 1020974) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1007231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1007231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1007783 : ∀ k : Nat,
    iterate (1048576 * k + 1007783) 32 = 531441 * k + 510767 ∧
      531441 * k + 510767 < 1048576 * k + 1007783 := by
  intro k
  have h1 : C (1048576 * k + 1007783) = 3145728 * k + 3023350 := by
    unfold C
    simp [show (1048576 * k + 1007783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3023350) = 1572864 * k + 1511675 := by
    unfold C
    simp [show (3145728 * k + 3023350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1511675) = 4718592 * k + 4535026 := by
    unfold C
    simp [show (1572864 * k + 1511675) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4535026) = 2359296 * k + 2267513 := by
    unfold C
    simp [show (4718592 * k + 4535026) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2267513) = 7077888 * k + 6802540 := by
    unfold C
    simp [show (2359296 * k + 2267513) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6802540) = 3538944 * k + 3401270 := by
    unfold C
    simp [show (7077888 * k + 6802540) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3401270) = 1769472 * k + 1700635 := by
    unfold C
    simp [show (3538944 * k + 3401270) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1700635) = 5308416 * k + 5101906 := by
    unfold C
    simp [show (1769472 * k + 1700635) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5101906) = 2654208 * k + 2550953 := by
    unfold C
    simp [show (5308416 * k + 5101906) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2550953) = 7962624 * k + 7652860 := by
    unfold C
    simp [show (2654208 * k + 2550953) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7652860) = 3981312 * k + 3826430 := by
    unfold C
    simp [show (7962624 * k + 7652860) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3826430) = 1990656 * k + 1913215 := by
    unfold C
    simp [show (3981312 * k + 3826430) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1913215) = 5971968 * k + 5739646 := by
    unfold C
    simp [show (1990656 * k + 1913215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5739646) = 2985984 * k + 2869823 := by
    unfold C
    simp [show (5971968 * k + 5739646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2869823) = 8957952 * k + 8609470 := by
    unfold C
    simp [show (2985984 * k + 2869823) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8609470) = 4478976 * k + 4304735 := by
    unfold C
    simp [show (8957952 * k + 8609470) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4304735) = 13436928 * k + 12914206 := by
    unfold C
    simp [show (4478976 * k + 4304735) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12914206) = 6718464 * k + 6457103 := by
    unfold C
    simp [show (13436928 * k + 12914206) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6457103) = 20155392 * k + 19371310 := by
    unfold C
    simp [show (6718464 * k + 6457103) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19371310) = 10077696 * k + 9685655 := by
    unfold C
    simp [show (20155392 * k + 19371310) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9685655) = 30233088 * k + 29056966 := by
    unfold C
    simp [show (10077696 * k + 9685655) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29056966) = 15116544 * k + 14528483 := by
    unfold C
    simp [show (30233088 * k + 29056966) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14528483) = 45349632 * k + 43585450 := by
    unfold C
    simp [show (15116544 * k + 14528483) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 43585450) = 22674816 * k + 21792725 := by
    unfold C
    simp [show (45349632 * k + 43585450) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21792725) = 68024448 * k + 65378176 := by
    unfold C
    simp [show (22674816 * k + 21792725) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 65378176) = 34012224 * k + 32689088 := by
    unfold C
    simp [show (68024448 * k + 65378176) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 32689088) = 17006112 * k + 16344544 := by
    unfold C
    simp [show (34012224 * k + 32689088) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16344544) = 8503056 * k + 8172272 := by
    unfold C
    simp [show (17006112 * k + 16344544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8172272) = 4251528 * k + 4086136 := by
    unfold C
    simp [show (8503056 * k + 8172272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4086136) = 2125764 * k + 2043068 := by
    unfold C
    simp [show (4251528 * k + 4086136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2043068) = 1062882 * k + 1021534 := by
    unfold C
    simp [show (2125764 * k + 2043068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1021534) = 531441 * k + 510767 := by
    unfold C
    simp [show (1062882 * k + 1021534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1007783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1007783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1008255 : ∀ k : Nat,
    iterate (1048576 * k + 1008255) 32 = 531441 * k + 511006 ∧
      531441 * k + 511006 < 1048576 * k + 1008255 := by
  intro k
  have h1 : C (1048576 * k + 1008255) = 3145728 * k + 3024766 := by
    unfold C
    simp [show (1048576 * k + 1008255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3024766) = 1572864 * k + 1512383 := by
    unfold C
    simp [show (3145728 * k + 3024766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1512383) = 4718592 * k + 4537150 := by
    unfold C
    simp [show (1572864 * k + 1512383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4537150) = 2359296 * k + 2268575 := by
    unfold C
    simp [show (4718592 * k + 4537150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2268575) = 7077888 * k + 6805726 := by
    unfold C
    simp [show (2359296 * k + 2268575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6805726) = 3538944 * k + 3402863 := by
    unfold C
    simp [show (7077888 * k + 6805726) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3402863) = 10616832 * k + 10208590 := by
    unfold C
    simp [show (3538944 * k + 3402863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10208590) = 5308416 * k + 5104295 := by
    unfold C
    simp [show (10616832 * k + 10208590) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5104295) = 15925248 * k + 15312886 := by
    unfold C
    simp [show (5308416 * k + 5104295) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15312886) = 7962624 * k + 7656443 := by
    unfold C
    simp [show (15925248 * k + 15312886) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7656443) = 23887872 * k + 22969330 := by
    unfold C
    simp [show (7962624 * k + 7656443) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22969330) = 11943936 * k + 11484665 := by
    unfold C
    simp [show (23887872 * k + 22969330) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11484665) = 35831808 * k + 34453996 := by
    unfold C
    simp [show (11943936 * k + 11484665) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34453996) = 17915904 * k + 17226998 := by
    unfold C
    simp [show (35831808 * k + 34453996) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17226998) = 8957952 * k + 8613499 := by
    unfold C
    simp [show (17915904 * k + 17226998) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8613499) = 26873856 * k + 25840498 := by
    unfold C
    simp [show (8957952 * k + 8613499) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25840498) = 13436928 * k + 12920249 := by
    unfold C
    simp [show (26873856 * k + 25840498) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12920249) = 40310784 * k + 38760748 := by
    unfold C
    simp [show (13436928 * k + 12920249) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38760748) = 20155392 * k + 19380374 := by
    unfold C
    simp [show (40310784 * k + 38760748) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19380374) = 10077696 * k + 9690187 := by
    unfold C
    simp [show (20155392 * k + 19380374) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9690187) = 30233088 * k + 29070562 := by
    unfold C
    simp [show (10077696 * k + 9690187) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29070562) = 15116544 * k + 14535281 := by
    unfold C
    simp [show (30233088 * k + 29070562) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14535281) = 45349632 * k + 43605844 := by
    unfold C
    simp [show (15116544 * k + 14535281) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 43605844) = 22674816 * k + 21802922 := by
    unfold C
    simp [show (45349632 * k + 43605844) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21802922) = 11337408 * k + 10901461 := by
    unfold C
    simp [show (22674816 * k + 21802922) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10901461) = 34012224 * k + 32704384 := by
    unfold C
    simp [show (11337408 * k + 10901461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 32704384) = 17006112 * k + 16352192 := by
    unfold C
    simp [show (34012224 * k + 32704384) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16352192) = 8503056 * k + 8176096 := by
    unfold C
    simp [show (17006112 * k + 16352192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8176096) = 4251528 * k + 4088048 := by
    unfold C
    simp [show (8503056 * k + 8176096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4088048) = 2125764 * k + 2044024 := by
    unfold C
    simp [show (4251528 * k + 4088048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2044024) = 1062882 * k + 1022012 := by
    unfold C
    simp [show (2125764 * k + 2044024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1022012) = 531441 * k + 511006 := by
    unfold C
    simp [show (1062882 * k + 1022012) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1008255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1008255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1008799 : ∀ k : Nat,
    iterate (1048576 * k + 1008799) 32 = 531441 * k + 511282 ∧
      531441 * k + 511282 < 1048576 * k + 1008799 := by
  intro k
  have h1 : C (1048576 * k + 1008799) = 3145728 * k + 3026398 := by
    unfold C
    simp [show (1048576 * k + 1008799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3026398) = 1572864 * k + 1513199 := by
    unfold C
    simp [show (3145728 * k + 3026398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1513199) = 4718592 * k + 4539598 := by
    unfold C
    simp [show (1572864 * k + 1513199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4539598) = 2359296 * k + 2269799 := by
    unfold C
    simp [show (4718592 * k + 4539598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2269799) = 7077888 * k + 6809398 := by
    unfold C
    simp [show (2359296 * k + 2269799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6809398) = 3538944 * k + 3404699 := by
    unfold C
    simp [show (7077888 * k + 6809398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3404699) = 10616832 * k + 10214098 := by
    unfold C
    simp [show (3538944 * k + 3404699) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10214098) = 5308416 * k + 5107049 := by
    unfold C
    simp [show (10616832 * k + 10214098) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5107049) = 15925248 * k + 15321148 := by
    unfold C
    simp [show (5308416 * k + 5107049) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15321148) = 7962624 * k + 7660574 := by
    unfold C
    simp [show (15925248 * k + 15321148) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7660574) = 3981312 * k + 3830287 := by
    unfold C
    simp [show (7962624 * k + 7660574) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3830287) = 11943936 * k + 11490862 := by
    unfold C
    simp [show (3981312 * k + 3830287) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11490862) = 5971968 * k + 5745431 := by
    unfold C
    simp [show (11943936 * k + 11490862) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5745431) = 17915904 * k + 17236294 := by
    unfold C
    simp [show (5971968 * k + 5745431) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17236294) = 8957952 * k + 8618147 := by
    unfold C
    simp [show (17915904 * k + 17236294) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8618147) = 26873856 * k + 25854442 := by
    unfold C
    simp [show (8957952 * k + 8618147) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25854442) = 13436928 * k + 12927221 := by
    unfold C
    simp [show (26873856 * k + 25854442) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12927221) = 40310784 * k + 38781664 := by
    unfold C
    simp [show (13436928 * k + 12927221) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38781664) = 20155392 * k + 19390832 := by
    unfold C
    simp [show (40310784 * k + 38781664) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19390832) = 10077696 * k + 9695416 := by
    unfold C
    simp [show (20155392 * k + 19390832) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9695416) = 5038848 * k + 4847708 := by
    unfold C
    simp [show (10077696 * k + 9695416) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4847708) = 2519424 * k + 2423854 := by
    unfold C
    simp [show (5038848 * k + 4847708) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2423854) = 1259712 * k + 1211927 := by
    unfold C
    simp [show (2519424 * k + 2423854) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1211927) = 3779136 * k + 3635782 := by
    unfold C
    simp [show (1259712 * k + 1211927) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3635782) = 1889568 * k + 1817891 := by
    unfold C
    simp [show (3779136 * k + 3635782) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1817891) = 5668704 * k + 5453674 := by
    unfold C
    simp [show (1889568 * k + 1817891) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5453674) = 2834352 * k + 2726837 := by
    unfold C
    simp [show (5668704 * k + 5453674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2726837) = 8503056 * k + 8180512 := by
    unfold C
    simp [show (2834352 * k + 2726837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8180512) = 4251528 * k + 4090256 := by
    unfold C
    simp [show (8503056 * k + 8180512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4090256) = 2125764 * k + 2045128 := by
    unfold C
    simp [show (4251528 * k + 4090256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2045128) = 1062882 * k + 1022564 := by
    unfold C
    simp [show (2125764 * k + 2045128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1022564) = 531441 * k + 511282 := by
    unfold C
    simp [show (1062882 * k + 1022564) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1008799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1008799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1009535 : ∀ k : Nat,
    iterate (1048576 * k + 1009535) 32 = 531441 * k + 511655 ∧
      531441 * k + 511655 < 1048576 * k + 1009535 := by
  intro k
  have h1 : C (1048576 * k + 1009535) = 3145728 * k + 3028606 := by
    unfold C
    simp [show (1048576 * k + 1009535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3028606) = 1572864 * k + 1514303 := by
    unfold C
    simp [show (3145728 * k + 3028606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1514303) = 4718592 * k + 4542910 := by
    unfold C
    simp [show (1572864 * k + 1514303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4542910) = 2359296 * k + 2271455 := by
    unfold C
    simp [show (4718592 * k + 4542910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2271455) = 7077888 * k + 6814366 := by
    unfold C
    simp [show (2359296 * k + 2271455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6814366) = 3538944 * k + 3407183 := by
    unfold C
    simp [show (7077888 * k + 6814366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3407183) = 10616832 * k + 10221550 := by
    unfold C
    simp [show (3538944 * k + 3407183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10221550) = 5308416 * k + 5110775 := by
    unfold C
    simp [show (10616832 * k + 10221550) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5110775) = 15925248 * k + 15332326 := by
    unfold C
    simp [show (5308416 * k + 5110775) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15332326) = 7962624 * k + 7666163 := by
    unfold C
    simp [show (15925248 * k + 15332326) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7666163) = 23887872 * k + 22998490 := by
    unfold C
    simp [show (7962624 * k + 7666163) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22998490) = 11943936 * k + 11499245 := by
    unfold C
    simp [show (23887872 * k + 22998490) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11499245) = 35831808 * k + 34497736 := by
    unfold C
    simp [show (11943936 * k + 11499245) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34497736) = 17915904 * k + 17248868 := by
    unfold C
    simp [show (35831808 * k + 34497736) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17248868) = 8957952 * k + 8624434 := by
    unfold C
    simp [show (17915904 * k + 17248868) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8624434) = 4478976 * k + 4312217 := by
    unfold C
    simp [show (8957952 * k + 8624434) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4312217) = 13436928 * k + 12936652 := by
    unfold C
    simp [show (4478976 * k + 4312217) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12936652) = 6718464 * k + 6468326 := by
    unfold C
    simp [show (13436928 * k + 12936652) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6468326) = 3359232 * k + 3234163 := by
    unfold C
    simp [show (6718464 * k + 6468326) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3234163) = 10077696 * k + 9702490 := by
    unfold C
    simp [show (3359232 * k + 3234163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9702490) = 5038848 * k + 4851245 := by
    unfold C
    simp [show (10077696 * k + 9702490) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4851245) = 15116544 * k + 14553736 := by
    unfold C
    simp [show (5038848 * k + 4851245) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14553736) = 7558272 * k + 7276868 := by
    unfold C
    simp [show (15116544 * k + 14553736) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7276868) = 3779136 * k + 3638434 := by
    unfold C
    simp [show (7558272 * k + 7276868) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3638434) = 1889568 * k + 1819217 := by
    unfold C
    simp [show (3779136 * k + 3638434) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1819217) = 5668704 * k + 5457652 := by
    unfold C
    simp [show (1889568 * k + 1819217) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5457652) = 2834352 * k + 2728826 := by
    unfold C
    simp [show (5668704 * k + 5457652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2728826) = 1417176 * k + 1364413 := by
    unfold C
    simp [show (2834352 * k + 2728826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1364413) = 4251528 * k + 4093240 := by
    unfold C
    simp [show (1417176 * k + 1364413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4093240) = 2125764 * k + 2046620 := by
    unfold C
    simp [show (4251528 * k + 4093240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2046620) = 1062882 * k + 1023310 := by
    unfold C
    simp [show (2125764 * k + 2046620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1023310) = 531441 * k + 511655 := by
    unfold C
    simp [show (1062882 * k + 1023310) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1009535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1009535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1009983 : ∀ k : Nat,
    iterate (1048576 * k + 1009983) 32 = 531441 * k + 511882 ∧
      531441 * k + 511882 < 1048576 * k + 1009983 := by
  intro k
  have h1 : C (1048576 * k + 1009983) = 3145728 * k + 3029950 := by
    unfold C
    simp [show (1048576 * k + 1009983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3029950) = 1572864 * k + 1514975 := by
    unfold C
    simp [show (3145728 * k + 3029950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1514975) = 4718592 * k + 4544926 := by
    unfold C
    simp [show (1572864 * k + 1514975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4544926) = 2359296 * k + 2272463 := by
    unfold C
    simp [show (4718592 * k + 4544926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2272463) = 7077888 * k + 6817390 := by
    unfold C
    simp [show (2359296 * k + 2272463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6817390) = 3538944 * k + 3408695 := by
    unfold C
    simp [show (7077888 * k + 6817390) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3408695) = 10616832 * k + 10226086 := by
    unfold C
    simp [show (3538944 * k + 3408695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10226086) = 5308416 * k + 5113043 := by
    unfold C
    simp [show (10616832 * k + 10226086) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5113043) = 15925248 * k + 15339130 := by
    unfold C
    simp [show (5308416 * k + 5113043) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15339130) = 7962624 * k + 7669565 := by
    unfold C
    simp [show (15925248 * k + 15339130) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7669565) = 23887872 * k + 23008696 := by
    unfold C
    simp [show (7962624 * k + 7669565) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23008696) = 11943936 * k + 11504348 := by
    unfold C
    simp [show (23887872 * k + 23008696) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11504348) = 5971968 * k + 5752174 := by
    unfold C
    simp [show (11943936 * k + 11504348) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5752174) = 2985984 * k + 2876087 := by
    unfold C
    simp [show (5971968 * k + 5752174) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2876087) = 8957952 * k + 8628262 := by
    unfold C
    simp [show (2985984 * k + 2876087) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8628262) = 4478976 * k + 4314131 := by
    unfold C
    simp [show (8957952 * k + 8628262) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4314131) = 13436928 * k + 12942394 := by
    unfold C
    simp [show (4478976 * k + 4314131) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12942394) = 6718464 * k + 6471197 := by
    unfold C
    simp [show (13436928 * k + 12942394) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6471197) = 20155392 * k + 19413592 := by
    unfold C
    simp [show (6718464 * k + 6471197) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19413592) = 10077696 * k + 9706796 := by
    unfold C
    simp [show (20155392 * k + 19413592) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9706796) = 5038848 * k + 4853398 := by
    unfold C
    simp [show (10077696 * k + 9706796) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4853398) = 2519424 * k + 2426699 := by
    unfold C
    simp [show (5038848 * k + 4853398) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2426699) = 7558272 * k + 7280098 := by
    unfold C
    simp [show (2519424 * k + 2426699) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7280098) = 3779136 * k + 3640049 := by
    unfold C
    simp [show (7558272 * k + 7280098) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3640049) = 11337408 * k + 10920148 := by
    unfold C
    simp [show (3779136 * k + 3640049) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10920148) = 5668704 * k + 5460074 := by
    unfold C
    simp [show (11337408 * k + 10920148) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5460074) = 2834352 * k + 2730037 := by
    unfold C
    simp [show (5668704 * k + 5460074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2730037) = 8503056 * k + 8190112 := by
    unfold C
    simp [show (2834352 * k + 2730037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8190112) = 4251528 * k + 4095056 := by
    unfold C
    simp [show (8503056 * k + 8190112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4095056) = 2125764 * k + 2047528 := by
    unfold C
    simp [show (4251528 * k + 4095056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2047528) = 1062882 * k + 1023764 := by
    unfold C
    simp [show (2125764 * k + 2047528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1023764) = 531441 * k + 511882 := by
    unfold C
    simp [show (1062882 * k + 1023764) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1009983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1009983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1010303 : ∀ k : Nat,
    iterate (1048576 * k + 1010303) 32 = 531441 * k + 512044 ∧
      531441 * k + 512044 < 1048576 * k + 1010303 := by
  intro k
  have h1 : C (1048576 * k + 1010303) = 3145728 * k + 3030910 := by
    unfold C
    simp [show (1048576 * k + 1010303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3030910) = 1572864 * k + 1515455 := by
    unfold C
    simp [show (3145728 * k + 3030910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1515455) = 4718592 * k + 4546366 := by
    unfold C
    simp [show (1572864 * k + 1515455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4546366) = 2359296 * k + 2273183 := by
    unfold C
    simp [show (4718592 * k + 4546366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2273183) = 7077888 * k + 6819550 := by
    unfold C
    simp [show (2359296 * k + 2273183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6819550) = 3538944 * k + 3409775 := by
    unfold C
    simp [show (7077888 * k + 6819550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3409775) = 10616832 * k + 10229326 := by
    unfold C
    simp [show (3538944 * k + 3409775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10229326) = 5308416 * k + 5114663 := by
    unfold C
    simp [show (10616832 * k + 10229326) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5114663) = 15925248 * k + 15343990 := by
    unfold C
    simp [show (5308416 * k + 5114663) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15343990) = 7962624 * k + 7671995 := by
    unfold C
    simp [show (15925248 * k + 15343990) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7671995) = 23887872 * k + 23015986 := by
    unfold C
    simp [show (7962624 * k + 7671995) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23015986) = 11943936 * k + 11507993 := by
    unfold C
    simp [show (23887872 * k + 23015986) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11507993) = 35831808 * k + 34523980 := by
    unfold C
    simp [show (11943936 * k + 11507993) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34523980) = 17915904 * k + 17261990 := by
    unfold C
    simp [show (35831808 * k + 34523980) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17261990) = 8957952 * k + 8630995 := by
    unfold C
    simp [show (17915904 * k + 17261990) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8630995) = 26873856 * k + 25892986 := by
    unfold C
    simp [show (8957952 * k + 8630995) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25892986) = 13436928 * k + 12946493 := by
    unfold C
    simp [show (26873856 * k + 25892986) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12946493) = 40310784 * k + 38839480 := by
    unfold C
    simp [show (13436928 * k + 12946493) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38839480) = 20155392 * k + 19419740 := by
    unfold C
    simp [show (40310784 * k + 38839480) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19419740) = 10077696 * k + 9709870 := by
    unfold C
    simp [show (20155392 * k + 19419740) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9709870) = 5038848 * k + 4854935 := by
    unfold C
    simp [show (10077696 * k + 9709870) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4854935) = 15116544 * k + 14564806 := by
    unfold C
    simp [show (5038848 * k + 4854935) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14564806) = 7558272 * k + 7282403 := by
    unfold C
    simp [show (15116544 * k + 14564806) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7282403) = 22674816 * k + 21847210 := by
    unfold C
    simp [show (7558272 * k + 7282403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21847210) = 11337408 * k + 10923605 := by
    unfold C
    simp [show (22674816 * k + 21847210) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10923605) = 34012224 * k + 32770816 := by
    unfold C
    simp [show (11337408 * k + 10923605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 32770816) = 17006112 * k + 16385408 := by
    unfold C
    simp [show (34012224 * k + 32770816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16385408) = 8503056 * k + 8192704 := by
    unfold C
    simp [show (17006112 * k + 16385408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8192704) = 4251528 * k + 4096352 := by
    unfold C
    simp [show (8503056 * k + 8192704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4096352) = 2125764 * k + 2048176 := by
    unfold C
    simp [show (4251528 * k + 4096352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2048176) = 1062882 * k + 1024088 := by
    unfold C
    simp [show (2125764 * k + 2048176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1024088) = 531441 * k + 512044 := by
    unfold C
    simp [show (1062882 * k + 1024088) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1010303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1010303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1010415 : ∀ k : Nat,
    iterate (1048576 * k + 1010415) 32 = 531441 * k + 512101 ∧
      531441 * k + 512101 < 1048576 * k + 1010415 := by
  intro k
  have h1 : C (1048576 * k + 1010415) = 3145728 * k + 3031246 := by
    unfold C
    simp [show (1048576 * k + 1010415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3031246) = 1572864 * k + 1515623 := by
    unfold C
    simp [show (3145728 * k + 3031246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1515623) = 4718592 * k + 4546870 := by
    unfold C
    simp [show (1572864 * k + 1515623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4546870) = 2359296 * k + 2273435 := by
    unfold C
    simp [show (4718592 * k + 4546870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2273435) = 7077888 * k + 6820306 := by
    unfold C
    simp [show (2359296 * k + 2273435) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6820306) = 3538944 * k + 3410153 := by
    unfold C
    simp [show (7077888 * k + 6820306) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3410153) = 10616832 * k + 10230460 := by
    unfold C
    simp [show (3538944 * k + 3410153) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10230460) = 5308416 * k + 5115230 := by
    unfold C
    simp [show (10616832 * k + 10230460) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5115230) = 2654208 * k + 2557615 := by
    unfold C
    simp [show (5308416 * k + 5115230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2557615) = 7962624 * k + 7672846 := by
    unfold C
    simp [show (2654208 * k + 2557615) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7672846) = 3981312 * k + 3836423 := by
    unfold C
    simp [show (7962624 * k + 7672846) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3836423) = 11943936 * k + 11509270 := by
    unfold C
    simp [show (3981312 * k + 3836423) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11509270) = 5971968 * k + 5754635 := by
    unfold C
    simp [show (11943936 * k + 11509270) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5754635) = 17915904 * k + 17263906 := by
    unfold C
    simp [show (5971968 * k + 5754635) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17263906) = 8957952 * k + 8631953 := by
    unfold C
    simp [show (17915904 * k + 17263906) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8631953) = 26873856 * k + 25895860 := by
    unfold C
    simp [show (8957952 * k + 8631953) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25895860) = 13436928 * k + 12947930 := by
    unfold C
    simp [show (26873856 * k + 25895860) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12947930) = 6718464 * k + 6473965 := by
    unfold C
    simp [show (13436928 * k + 12947930) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6473965) = 20155392 * k + 19421896 := by
    unfold C
    simp [show (6718464 * k + 6473965) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19421896) = 10077696 * k + 9710948 := by
    unfold C
    simp [show (20155392 * k + 19421896) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9710948) = 5038848 * k + 4855474 := by
    unfold C
    simp [show (10077696 * k + 9710948) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4855474) = 2519424 * k + 2427737 := by
    unfold C
    simp [show (5038848 * k + 4855474) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2427737) = 7558272 * k + 7283212 := by
    unfold C
    simp [show (2519424 * k + 2427737) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7283212) = 3779136 * k + 3641606 := by
    unfold C
    simp [show (7558272 * k + 7283212) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3641606) = 1889568 * k + 1820803 := by
    unfold C
    simp [show (3779136 * k + 3641606) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1820803) = 5668704 * k + 5462410 := by
    unfold C
    simp [show (1889568 * k + 1820803) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5462410) = 2834352 * k + 2731205 := by
    unfold C
    simp [show (5668704 * k + 5462410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2731205) = 8503056 * k + 8193616 := by
    unfold C
    simp [show (2834352 * k + 2731205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8193616) = 4251528 * k + 4096808 := by
    unfold C
    simp [show (8503056 * k + 8193616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4096808) = 2125764 * k + 2048404 := by
    unfold C
    simp [show (4251528 * k + 4096808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2048404) = 1062882 * k + 1024202 := by
    unfold C
    simp [show (2125764 * k + 2048404) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1024202) = 531441 * k + 512101 := by
    unfold C
    simp [show (1062882 * k + 1024202) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1010415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1010415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1010503 : ∀ k : Nat,
    iterate (1048576 * k + 1010503) 32 = 531441 * k + 512146 ∧
      531441 * k + 512146 < 1048576 * k + 1010503 := by
  intro k
  have h1 : C (1048576 * k + 1010503) = 3145728 * k + 3031510 := by
    unfold C
    simp [show (1048576 * k + 1010503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3031510) = 1572864 * k + 1515755 := by
    unfold C
    simp [show (3145728 * k + 3031510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1515755) = 4718592 * k + 4547266 := by
    unfold C
    simp [show (1572864 * k + 1515755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4547266) = 2359296 * k + 2273633 := by
    unfold C
    simp [show (4718592 * k + 4547266) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2273633) = 7077888 * k + 6820900 := by
    unfold C
    simp [show (2359296 * k + 2273633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6820900) = 3538944 * k + 3410450 := by
    unfold C
    simp [show (7077888 * k + 6820900) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3410450) = 1769472 * k + 1705225 := by
    unfold C
    simp [show (3538944 * k + 3410450) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1705225) = 5308416 * k + 5115676 := by
    unfold C
    simp [show (1769472 * k + 1705225) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5115676) = 2654208 * k + 2557838 := by
    unfold C
    simp [show (5308416 * k + 5115676) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2557838) = 1327104 * k + 1278919 := by
    unfold C
    simp [show (2654208 * k + 2557838) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1278919) = 3981312 * k + 3836758 := by
    unfold C
    simp [show (1327104 * k + 1278919) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3836758) = 1990656 * k + 1918379 := by
    unfold C
    simp [show (3981312 * k + 3836758) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1918379) = 5971968 * k + 5755138 := by
    unfold C
    simp [show (1990656 * k + 1918379) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5755138) = 2985984 * k + 2877569 := by
    unfold C
    simp [show (5971968 * k + 5755138) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2877569) = 8957952 * k + 8632708 := by
    unfold C
    simp [show (2985984 * k + 2877569) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8632708) = 4478976 * k + 4316354 := by
    unfold C
    simp [show (8957952 * k + 8632708) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4316354) = 2239488 * k + 2158177 := by
    unfold C
    simp [show (4478976 * k + 4316354) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2158177) = 6718464 * k + 6474532 := by
    unfold C
    simp [show (2239488 * k + 2158177) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6474532) = 3359232 * k + 3237266 := by
    unfold C
    simp [show (6718464 * k + 6474532) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3237266) = 1679616 * k + 1618633 := by
    unfold C
    simp [show (3359232 * k + 3237266) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1618633) = 5038848 * k + 4855900 := by
    unfold C
    simp [show (1679616 * k + 1618633) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4855900) = 2519424 * k + 2427950 := by
    unfold C
    simp [show (5038848 * k + 4855900) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2427950) = 1259712 * k + 1213975 := by
    unfold C
    simp [show (2519424 * k + 2427950) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1213975) = 3779136 * k + 3641926 := by
    unfold C
    simp [show (1259712 * k + 1213975) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3641926) = 1889568 * k + 1820963 := by
    unfold C
    simp [show (3779136 * k + 3641926) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1820963) = 5668704 * k + 5462890 := by
    unfold C
    simp [show (1889568 * k + 1820963) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5462890) = 2834352 * k + 2731445 := by
    unfold C
    simp [show (5668704 * k + 5462890) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2731445) = 8503056 * k + 8194336 := by
    unfold C
    simp [show (2834352 * k + 2731445) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8194336) = 4251528 * k + 4097168 := by
    unfold C
    simp [show (8503056 * k + 8194336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4097168) = 2125764 * k + 2048584 := by
    unfold C
    simp [show (4251528 * k + 4097168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2048584) = 1062882 * k + 1024292 := by
    unfold C
    simp [show (2125764 * k + 2048584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1024292) = 531441 * k + 512146 := by
    unfold C
    simp [show (1062882 * k + 1024292) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1010503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1010503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1011879 : ∀ k : Nat,
    iterate (1048576 * k + 1011879) 32 = 531441 * k + 512843 ∧
      531441 * k + 512843 < 1048576 * k + 1011879 := by
  intro k
  have h1 : C (1048576 * k + 1011879) = 3145728 * k + 3035638 := by
    unfold C
    simp [show (1048576 * k + 1011879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3035638) = 1572864 * k + 1517819 := by
    unfold C
    simp [show (3145728 * k + 3035638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1517819) = 4718592 * k + 4553458 := by
    unfold C
    simp [show (1572864 * k + 1517819) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4553458) = 2359296 * k + 2276729 := by
    unfold C
    simp [show (4718592 * k + 4553458) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2276729) = 7077888 * k + 6830188 := by
    unfold C
    simp [show (2359296 * k + 2276729) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6830188) = 3538944 * k + 3415094 := by
    unfold C
    simp [show (7077888 * k + 6830188) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3415094) = 1769472 * k + 1707547 := by
    unfold C
    simp [show (3538944 * k + 3415094) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1707547) = 5308416 * k + 5122642 := by
    unfold C
    simp [show (1769472 * k + 1707547) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5122642) = 2654208 * k + 2561321 := by
    unfold C
    simp [show (5308416 * k + 5122642) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2561321) = 7962624 * k + 7683964 := by
    unfold C
    simp [show (2654208 * k + 2561321) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7683964) = 3981312 * k + 3841982 := by
    unfold C
    simp [show (7962624 * k + 7683964) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3841982) = 1990656 * k + 1920991 := by
    unfold C
    simp [show (3981312 * k + 3841982) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1920991) = 5971968 * k + 5762974 := by
    unfold C
    simp [show (1990656 * k + 1920991) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5762974) = 2985984 * k + 2881487 := by
    unfold C
    simp [show (5971968 * k + 5762974) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2881487) = 8957952 * k + 8644462 := by
    unfold C
    simp [show (2985984 * k + 2881487) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8644462) = 4478976 * k + 4322231 := by
    unfold C
    simp [show (8957952 * k + 8644462) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4322231) = 13436928 * k + 12966694 := by
    unfold C
    simp [show (4478976 * k + 4322231) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12966694) = 6718464 * k + 6483347 := by
    unfold C
    simp [show (13436928 * k + 12966694) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6483347) = 20155392 * k + 19450042 := by
    unfold C
    simp [show (6718464 * k + 6483347) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19450042) = 10077696 * k + 9725021 := by
    unfold C
    simp [show (20155392 * k + 19450042) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9725021) = 30233088 * k + 29175064 := by
    unfold C
    simp [show (10077696 * k + 9725021) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29175064) = 15116544 * k + 14587532 := by
    unfold C
    simp [show (30233088 * k + 29175064) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14587532) = 7558272 * k + 7293766 := by
    unfold C
    simp [show (15116544 * k + 14587532) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7293766) = 3779136 * k + 3646883 := by
    unfold C
    simp [show (7558272 * k + 7293766) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3646883) = 11337408 * k + 10940650 := by
    unfold C
    simp [show (3779136 * k + 3646883) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10940650) = 5668704 * k + 5470325 := by
    unfold C
    simp [show (11337408 * k + 10940650) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5470325) = 17006112 * k + 16410976 := by
    unfold C
    simp [show (5668704 * k + 5470325) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16410976) = 8503056 * k + 8205488 := by
    unfold C
    simp [show (17006112 * k + 16410976) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8205488) = 4251528 * k + 4102744 := by
    unfold C
    simp [show (8503056 * k + 8205488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4102744) = 2125764 * k + 2051372 := by
    unfold C
    simp [show (4251528 * k + 4102744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2051372) = 1062882 * k + 1025686 := by
    unfold C
    simp [show (2125764 * k + 2051372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1025686) = 531441 * k + 512843 := by
    unfold C
    simp [show (1062882 * k + 1025686) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1011879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1011879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1011995 : ∀ k : Nat,
    iterate (1048576 * k + 1011995) 32 = 531441 * k + 512902 ∧
      531441 * k + 512902 < 1048576 * k + 1011995 := by
  intro k
  have h1 : C (1048576 * k + 1011995) = 3145728 * k + 3035986 := by
    unfold C
    simp [show (1048576 * k + 1011995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3035986) = 1572864 * k + 1517993 := by
    unfold C
    simp [show (3145728 * k + 3035986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1517993) = 4718592 * k + 4553980 := by
    unfold C
    simp [show (1572864 * k + 1517993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4553980) = 2359296 * k + 2276990 := by
    unfold C
    simp [show (4718592 * k + 4553980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2276990) = 1179648 * k + 1138495 := by
    unfold C
    simp [show (2359296 * k + 2276990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1138495) = 3538944 * k + 3415486 := by
    unfold C
    simp [show (1179648 * k + 1138495) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3415486) = 1769472 * k + 1707743 := by
    unfold C
    simp [show (3538944 * k + 3415486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1707743) = 5308416 * k + 5123230 := by
    unfold C
    simp [show (1769472 * k + 1707743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5123230) = 2654208 * k + 2561615 := by
    unfold C
    simp [show (5308416 * k + 5123230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2561615) = 7962624 * k + 7684846 := by
    unfold C
    simp [show (2654208 * k + 2561615) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7684846) = 3981312 * k + 3842423 := by
    unfold C
    simp [show (7962624 * k + 7684846) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3842423) = 11943936 * k + 11527270 := by
    unfold C
    simp [show (3981312 * k + 3842423) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11527270) = 5971968 * k + 5763635 := by
    unfold C
    simp [show (11943936 * k + 11527270) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5763635) = 17915904 * k + 17290906 := by
    unfold C
    simp [show (5971968 * k + 5763635) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17290906) = 8957952 * k + 8645453 := by
    unfold C
    simp [show (17915904 * k + 17290906) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8645453) = 26873856 * k + 25936360 := by
    unfold C
    simp [show (8957952 * k + 8645453) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25936360) = 13436928 * k + 12968180 := by
    unfold C
    simp [show (26873856 * k + 25936360) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12968180) = 6718464 * k + 6484090 := by
    unfold C
    simp [show (13436928 * k + 12968180) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6484090) = 3359232 * k + 3242045 := by
    unfold C
    simp [show (6718464 * k + 6484090) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3242045) = 10077696 * k + 9726136 := by
    unfold C
    simp [show (3359232 * k + 3242045) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9726136) = 5038848 * k + 4863068 := by
    unfold C
    simp [show (10077696 * k + 9726136) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4863068) = 2519424 * k + 2431534 := by
    unfold C
    simp [show (5038848 * k + 4863068) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2431534) = 1259712 * k + 1215767 := by
    unfold C
    simp [show (2519424 * k + 2431534) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1215767) = 3779136 * k + 3647302 := by
    unfold C
    simp [show (1259712 * k + 1215767) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3647302) = 1889568 * k + 1823651 := by
    unfold C
    simp [show (3779136 * k + 3647302) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1823651) = 5668704 * k + 5470954 := by
    unfold C
    simp [show (1889568 * k + 1823651) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5470954) = 2834352 * k + 2735477 := by
    unfold C
    simp [show (5668704 * k + 5470954) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2735477) = 8503056 * k + 8206432 := by
    unfold C
    simp [show (2834352 * k + 2735477) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8206432) = 4251528 * k + 4103216 := by
    unfold C
    simp [show (8503056 * k + 8206432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4103216) = 2125764 * k + 2051608 := by
    unfold C
    simp [show (4251528 * k + 4103216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2051608) = 1062882 * k + 1025804 := by
    unfold C
    simp [show (2125764 * k + 2051608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1025804) = 531441 * k + 512902 := by
    unfold C
    simp [show (1062882 * k + 1025804) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1011995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1011995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1012251 : ∀ k : Nat,
    iterate (1048576 * k + 1012251) 32 = 531441 * k + 513032 ∧
      531441 * k + 513032 < 1048576 * k + 1012251 := by
  intro k
  have h1 : C (1048576 * k + 1012251) = 3145728 * k + 3036754 := by
    unfold C
    simp [show (1048576 * k + 1012251) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3036754) = 1572864 * k + 1518377 := by
    unfold C
    simp [show (3145728 * k + 3036754) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1518377) = 4718592 * k + 4555132 := by
    unfold C
    simp [show (1572864 * k + 1518377) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4555132) = 2359296 * k + 2277566 := by
    unfold C
    simp [show (4718592 * k + 4555132) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2277566) = 1179648 * k + 1138783 := by
    unfold C
    simp [show (2359296 * k + 2277566) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1138783) = 3538944 * k + 3416350 := by
    unfold C
    simp [show (1179648 * k + 1138783) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3416350) = 1769472 * k + 1708175 := by
    unfold C
    simp [show (3538944 * k + 3416350) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1708175) = 5308416 * k + 5124526 := by
    unfold C
    simp [show (1769472 * k + 1708175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5124526) = 2654208 * k + 2562263 := by
    unfold C
    simp [show (5308416 * k + 5124526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2562263) = 7962624 * k + 7686790 := by
    unfold C
    simp [show (2654208 * k + 2562263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7686790) = 3981312 * k + 3843395 := by
    unfold C
    simp [show (7962624 * k + 7686790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3843395) = 11943936 * k + 11530186 := by
    unfold C
    simp [show (3981312 * k + 3843395) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11530186) = 5971968 * k + 5765093 := by
    unfold C
    simp [show (11943936 * k + 11530186) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5765093) = 17915904 * k + 17295280 := by
    unfold C
    simp [show (5971968 * k + 5765093) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17295280) = 8957952 * k + 8647640 := by
    unfold C
    simp [show (17915904 * k + 17295280) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8647640) = 4478976 * k + 4323820 := by
    unfold C
    simp [show (8957952 * k + 8647640) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4323820) = 2239488 * k + 2161910 := by
    unfold C
    simp [show (4478976 * k + 4323820) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2161910) = 1119744 * k + 1080955 := by
    unfold C
    simp [show (2239488 * k + 2161910) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1080955) = 3359232 * k + 3242866 := by
    unfold C
    simp [show (1119744 * k + 1080955) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3242866) = 1679616 * k + 1621433 := by
    unfold C
    simp [show (3359232 * k + 3242866) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1621433) = 5038848 * k + 4864300 := by
    unfold C
    simp [show (1679616 * k + 1621433) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4864300) = 2519424 * k + 2432150 := by
    unfold C
    simp [show (5038848 * k + 4864300) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2432150) = 1259712 * k + 1216075 := by
    unfold C
    simp [show (2519424 * k + 2432150) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1216075) = 3779136 * k + 3648226 := by
    unfold C
    simp [show (1259712 * k + 1216075) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3648226) = 1889568 * k + 1824113 := by
    unfold C
    simp [show (3779136 * k + 3648226) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1824113) = 5668704 * k + 5472340 := by
    unfold C
    simp [show (1889568 * k + 1824113) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5472340) = 2834352 * k + 2736170 := by
    unfold C
    simp [show (5668704 * k + 5472340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2736170) = 1417176 * k + 1368085 := by
    unfold C
    simp [show (2834352 * k + 2736170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1368085) = 4251528 * k + 4104256 := by
    unfold C
    simp [show (1417176 * k + 1368085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4104256) = 2125764 * k + 2052128 := by
    unfold C
    simp [show (4251528 * k + 4104256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2052128) = 1062882 * k + 1026064 := by
    unfold C
    simp [show (2125764 * k + 2052128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1026064) = 531441 * k + 513032 := by
    unfold C
    simp [show (1062882 * k + 1026064) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1012251) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1012251)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1012351 : ∀ k : Nat,
    iterate (1048576 * k + 1012351) 32 = 531441 * k + 513082 ∧
      531441 * k + 513082 < 1048576 * k + 1012351 := by
  intro k
  have h1 : C (1048576 * k + 1012351) = 3145728 * k + 3037054 := by
    unfold C
    simp [show (1048576 * k + 1012351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3037054) = 1572864 * k + 1518527 := by
    unfold C
    simp [show (3145728 * k + 3037054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1518527) = 4718592 * k + 4555582 := by
    unfold C
    simp [show (1572864 * k + 1518527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4555582) = 2359296 * k + 2277791 := by
    unfold C
    simp [show (4718592 * k + 4555582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2277791) = 7077888 * k + 6833374 := by
    unfold C
    simp [show (2359296 * k + 2277791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6833374) = 3538944 * k + 3416687 := by
    unfold C
    simp [show (7077888 * k + 6833374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3416687) = 10616832 * k + 10250062 := by
    unfold C
    simp [show (3538944 * k + 3416687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10250062) = 5308416 * k + 5125031 := by
    unfold C
    simp [show (10616832 * k + 10250062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5125031) = 15925248 * k + 15375094 := by
    unfold C
    simp [show (5308416 * k + 5125031) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15375094) = 7962624 * k + 7687547 := by
    unfold C
    simp [show (15925248 * k + 15375094) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7687547) = 23887872 * k + 23062642 := by
    unfold C
    simp [show (7962624 * k + 7687547) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23062642) = 11943936 * k + 11531321 := by
    unfold C
    simp [show (23887872 * k + 23062642) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11531321) = 35831808 * k + 34593964 := by
    unfold C
    simp [show (11943936 * k + 11531321) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34593964) = 17915904 * k + 17296982 := by
    unfold C
    simp [show (35831808 * k + 34593964) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17296982) = 8957952 * k + 8648491 := by
    unfold C
    simp [show (17915904 * k + 17296982) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8648491) = 26873856 * k + 25945474 := by
    unfold C
    simp [show (8957952 * k + 8648491) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25945474) = 13436928 * k + 12972737 := by
    unfold C
    simp [show (26873856 * k + 25945474) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12972737) = 40310784 * k + 38918212 := by
    unfold C
    simp [show (13436928 * k + 12972737) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38918212) = 20155392 * k + 19459106 := by
    unfold C
    simp [show (40310784 * k + 38918212) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19459106) = 10077696 * k + 9729553 := by
    unfold C
    simp [show (20155392 * k + 19459106) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9729553) = 30233088 * k + 29188660 := by
    unfold C
    simp [show (10077696 * k + 9729553) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29188660) = 15116544 * k + 14594330 := by
    unfold C
    simp [show (30233088 * k + 29188660) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14594330) = 7558272 * k + 7297165 := by
    unfold C
    simp [show (15116544 * k + 14594330) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7297165) = 22674816 * k + 21891496 := by
    unfold C
    simp [show (7558272 * k + 7297165) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21891496) = 11337408 * k + 10945748 := by
    unfold C
    simp [show (22674816 * k + 21891496) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10945748) = 5668704 * k + 5472874 := by
    unfold C
    simp [show (11337408 * k + 10945748) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5472874) = 2834352 * k + 2736437 := by
    unfold C
    simp [show (5668704 * k + 5472874) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2736437) = 8503056 * k + 8209312 := by
    unfold C
    simp [show (2834352 * k + 2736437) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8209312) = 4251528 * k + 4104656 := by
    unfold C
    simp [show (8503056 * k + 8209312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4104656) = 2125764 * k + 2052328 := by
    unfold C
    simp [show (4251528 * k + 4104656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2052328) = 1062882 * k + 1026164 := by
    unfold C
    simp [show (2125764 * k + 2052328) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1026164) = 531441 * k + 513082 := by
    unfold C
    simp [show (1062882 * k + 1026164) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1012351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1012351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1012767 : ∀ k : Nat,
    iterate (1048576 * k + 1012767) 32 = 531441 * k + 513293 ∧
      531441 * k + 513293 < 1048576 * k + 1012767 := by
  intro k
  have h1 : C (1048576 * k + 1012767) = 3145728 * k + 3038302 := by
    unfold C
    simp [show (1048576 * k + 1012767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3038302) = 1572864 * k + 1519151 := by
    unfold C
    simp [show (3145728 * k + 3038302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1519151) = 4718592 * k + 4557454 := by
    unfold C
    simp [show (1572864 * k + 1519151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4557454) = 2359296 * k + 2278727 := by
    unfold C
    simp [show (4718592 * k + 4557454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2278727) = 7077888 * k + 6836182 := by
    unfold C
    simp [show (2359296 * k + 2278727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6836182) = 3538944 * k + 3418091 := by
    unfold C
    simp [show (7077888 * k + 6836182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3418091) = 10616832 * k + 10254274 := by
    unfold C
    simp [show (3538944 * k + 3418091) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10254274) = 5308416 * k + 5127137 := by
    unfold C
    simp [show (10616832 * k + 10254274) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5127137) = 15925248 * k + 15381412 := by
    unfold C
    simp [show (5308416 * k + 5127137) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15381412) = 7962624 * k + 7690706 := by
    unfold C
    simp [show (15925248 * k + 15381412) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7690706) = 3981312 * k + 3845353 := by
    unfold C
    simp [show (7962624 * k + 7690706) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3845353) = 11943936 * k + 11536060 := by
    unfold C
    simp [show (3981312 * k + 3845353) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11536060) = 5971968 * k + 5768030 := by
    unfold C
    simp [show (11943936 * k + 11536060) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5768030) = 2985984 * k + 2884015 := by
    unfold C
    simp [show (5971968 * k + 5768030) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2884015) = 8957952 * k + 8652046 := by
    unfold C
    simp [show (2985984 * k + 2884015) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8652046) = 4478976 * k + 4326023 := by
    unfold C
    simp [show (8957952 * k + 8652046) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4326023) = 13436928 * k + 12978070 := by
    unfold C
    simp [show (4478976 * k + 4326023) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12978070) = 6718464 * k + 6489035 := by
    unfold C
    simp [show (13436928 * k + 12978070) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6489035) = 20155392 * k + 19467106 := by
    unfold C
    simp [show (6718464 * k + 6489035) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19467106) = 10077696 * k + 9733553 := by
    unfold C
    simp [show (20155392 * k + 19467106) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9733553) = 30233088 * k + 29200660 := by
    unfold C
    simp [show (10077696 * k + 9733553) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 29200660) = 15116544 * k + 14600330 := by
    unfold C
    simp [show (30233088 * k + 29200660) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14600330) = 7558272 * k + 7300165 := by
    unfold C
    simp [show (15116544 * k + 14600330) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7300165) = 22674816 * k + 21900496 := by
    unfold C
    simp [show (7558272 * k + 7300165) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21900496) = 11337408 * k + 10950248 := by
    unfold C
    simp [show (22674816 * k + 21900496) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10950248) = 5668704 * k + 5475124 := by
    unfold C
    simp [show (11337408 * k + 10950248) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5475124) = 2834352 * k + 2737562 := by
    unfold C
    simp [show (5668704 * k + 5475124) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2737562) = 1417176 * k + 1368781 := by
    unfold C
    simp [show (2834352 * k + 2737562) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1368781) = 4251528 * k + 4106344 := by
    unfold C
    simp [show (1417176 * k + 1368781) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4106344) = 2125764 * k + 2053172 := by
    unfold C
    simp [show (4251528 * k + 4106344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2053172) = 1062882 * k + 1026586 := by
    unfold C
    simp [show (2125764 * k + 2053172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1026586) = 531441 * k + 513293 := by
    unfold C
    simp [show (1062882 * k + 1026586) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1012767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1012767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1013375 : ∀ k : Nat,
    iterate (1048576 * k + 1013375) 32 = 531441 * k + 513601 ∧
      531441 * k + 513601 < 1048576 * k + 1013375 := by
  intro k
  have h1 : C (1048576 * k + 1013375) = 3145728 * k + 3040126 := by
    unfold C
    simp [show (1048576 * k + 1013375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3040126) = 1572864 * k + 1520063 := by
    unfold C
    simp [show (3145728 * k + 3040126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1520063) = 4718592 * k + 4560190 := by
    unfold C
    simp [show (1572864 * k + 1520063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4560190) = 2359296 * k + 2280095 := by
    unfold C
    simp [show (4718592 * k + 4560190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2280095) = 7077888 * k + 6840286 := by
    unfold C
    simp [show (2359296 * k + 2280095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6840286) = 3538944 * k + 3420143 := by
    unfold C
    simp [show (7077888 * k + 6840286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3420143) = 10616832 * k + 10260430 := by
    unfold C
    simp [show (3538944 * k + 3420143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10260430) = 5308416 * k + 5130215 := by
    unfold C
    simp [show (10616832 * k + 10260430) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5130215) = 15925248 * k + 15390646 := by
    unfold C
    simp [show (5308416 * k + 5130215) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15390646) = 7962624 * k + 7695323 := by
    unfold C
    simp [show (15925248 * k + 15390646) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7695323) = 23887872 * k + 23085970 := by
    unfold C
    simp [show (7962624 * k + 7695323) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23085970) = 11943936 * k + 11542985 := by
    unfold C
    simp [show (23887872 * k + 23085970) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11542985) = 35831808 * k + 34628956 := by
    unfold C
    simp [show (11943936 * k + 11542985) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34628956) = 17915904 * k + 17314478 := by
    unfold C
    simp [show (35831808 * k + 34628956) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17314478) = 8957952 * k + 8657239 := by
    unfold C
    simp [show (17915904 * k + 17314478) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8657239) = 26873856 * k + 25971718 := by
    unfold C
    simp [show (8957952 * k + 8657239) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25971718) = 13436928 * k + 12985859 := by
    unfold C
    simp [show (26873856 * k + 25971718) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12985859) = 40310784 * k + 38957578 := by
    unfold C
    simp [show (13436928 * k + 12985859) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38957578) = 20155392 * k + 19478789 := by
    unfold C
    simp [show (40310784 * k + 38957578) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19478789) = 60466176 * k + 58436368 := by
    unfold C
    simp [show (20155392 * k + 19478789) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 58436368) = 30233088 * k + 29218184 := by
    unfold C
    simp [show (60466176 * k + 58436368) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29218184) = 15116544 * k + 14609092 := by
    unfold C
    simp [show (30233088 * k + 29218184) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14609092) = 7558272 * k + 7304546 := by
    unfold C
    simp [show (15116544 * k + 14609092) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7304546) = 3779136 * k + 3652273 := by
    unfold C
    simp [show (7558272 * k + 7304546) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3652273) = 11337408 * k + 10956820 := by
    unfold C
    simp [show (3779136 * k + 3652273) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10956820) = 5668704 * k + 5478410 := by
    unfold C
    simp [show (11337408 * k + 10956820) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5478410) = 2834352 * k + 2739205 := by
    unfold C
    simp [show (5668704 * k + 5478410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2739205) = 8503056 * k + 8217616 := by
    unfold C
    simp [show (2834352 * k + 2739205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8217616) = 4251528 * k + 4108808 := by
    unfold C
    simp [show (8503056 * k + 8217616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4108808) = 2125764 * k + 2054404 := by
    unfold C
    simp [show (4251528 * k + 4108808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2054404) = 1062882 * k + 1027202 := by
    unfold C
    simp [show (2125764 * k + 2054404) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1027202) = 531441 * k + 513601 := by
    unfold C
    simp [show (1062882 * k + 1027202) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1013375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1013375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1014271 : ∀ k : Nat,
    iterate (1048576 * k + 1014271) 32 = 531441 * k + 514055 ∧
      531441 * k + 514055 < 1048576 * k + 1014271 := by
  intro k
  have h1 : C (1048576 * k + 1014271) = 3145728 * k + 3042814 := by
    unfold C
    simp [show (1048576 * k + 1014271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3042814) = 1572864 * k + 1521407 := by
    unfold C
    simp [show (3145728 * k + 3042814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1521407) = 4718592 * k + 4564222 := by
    unfold C
    simp [show (1572864 * k + 1521407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4564222) = 2359296 * k + 2282111 := by
    unfold C
    simp [show (4718592 * k + 4564222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2282111) = 7077888 * k + 6846334 := by
    unfold C
    simp [show (2359296 * k + 2282111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6846334) = 3538944 * k + 3423167 := by
    unfold C
    simp [show (7077888 * k + 6846334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3423167) = 10616832 * k + 10269502 := by
    unfold C
    simp [show (3538944 * k + 3423167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10269502) = 5308416 * k + 5134751 := by
    unfold C
    simp [show (10616832 * k + 10269502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5134751) = 15925248 * k + 15404254 := by
    unfold C
    simp [show (5308416 * k + 5134751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15404254) = 7962624 * k + 7702127 := by
    unfold C
    simp [show (15925248 * k + 15404254) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7702127) = 23887872 * k + 23106382 := by
    unfold C
    simp [show (7962624 * k + 7702127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23106382) = 11943936 * k + 11553191 := by
    unfold C
    simp [show (23887872 * k + 23106382) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11553191) = 35831808 * k + 34659574 := by
    unfold C
    simp [show (11943936 * k + 11553191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 34659574) = 17915904 * k + 17329787 := by
    unfold C
    simp [show (35831808 * k + 34659574) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17329787) = 53747712 * k + 51989362 := by
    unfold C
    simp [show (17915904 * k + 17329787) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 51989362) = 26873856 * k + 25994681 := by
    unfold C
    simp [show (53747712 * k + 51989362) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 25994681) = 80621568 * k + 77984044 := by
    unfold C
    simp [show (26873856 * k + 25994681) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 77984044) = 40310784 * k + 38992022 := by
    unfold C
    simp [show (80621568 * k + 77984044) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 38992022) = 20155392 * k + 19496011 := by
    unfold C
    simp [show (40310784 * k + 38992022) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19496011) = 60466176 * k + 58488034 := by
    unfold C
    simp [show (20155392 * k + 19496011) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 58488034) = 30233088 * k + 29244017 := by
    unfold C
    simp [show (60466176 * k + 58488034) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 29244017) = 90699264 * k + 87732052 := by
    unfold C
    simp [show (30233088 * k + 29244017) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 87732052) = 45349632 * k + 43866026 := by
    unfold C
    simp [show (90699264 * k + 87732052) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 43866026) = 22674816 * k + 21933013 := by
    unfold C
    simp [show (45349632 * k + 43866026) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21933013) = 68024448 * k + 65799040 := by
    unfold C
    simp [show (22674816 * k + 21933013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 65799040) = 34012224 * k + 32899520 := by
    unfold C
    simp [show (68024448 * k + 65799040) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 32899520) = 17006112 * k + 16449760 := by
    unfold C
    simp [show (34012224 * k + 32899520) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16449760) = 8503056 * k + 8224880 := by
    unfold C
    simp [show (17006112 * k + 16449760) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8224880) = 4251528 * k + 4112440 := by
    unfold C
    simp [show (8503056 * k + 8224880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4112440) = 2125764 * k + 2056220 := by
    unfold C
    simp [show (4251528 * k + 4112440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2056220) = 1062882 * k + 1028110 := by
    unfold C
    simp [show (2125764 * k + 2056220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1028110) = 531441 * k + 514055 := by
    unfold C
    simp [show (1062882 * k + 1028110) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1014271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1014271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard128
