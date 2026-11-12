import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard070

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_542623 : ∀ k : Nat,
    iterate (1048576 * k + 542623) 32 = 531441 * k + 275014 ∧
      531441 * k + 275014 < 1048576 * k + 542623 := by
  intro k
  have h1 : C (1048576 * k + 542623) = 3145728 * k + 1627870 := by
    unfold C
    simp [show (1048576 * k + 542623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1627870) = 1572864 * k + 813935 := by
    unfold C
    simp [show (3145728 * k + 1627870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 813935) = 4718592 * k + 2441806 := by
    unfold C
    simp [show (1572864 * k + 813935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2441806) = 2359296 * k + 1220903 := by
    unfold C
    simp [show (4718592 * k + 2441806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1220903) = 7077888 * k + 3662710 := by
    unfold C
    simp [show (2359296 * k + 1220903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3662710) = 3538944 * k + 1831355 := by
    unfold C
    simp [show (7077888 * k + 3662710) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1831355) = 10616832 * k + 5494066 := by
    unfold C
    simp [show (3538944 * k + 1831355) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5494066) = 5308416 * k + 2747033 := by
    unfold C
    simp [show (10616832 * k + 5494066) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2747033) = 15925248 * k + 8241100 := by
    unfold C
    simp [show (5308416 * k + 2747033) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8241100) = 7962624 * k + 4120550 := by
    unfold C
    simp [show (15925248 * k + 8241100) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4120550) = 3981312 * k + 2060275 := by
    unfold C
    simp [show (7962624 * k + 4120550) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2060275) = 11943936 * k + 6180826 := by
    unfold C
    simp [show (3981312 * k + 2060275) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6180826) = 5971968 * k + 3090413 := by
    unfold C
    simp [show (11943936 * k + 6180826) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3090413) = 17915904 * k + 9271240 := by
    unfold C
    simp [show (5971968 * k + 3090413) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9271240) = 8957952 * k + 4635620 := by
    unfold C
    simp [show (17915904 * k + 9271240) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4635620) = 4478976 * k + 2317810 := by
    unfold C
    simp [show (8957952 * k + 4635620) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2317810) = 2239488 * k + 1158905 := by
    unfold C
    simp [show (4478976 * k + 2317810) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1158905) = 6718464 * k + 3476716 := by
    unfold C
    simp [show (2239488 * k + 1158905) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3476716) = 3359232 * k + 1738358 := by
    unfold C
    simp [show (6718464 * k + 3476716) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1738358) = 1679616 * k + 869179 := by
    unfold C
    simp [show (3359232 * k + 1738358) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 869179) = 5038848 * k + 2607538 := by
    unfold C
    simp [show (1679616 * k + 869179) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2607538) = 2519424 * k + 1303769 := by
    unfold C
    simp [show (5038848 * k + 2607538) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1303769) = 7558272 * k + 3911308 := by
    unfold C
    simp [show (2519424 * k + 1303769) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3911308) = 3779136 * k + 1955654 := by
    unfold C
    simp [show (7558272 * k + 3911308) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1955654) = 1889568 * k + 977827 := by
    unfold C
    simp [show (3779136 * k + 1955654) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 977827) = 5668704 * k + 2933482 := by
    unfold C
    simp [show (1889568 * k + 977827) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2933482) = 2834352 * k + 1466741 := by
    unfold C
    simp [show (5668704 * k + 2933482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1466741) = 8503056 * k + 4400224 := by
    unfold C
    simp [show (2834352 * k + 1466741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4400224) = 4251528 * k + 2200112 := by
    unfold C
    simp [show (8503056 * k + 4400224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2200112) = 2125764 * k + 1100056 := by
    unfold C
    simp [show (4251528 * k + 2200112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1100056) = 1062882 * k + 550028 := by
    unfold C
    simp [show (2125764 * k + 1100056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 550028) = 531441 * k + 275014 := by
    unfold C
    simp [show (1062882 * k + 550028) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 542623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 542623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_542783 : ∀ k : Nat,
    iterate (1048576 * k + 542783) 32 = 531441 * k + 275095 ∧
      531441 * k + 275095 < 1048576 * k + 542783 := by
  intro k
  have h1 : C (1048576 * k + 542783) = 3145728 * k + 1628350 := by
    unfold C
    simp [show (1048576 * k + 542783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1628350) = 1572864 * k + 814175 := by
    unfold C
    simp [show (3145728 * k + 1628350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 814175) = 4718592 * k + 2442526 := by
    unfold C
    simp [show (1572864 * k + 814175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2442526) = 2359296 * k + 1221263 := by
    unfold C
    simp [show (4718592 * k + 2442526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1221263) = 7077888 * k + 3663790 := by
    unfold C
    simp [show (2359296 * k + 1221263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3663790) = 3538944 * k + 1831895 := by
    unfold C
    simp [show (7077888 * k + 3663790) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1831895) = 10616832 * k + 5495686 := by
    unfold C
    simp [show (3538944 * k + 1831895) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5495686) = 5308416 * k + 2747843 := by
    unfold C
    simp [show (10616832 * k + 5495686) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2747843) = 15925248 * k + 8243530 := by
    unfold C
    simp [show (5308416 * k + 2747843) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8243530) = 7962624 * k + 4121765 := by
    unfold C
    simp [show (15925248 * k + 8243530) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4121765) = 23887872 * k + 12365296 := by
    unfold C
    simp [show (7962624 * k + 4121765) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12365296) = 11943936 * k + 6182648 := by
    unfold C
    simp [show (23887872 * k + 12365296) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6182648) = 5971968 * k + 3091324 := by
    unfold C
    simp [show (11943936 * k + 6182648) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3091324) = 2985984 * k + 1545662 := by
    unfold C
    simp [show (5971968 * k + 3091324) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1545662) = 1492992 * k + 772831 := by
    unfold C
    simp [show (2985984 * k + 1545662) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 772831) = 4478976 * k + 2318494 := by
    unfold C
    simp [show (1492992 * k + 772831) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2318494) = 2239488 * k + 1159247 := by
    unfold C
    simp [show (4478976 * k + 2318494) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1159247) = 6718464 * k + 3477742 := by
    unfold C
    simp [show (2239488 * k + 1159247) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3477742) = 3359232 * k + 1738871 := by
    unfold C
    simp [show (6718464 * k + 3477742) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1738871) = 10077696 * k + 5216614 := by
    unfold C
    simp [show (3359232 * k + 1738871) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5216614) = 5038848 * k + 2608307 := by
    unfold C
    simp [show (10077696 * k + 5216614) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2608307) = 15116544 * k + 7824922 := by
    unfold C
    simp [show (5038848 * k + 2608307) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7824922) = 7558272 * k + 3912461 := by
    unfold C
    simp [show (15116544 * k + 7824922) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3912461) = 22674816 * k + 11737384 := by
    unfold C
    simp [show (7558272 * k + 3912461) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11737384) = 11337408 * k + 5868692 := by
    unfold C
    simp [show (22674816 * k + 11737384) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5868692) = 5668704 * k + 2934346 := by
    unfold C
    simp [show (11337408 * k + 5868692) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2934346) = 2834352 * k + 1467173 := by
    unfold C
    simp [show (5668704 * k + 2934346) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1467173) = 8503056 * k + 4401520 := by
    unfold C
    simp [show (2834352 * k + 1467173) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4401520) = 4251528 * k + 2200760 := by
    unfold C
    simp [show (8503056 * k + 4401520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2200760) = 2125764 * k + 1100380 := by
    unfold C
    simp [show (4251528 * k + 2200760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1100380) = 1062882 * k + 550190 := by
    unfold C
    simp [show (2125764 * k + 1100380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 550190) = 531441 * k + 275095 := by
    unfold C
    simp [show (1062882 * k + 550190) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 542783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 542783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_543079 : ∀ k : Nat,
    iterate (1048576 * k + 543079) 32 = 531441 * k + 275245 ∧
      531441 * k + 275245 < 1048576 * k + 543079 := by
  intro k
  have h1 : C (1048576 * k + 543079) = 3145728 * k + 1629238 := by
    unfold C
    simp [show (1048576 * k + 543079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1629238) = 1572864 * k + 814619 := by
    unfold C
    simp [show (3145728 * k + 1629238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 814619) = 4718592 * k + 2443858 := by
    unfold C
    simp [show (1572864 * k + 814619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2443858) = 2359296 * k + 1221929 := by
    unfold C
    simp [show (4718592 * k + 2443858) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1221929) = 7077888 * k + 3665788 := by
    unfold C
    simp [show (2359296 * k + 1221929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3665788) = 3538944 * k + 1832894 := by
    unfold C
    simp [show (7077888 * k + 3665788) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1832894) = 1769472 * k + 916447 := by
    unfold C
    simp [show (3538944 * k + 1832894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 916447) = 5308416 * k + 2749342 := by
    unfold C
    simp [show (1769472 * k + 916447) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2749342) = 2654208 * k + 1374671 := by
    unfold C
    simp [show (5308416 * k + 2749342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1374671) = 7962624 * k + 4124014 := by
    unfold C
    simp [show (2654208 * k + 1374671) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4124014) = 3981312 * k + 2062007 := by
    unfold C
    simp [show (7962624 * k + 4124014) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2062007) = 11943936 * k + 6186022 := by
    unfold C
    simp [show (3981312 * k + 2062007) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6186022) = 5971968 * k + 3093011 := by
    unfold C
    simp [show (11943936 * k + 6186022) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3093011) = 17915904 * k + 9279034 := by
    unfold C
    simp [show (5971968 * k + 3093011) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9279034) = 8957952 * k + 4639517 := by
    unfold C
    simp [show (17915904 * k + 9279034) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4639517) = 26873856 * k + 13918552 := by
    unfold C
    simp [show (8957952 * k + 4639517) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13918552) = 13436928 * k + 6959276 := by
    unfold C
    simp [show (26873856 * k + 13918552) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6959276) = 6718464 * k + 3479638 := by
    unfold C
    simp [show (13436928 * k + 6959276) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3479638) = 3359232 * k + 1739819 := by
    unfold C
    simp [show (6718464 * k + 3479638) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1739819) = 10077696 * k + 5219458 := by
    unfold C
    simp [show (3359232 * k + 1739819) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5219458) = 5038848 * k + 2609729 := by
    unfold C
    simp [show (10077696 * k + 5219458) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2609729) = 15116544 * k + 7829188 := by
    unfold C
    simp [show (5038848 * k + 2609729) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7829188) = 7558272 * k + 3914594 := by
    unfold C
    simp [show (15116544 * k + 7829188) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3914594) = 3779136 * k + 1957297 := by
    unfold C
    simp [show (7558272 * k + 3914594) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1957297) = 11337408 * k + 5871892 := by
    unfold C
    simp [show (3779136 * k + 1957297) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5871892) = 5668704 * k + 2935946 := by
    unfold C
    simp [show (11337408 * k + 5871892) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2935946) = 2834352 * k + 1467973 := by
    unfold C
    simp [show (5668704 * k + 2935946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1467973) = 8503056 * k + 4403920 := by
    unfold C
    simp [show (2834352 * k + 1467973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4403920) = 4251528 * k + 2201960 := by
    unfold C
    simp [show (8503056 * k + 4403920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2201960) = 2125764 * k + 1100980 := by
    unfold C
    simp [show (4251528 * k + 2201960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1100980) = 1062882 * k + 550490 := by
    unfold C
    simp [show (2125764 * k + 1100980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 550490) = 531441 * k + 275245 := by
    unfold C
    simp [show (1062882 * k + 550490) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 543079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 543079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_543483 : ∀ k : Nat,
    iterate (1048576 * k + 543483) 32 = 531441 * k + 275450 ∧
      531441 * k + 275450 < 1048576 * k + 543483 := by
  intro k
  have h1 : C (1048576 * k + 543483) = 3145728 * k + 1630450 := by
    unfold C
    simp [show (1048576 * k + 543483) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1630450) = 1572864 * k + 815225 := by
    unfold C
    simp [show (3145728 * k + 1630450) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 815225) = 4718592 * k + 2445676 := by
    unfold C
    simp [show (1572864 * k + 815225) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2445676) = 2359296 * k + 1222838 := by
    unfold C
    simp [show (4718592 * k + 2445676) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1222838) = 1179648 * k + 611419 := by
    unfold C
    simp [show (2359296 * k + 1222838) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 611419) = 3538944 * k + 1834258 := by
    unfold C
    simp [show (1179648 * k + 611419) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1834258) = 1769472 * k + 917129 := by
    unfold C
    simp [show (3538944 * k + 1834258) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 917129) = 5308416 * k + 2751388 := by
    unfold C
    simp [show (1769472 * k + 917129) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2751388) = 2654208 * k + 1375694 := by
    unfold C
    simp [show (5308416 * k + 2751388) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1375694) = 1327104 * k + 687847 := by
    unfold C
    simp [show (2654208 * k + 1375694) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 687847) = 3981312 * k + 2063542 := by
    unfold C
    simp [show (1327104 * k + 687847) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2063542) = 1990656 * k + 1031771 := by
    unfold C
    simp [show (3981312 * k + 2063542) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1031771) = 5971968 * k + 3095314 := by
    unfold C
    simp [show (1990656 * k + 1031771) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3095314) = 2985984 * k + 1547657 := by
    unfold C
    simp [show (5971968 * k + 3095314) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1547657) = 8957952 * k + 4642972 := by
    unfold C
    simp [show (2985984 * k + 1547657) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4642972) = 4478976 * k + 2321486 := by
    unfold C
    simp [show (8957952 * k + 4642972) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2321486) = 2239488 * k + 1160743 := by
    unfold C
    simp [show (4478976 * k + 2321486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1160743) = 6718464 * k + 3482230 := by
    unfold C
    simp [show (2239488 * k + 1160743) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3482230) = 3359232 * k + 1741115 := by
    unfold C
    simp [show (6718464 * k + 3482230) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1741115) = 10077696 * k + 5223346 := by
    unfold C
    simp [show (3359232 * k + 1741115) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5223346) = 5038848 * k + 2611673 := by
    unfold C
    simp [show (10077696 * k + 5223346) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2611673) = 15116544 * k + 7835020 := by
    unfold C
    simp [show (5038848 * k + 2611673) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7835020) = 7558272 * k + 3917510 := by
    unfold C
    simp [show (15116544 * k + 7835020) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3917510) = 3779136 * k + 1958755 := by
    unfold C
    simp [show (7558272 * k + 3917510) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1958755) = 11337408 * k + 5876266 := by
    unfold C
    simp [show (3779136 * k + 1958755) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5876266) = 5668704 * k + 2938133 := by
    unfold C
    simp [show (11337408 * k + 5876266) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2938133) = 17006112 * k + 8814400 := by
    unfold C
    simp [show (5668704 * k + 2938133) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8814400) = 8503056 * k + 4407200 := by
    unfold C
    simp [show (17006112 * k + 8814400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4407200) = 4251528 * k + 2203600 := by
    unfold C
    simp [show (8503056 * k + 4407200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2203600) = 2125764 * k + 1101800 := by
    unfold C
    simp [show (4251528 * k + 2203600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1101800) = 1062882 * k + 550900 := by
    unfold C
    simp [show (2125764 * k + 1101800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 550900) = 531441 * k + 275450 := by
    unfold C
    simp [show (1062882 * k + 550900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 543483) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 543483)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_543679 : ∀ k : Nat,
    iterate (1048576 * k + 543679) 32 = 531441 * k + 275549 ∧
      531441 * k + 275549 < 1048576 * k + 543679 := by
  intro k
  have h1 : C (1048576 * k + 543679) = 3145728 * k + 1631038 := by
    unfold C
    simp [show (1048576 * k + 543679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1631038) = 1572864 * k + 815519 := by
    unfold C
    simp [show (3145728 * k + 1631038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 815519) = 4718592 * k + 2446558 := by
    unfold C
    simp [show (1572864 * k + 815519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2446558) = 2359296 * k + 1223279 := by
    unfold C
    simp [show (4718592 * k + 2446558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1223279) = 7077888 * k + 3669838 := by
    unfold C
    simp [show (2359296 * k + 1223279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3669838) = 3538944 * k + 1834919 := by
    unfold C
    simp [show (7077888 * k + 3669838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1834919) = 10616832 * k + 5504758 := by
    unfold C
    simp [show (3538944 * k + 1834919) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5504758) = 5308416 * k + 2752379 := by
    unfold C
    simp [show (10616832 * k + 5504758) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2752379) = 15925248 * k + 8257138 := by
    unfold C
    simp [show (5308416 * k + 2752379) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8257138) = 7962624 * k + 4128569 := by
    unfold C
    simp [show (15925248 * k + 8257138) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4128569) = 23887872 * k + 12385708 := by
    unfold C
    simp [show (7962624 * k + 4128569) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12385708) = 11943936 * k + 6192854 := by
    unfold C
    simp [show (23887872 * k + 12385708) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6192854) = 5971968 * k + 3096427 := by
    unfold C
    simp [show (11943936 * k + 6192854) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3096427) = 17915904 * k + 9289282 := by
    unfold C
    simp [show (5971968 * k + 3096427) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9289282) = 8957952 * k + 4644641 := by
    unfold C
    simp [show (17915904 * k + 9289282) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4644641) = 26873856 * k + 13933924 := by
    unfold C
    simp [show (8957952 * k + 4644641) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13933924) = 13436928 * k + 6966962 := by
    unfold C
    simp [show (26873856 * k + 13933924) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6966962) = 6718464 * k + 3483481 := by
    unfold C
    simp [show (13436928 * k + 6966962) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3483481) = 20155392 * k + 10450444 := by
    unfold C
    simp [show (6718464 * k + 3483481) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10450444) = 10077696 * k + 5225222 := by
    unfold C
    simp [show (20155392 * k + 10450444) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5225222) = 5038848 * k + 2612611 := by
    unfold C
    simp [show (10077696 * k + 5225222) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2612611) = 15116544 * k + 7837834 := by
    unfold C
    simp [show (5038848 * k + 2612611) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7837834) = 7558272 * k + 3918917 := by
    unfold C
    simp [show (15116544 * k + 7837834) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3918917) = 22674816 * k + 11756752 := by
    unfold C
    simp [show (7558272 * k + 3918917) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11756752) = 11337408 * k + 5878376 := by
    unfold C
    simp [show (22674816 * k + 11756752) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5878376) = 5668704 * k + 2939188 := by
    unfold C
    simp [show (11337408 * k + 5878376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2939188) = 2834352 * k + 1469594 := by
    unfold C
    simp [show (5668704 * k + 2939188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1469594) = 1417176 * k + 734797 := by
    unfold C
    simp [show (2834352 * k + 1469594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 734797) = 4251528 * k + 2204392 := by
    unfold C
    simp [show (1417176 * k + 734797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2204392) = 2125764 * k + 1102196 := by
    unfold C
    simp [show (4251528 * k + 2204392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1102196) = 1062882 * k + 551098 := by
    unfold C
    simp [show (2125764 * k + 1102196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 551098) = 531441 * k + 275549 := by
    unfold C
    simp [show (1062882 * k + 551098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 543679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 543679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_546271 : ∀ k : Nat,
    iterate (1048576 * k + 546271) 32 = 531441 * k + 276863 ∧
      531441 * k + 276863 < 1048576 * k + 546271 := by
  intro k
  have h1 : C (1048576 * k + 546271) = 3145728 * k + 1638814 := by
    unfold C
    simp [show (1048576 * k + 546271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1638814) = 1572864 * k + 819407 := by
    unfold C
    simp [show (3145728 * k + 1638814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 819407) = 4718592 * k + 2458222 := by
    unfold C
    simp [show (1572864 * k + 819407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2458222) = 2359296 * k + 1229111 := by
    unfold C
    simp [show (4718592 * k + 2458222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1229111) = 7077888 * k + 3687334 := by
    unfold C
    simp [show (2359296 * k + 1229111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3687334) = 3538944 * k + 1843667 := by
    unfold C
    simp [show (7077888 * k + 3687334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1843667) = 10616832 * k + 5531002 := by
    unfold C
    simp [show (3538944 * k + 1843667) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5531002) = 5308416 * k + 2765501 := by
    unfold C
    simp [show (10616832 * k + 5531002) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2765501) = 15925248 * k + 8296504 := by
    unfold C
    simp [show (5308416 * k + 2765501) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8296504) = 7962624 * k + 4148252 := by
    unfold C
    simp [show (15925248 * k + 8296504) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4148252) = 3981312 * k + 2074126 := by
    unfold C
    simp [show (7962624 * k + 4148252) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2074126) = 1990656 * k + 1037063 := by
    unfold C
    simp [show (3981312 * k + 2074126) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1037063) = 5971968 * k + 3111190 := by
    unfold C
    simp [show (1990656 * k + 1037063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3111190) = 2985984 * k + 1555595 := by
    unfold C
    simp [show (5971968 * k + 3111190) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1555595) = 8957952 * k + 4666786 := by
    unfold C
    simp [show (2985984 * k + 1555595) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4666786) = 4478976 * k + 2333393 := by
    unfold C
    simp [show (8957952 * k + 4666786) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2333393) = 13436928 * k + 7000180 := by
    unfold C
    simp [show (4478976 * k + 2333393) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7000180) = 6718464 * k + 3500090 := by
    unfold C
    simp [show (13436928 * k + 7000180) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3500090) = 3359232 * k + 1750045 := by
    unfold C
    simp [show (6718464 * k + 3500090) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1750045) = 10077696 * k + 5250136 := by
    unfold C
    simp [show (3359232 * k + 1750045) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5250136) = 5038848 * k + 2625068 := by
    unfold C
    simp [show (10077696 * k + 5250136) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2625068) = 2519424 * k + 1312534 := by
    unfold C
    simp [show (5038848 * k + 2625068) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1312534) = 1259712 * k + 656267 := by
    unfold C
    simp [show (2519424 * k + 1312534) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 656267) = 3779136 * k + 1968802 := by
    unfold C
    simp [show (1259712 * k + 656267) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1968802) = 1889568 * k + 984401 := by
    unfold C
    simp [show (3779136 * k + 1968802) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 984401) = 5668704 * k + 2953204 := by
    unfold C
    simp [show (1889568 * k + 984401) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2953204) = 2834352 * k + 1476602 := by
    unfold C
    simp [show (5668704 * k + 2953204) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1476602) = 1417176 * k + 738301 := by
    unfold C
    simp [show (2834352 * k + 1476602) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 738301) = 4251528 * k + 2214904 := by
    unfold C
    simp [show (1417176 * k + 738301) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2214904) = 2125764 * k + 1107452 := by
    unfold C
    simp [show (4251528 * k + 2214904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1107452) = 1062882 * k + 553726 := by
    unfold C
    simp [show (2125764 * k + 1107452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 553726) = 531441 * k + 276863 := by
    unfold C
    simp [show (1062882 * k + 553726) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 546271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 546271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_546751 : ∀ k : Nat,
    iterate (1048576 * k + 546751) 32 = 531441 * k + 277106 ∧
      531441 * k + 277106 < 1048576 * k + 546751 := by
  intro k
  have h1 : C (1048576 * k + 546751) = 3145728 * k + 1640254 := by
    unfold C
    simp [show (1048576 * k + 546751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1640254) = 1572864 * k + 820127 := by
    unfold C
    simp [show (3145728 * k + 1640254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 820127) = 4718592 * k + 2460382 := by
    unfold C
    simp [show (1572864 * k + 820127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2460382) = 2359296 * k + 1230191 := by
    unfold C
    simp [show (4718592 * k + 2460382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1230191) = 7077888 * k + 3690574 := by
    unfold C
    simp [show (2359296 * k + 1230191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3690574) = 3538944 * k + 1845287 := by
    unfold C
    simp [show (7077888 * k + 3690574) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1845287) = 10616832 * k + 5535862 := by
    unfold C
    simp [show (3538944 * k + 1845287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5535862) = 5308416 * k + 2767931 := by
    unfold C
    simp [show (10616832 * k + 5535862) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2767931) = 15925248 * k + 8303794 := by
    unfold C
    simp [show (5308416 * k + 2767931) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8303794) = 7962624 * k + 4151897 := by
    unfold C
    simp [show (15925248 * k + 8303794) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4151897) = 23887872 * k + 12455692 := by
    unfold C
    simp [show (7962624 * k + 4151897) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12455692) = 11943936 * k + 6227846 := by
    unfold C
    simp [show (23887872 * k + 12455692) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6227846) = 5971968 * k + 3113923 := by
    unfold C
    simp [show (11943936 * k + 6227846) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3113923) = 17915904 * k + 9341770 := by
    unfold C
    simp [show (5971968 * k + 3113923) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9341770) = 8957952 * k + 4670885 := by
    unfold C
    simp [show (17915904 * k + 9341770) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4670885) = 26873856 * k + 14012656 := by
    unfold C
    simp [show (8957952 * k + 4670885) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14012656) = 13436928 * k + 7006328 := by
    unfold C
    simp [show (26873856 * k + 14012656) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7006328) = 6718464 * k + 3503164 := by
    unfold C
    simp [show (13436928 * k + 7006328) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3503164) = 3359232 * k + 1751582 := by
    unfold C
    simp [show (6718464 * k + 3503164) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1751582) = 1679616 * k + 875791 := by
    unfold C
    simp [show (3359232 * k + 1751582) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 875791) = 5038848 * k + 2627374 := by
    unfold C
    simp [show (1679616 * k + 875791) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2627374) = 2519424 * k + 1313687 := by
    unfold C
    simp [show (5038848 * k + 2627374) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1313687) = 7558272 * k + 3941062 := by
    unfold C
    simp [show (2519424 * k + 1313687) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3941062) = 3779136 * k + 1970531 := by
    unfold C
    simp [show (7558272 * k + 3941062) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1970531) = 11337408 * k + 5911594 := by
    unfold C
    simp [show (3779136 * k + 1970531) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5911594) = 5668704 * k + 2955797 := by
    unfold C
    simp [show (11337408 * k + 5911594) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2955797) = 17006112 * k + 8867392 := by
    unfold C
    simp [show (5668704 * k + 2955797) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8867392) = 8503056 * k + 4433696 := by
    unfold C
    simp [show (17006112 * k + 8867392) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4433696) = 4251528 * k + 2216848 := by
    unfold C
    simp [show (8503056 * k + 4433696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2216848) = 2125764 * k + 1108424 := by
    unfold C
    simp [show (4251528 * k + 2216848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1108424) = 1062882 * k + 554212 := by
    unfold C
    simp [show (2125764 * k + 1108424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 554212) = 531441 * k + 277106 := by
    unfold C
    simp [show (1062882 * k + 554212) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 546751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 546751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_546879 : ∀ k : Nat,
    iterate (1048576 * k + 546879) 32 = 531441 * k + 277171 ∧
      531441 * k + 277171 < 1048576 * k + 546879 := by
  intro k
  have h1 : C (1048576 * k + 546879) = 3145728 * k + 1640638 := by
    unfold C
    simp [show (1048576 * k + 546879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1640638) = 1572864 * k + 820319 := by
    unfold C
    simp [show (3145728 * k + 1640638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 820319) = 4718592 * k + 2460958 := by
    unfold C
    simp [show (1572864 * k + 820319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2460958) = 2359296 * k + 1230479 := by
    unfold C
    simp [show (4718592 * k + 2460958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1230479) = 7077888 * k + 3691438 := by
    unfold C
    simp [show (2359296 * k + 1230479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3691438) = 3538944 * k + 1845719 := by
    unfold C
    simp [show (7077888 * k + 3691438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1845719) = 10616832 * k + 5537158 := by
    unfold C
    simp [show (3538944 * k + 1845719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5537158) = 5308416 * k + 2768579 := by
    unfold C
    simp [show (10616832 * k + 5537158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2768579) = 15925248 * k + 8305738 := by
    unfold C
    simp [show (5308416 * k + 2768579) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8305738) = 7962624 * k + 4152869 := by
    unfold C
    simp [show (15925248 * k + 8305738) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4152869) = 23887872 * k + 12458608 := by
    unfold C
    simp [show (7962624 * k + 4152869) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12458608) = 11943936 * k + 6229304 := by
    unfold C
    simp [show (23887872 * k + 12458608) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6229304) = 5971968 * k + 3114652 := by
    unfold C
    simp [show (11943936 * k + 6229304) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3114652) = 2985984 * k + 1557326 := by
    unfold C
    simp [show (5971968 * k + 3114652) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1557326) = 1492992 * k + 778663 := by
    unfold C
    simp [show (2985984 * k + 1557326) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 778663) = 4478976 * k + 2335990 := by
    unfold C
    simp [show (1492992 * k + 778663) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2335990) = 2239488 * k + 1167995 := by
    unfold C
    simp [show (4478976 * k + 2335990) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1167995) = 6718464 * k + 3503986 := by
    unfold C
    simp [show (2239488 * k + 1167995) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3503986) = 3359232 * k + 1751993 := by
    unfold C
    simp [show (6718464 * k + 3503986) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1751993) = 10077696 * k + 5255980 := by
    unfold C
    simp [show (3359232 * k + 1751993) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5255980) = 5038848 * k + 2627990 := by
    unfold C
    simp [show (10077696 * k + 5255980) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2627990) = 2519424 * k + 1313995 := by
    unfold C
    simp [show (5038848 * k + 2627990) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1313995) = 7558272 * k + 3941986 := by
    unfold C
    simp [show (2519424 * k + 1313995) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3941986) = 3779136 * k + 1970993 := by
    unfold C
    simp [show (7558272 * k + 3941986) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1970993) = 11337408 * k + 5912980 := by
    unfold C
    simp [show (3779136 * k + 1970993) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5912980) = 5668704 * k + 2956490 := by
    unfold C
    simp [show (11337408 * k + 5912980) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2956490) = 2834352 * k + 1478245 := by
    unfold C
    simp [show (5668704 * k + 2956490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1478245) = 8503056 * k + 4434736 := by
    unfold C
    simp [show (2834352 * k + 1478245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4434736) = 4251528 * k + 2217368 := by
    unfold C
    simp [show (8503056 * k + 4434736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2217368) = 2125764 * k + 1108684 := by
    unfold C
    simp [show (4251528 * k + 2217368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1108684) = 1062882 * k + 554342 := by
    unfold C
    simp [show (2125764 * k + 1108684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 554342) = 531441 * k + 277171 := by
    unfold C
    simp [show (1062882 * k + 554342) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 546879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 546879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_547023 : ∀ k : Nat,
    iterate (1048576 * k + 547023) 32 = 531441 * k + 277244 ∧
      531441 * k + 277244 < 1048576 * k + 547023 := by
  intro k
  have h1 : C (1048576 * k + 547023) = 3145728 * k + 1641070 := by
    unfold C
    simp [show (1048576 * k + 547023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1641070) = 1572864 * k + 820535 := by
    unfold C
    simp [show (3145728 * k + 1641070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 820535) = 4718592 * k + 2461606 := by
    unfold C
    simp [show (1572864 * k + 820535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2461606) = 2359296 * k + 1230803 := by
    unfold C
    simp [show (4718592 * k + 2461606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1230803) = 7077888 * k + 3692410 := by
    unfold C
    simp [show (2359296 * k + 1230803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3692410) = 3538944 * k + 1846205 := by
    unfold C
    simp [show (7077888 * k + 3692410) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1846205) = 10616832 * k + 5538616 := by
    unfold C
    simp [show (3538944 * k + 1846205) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5538616) = 5308416 * k + 2769308 := by
    unfold C
    simp [show (10616832 * k + 5538616) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2769308) = 2654208 * k + 1384654 := by
    unfold C
    simp [show (5308416 * k + 2769308) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1384654) = 1327104 * k + 692327 := by
    unfold C
    simp [show (2654208 * k + 1384654) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 692327) = 3981312 * k + 2076982 := by
    unfold C
    simp [show (1327104 * k + 692327) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2076982) = 1990656 * k + 1038491 := by
    unfold C
    simp [show (3981312 * k + 2076982) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1038491) = 5971968 * k + 3115474 := by
    unfold C
    simp [show (1990656 * k + 1038491) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3115474) = 2985984 * k + 1557737 := by
    unfold C
    simp [show (5971968 * k + 3115474) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1557737) = 8957952 * k + 4673212 := by
    unfold C
    simp [show (2985984 * k + 1557737) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4673212) = 4478976 * k + 2336606 := by
    unfold C
    simp [show (8957952 * k + 4673212) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2336606) = 2239488 * k + 1168303 := by
    unfold C
    simp [show (4478976 * k + 2336606) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1168303) = 6718464 * k + 3504910 := by
    unfold C
    simp [show (2239488 * k + 1168303) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3504910) = 3359232 * k + 1752455 := by
    unfold C
    simp [show (6718464 * k + 3504910) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1752455) = 10077696 * k + 5257366 := by
    unfold C
    simp [show (3359232 * k + 1752455) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5257366) = 5038848 * k + 2628683 := by
    unfold C
    simp [show (10077696 * k + 5257366) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2628683) = 15116544 * k + 7886050 := by
    unfold C
    simp [show (5038848 * k + 2628683) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7886050) = 7558272 * k + 3943025 := by
    unfold C
    simp [show (15116544 * k + 7886050) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3943025) = 22674816 * k + 11829076 := by
    unfold C
    simp [show (7558272 * k + 3943025) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11829076) = 11337408 * k + 5914538 := by
    unfold C
    simp [show (22674816 * k + 11829076) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5914538) = 5668704 * k + 2957269 := by
    unfold C
    simp [show (11337408 * k + 5914538) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2957269) = 17006112 * k + 8871808 := by
    unfold C
    simp [show (5668704 * k + 2957269) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8871808) = 8503056 * k + 4435904 := by
    unfold C
    simp [show (17006112 * k + 8871808) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4435904) = 4251528 * k + 2217952 := by
    unfold C
    simp [show (8503056 * k + 4435904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2217952) = 2125764 * k + 1108976 := by
    unfold C
    simp [show (4251528 * k + 2217952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1108976) = 1062882 * k + 554488 := by
    unfold C
    simp [show (2125764 * k + 1108976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 554488) = 531441 * k + 277244 := by
    unfold C
    simp [show (1062882 * k + 554488) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 547023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 547023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_547775 : ∀ k : Nat,
    iterate (1048576 * k + 547775) 32 = 531441 * k + 277625 ∧
      531441 * k + 277625 < 1048576 * k + 547775 := by
  intro k
  have h1 : C (1048576 * k + 547775) = 3145728 * k + 1643326 := by
    unfold C
    simp [show (1048576 * k + 547775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1643326) = 1572864 * k + 821663 := by
    unfold C
    simp [show (3145728 * k + 1643326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 821663) = 4718592 * k + 2464990 := by
    unfold C
    simp [show (1572864 * k + 821663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2464990) = 2359296 * k + 1232495 := by
    unfold C
    simp [show (4718592 * k + 2464990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1232495) = 7077888 * k + 3697486 := by
    unfold C
    simp [show (2359296 * k + 1232495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3697486) = 3538944 * k + 1848743 := by
    unfold C
    simp [show (7077888 * k + 3697486) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1848743) = 10616832 * k + 5546230 := by
    unfold C
    simp [show (3538944 * k + 1848743) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5546230) = 5308416 * k + 2773115 := by
    unfold C
    simp [show (10616832 * k + 5546230) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2773115) = 15925248 * k + 8319346 := by
    unfold C
    simp [show (5308416 * k + 2773115) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8319346) = 7962624 * k + 4159673 := by
    unfold C
    simp [show (15925248 * k + 8319346) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4159673) = 23887872 * k + 12479020 := by
    unfold C
    simp [show (7962624 * k + 4159673) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12479020) = 11943936 * k + 6239510 := by
    unfold C
    simp [show (23887872 * k + 12479020) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6239510) = 5971968 * k + 3119755 := by
    unfold C
    simp [show (11943936 * k + 6239510) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3119755) = 17915904 * k + 9359266 := by
    unfold C
    simp [show (5971968 * k + 3119755) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9359266) = 8957952 * k + 4679633 := by
    unfold C
    simp [show (17915904 * k + 9359266) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4679633) = 26873856 * k + 14038900 := by
    unfold C
    simp [show (8957952 * k + 4679633) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14038900) = 13436928 * k + 7019450 := by
    unfold C
    simp [show (26873856 * k + 14038900) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7019450) = 6718464 * k + 3509725 := by
    unfold C
    simp [show (13436928 * k + 7019450) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3509725) = 20155392 * k + 10529176 := by
    unfold C
    simp [show (6718464 * k + 3509725) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10529176) = 10077696 * k + 5264588 := by
    unfold C
    simp [show (20155392 * k + 10529176) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5264588) = 5038848 * k + 2632294 := by
    unfold C
    simp [show (10077696 * k + 5264588) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2632294) = 2519424 * k + 1316147 := by
    unfold C
    simp [show (5038848 * k + 2632294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1316147) = 7558272 * k + 3948442 := by
    unfold C
    simp [show (2519424 * k + 1316147) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3948442) = 3779136 * k + 1974221 := by
    unfold C
    simp [show (7558272 * k + 3948442) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1974221) = 11337408 * k + 5922664 := by
    unfold C
    simp [show (3779136 * k + 1974221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5922664) = 5668704 * k + 2961332 := by
    unfold C
    simp [show (11337408 * k + 5922664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2961332) = 2834352 * k + 1480666 := by
    unfold C
    simp [show (5668704 * k + 2961332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1480666) = 1417176 * k + 740333 := by
    unfold C
    simp [show (2834352 * k + 1480666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 740333) = 4251528 * k + 2221000 := by
    unfold C
    simp [show (1417176 * k + 740333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2221000) = 2125764 * k + 1110500 := by
    unfold C
    simp [show (4251528 * k + 2221000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1110500) = 1062882 * k + 555250 := by
    unfold C
    simp [show (2125764 * k + 1110500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 555250) = 531441 * k + 277625 := by
    unfold C
    simp [show (1062882 * k + 555250) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 547775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 547775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_548455 : ∀ k : Nat,
    iterate (1048576 * k + 548455) 32 = 531441 * k + 277970 ∧
      531441 * k + 277970 < 1048576 * k + 548455 := by
  intro k
  have h1 : C (1048576 * k + 548455) = 3145728 * k + 1645366 := by
    unfold C
    simp [show (1048576 * k + 548455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1645366) = 1572864 * k + 822683 := by
    unfold C
    simp [show (3145728 * k + 1645366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 822683) = 4718592 * k + 2468050 := by
    unfold C
    simp [show (1572864 * k + 822683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2468050) = 2359296 * k + 1234025 := by
    unfold C
    simp [show (4718592 * k + 2468050) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1234025) = 7077888 * k + 3702076 := by
    unfold C
    simp [show (2359296 * k + 1234025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3702076) = 3538944 * k + 1851038 := by
    unfold C
    simp [show (7077888 * k + 3702076) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1851038) = 1769472 * k + 925519 := by
    unfold C
    simp [show (3538944 * k + 1851038) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 925519) = 5308416 * k + 2776558 := by
    unfold C
    simp [show (1769472 * k + 925519) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2776558) = 2654208 * k + 1388279 := by
    unfold C
    simp [show (5308416 * k + 2776558) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1388279) = 7962624 * k + 4164838 := by
    unfold C
    simp [show (2654208 * k + 1388279) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4164838) = 3981312 * k + 2082419 := by
    unfold C
    simp [show (7962624 * k + 4164838) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2082419) = 11943936 * k + 6247258 := by
    unfold C
    simp [show (3981312 * k + 2082419) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6247258) = 5971968 * k + 3123629 := by
    unfold C
    simp [show (11943936 * k + 6247258) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3123629) = 17915904 * k + 9370888 := by
    unfold C
    simp [show (5971968 * k + 3123629) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9370888) = 8957952 * k + 4685444 := by
    unfold C
    simp [show (17915904 * k + 9370888) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4685444) = 4478976 * k + 2342722 := by
    unfold C
    simp [show (8957952 * k + 4685444) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2342722) = 2239488 * k + 1171361 := by
    unfold C
    simp [show (4478976 * k + 2342722) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1171361) = 6718464 * k + 3514084 := by
    unfold C
    simp [show (2239488 * k + 1171361) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3514084) = 3359232 * k + 1757042 := by
    unfold C
    simp [show (6718464 * k + 3514084) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1757042) = 1679616 * k + 878521 := by
    unfold C
    simp [show (3359232 * k + 1757042) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 878521) = 5038848 * k + 2635564 := by
    unfold C
    simp [show (1679616 * k + 878521) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2635564) = 2519424 * k + 1317782 := by
    unfold C
    simp [show (5038848 * k + 2635564) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1317782) = 1259712 * k + 658891 := by
    unfold C
    simp [show (2519424 * k + 1317782) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 658891) = 3779136 * k + 1976674 := by
    unfold C
    simp [show (1259712 * k + 658891) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1976674) = 1889568 * k + 988337 := by
    unfold C
    simp [show (3779136 * k + 1976674) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 988337) = 5668704 * k + 2965012 := by
    unfold C
    simp [show (1889568 * k + 988337) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2965012) = 2834352 * k + 1482506 := by
    unfold C
    simp [show (5668704 * k + 2965012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1482506) = 1417176 * k + 741253 := by
    unfold C
    simp [show (2834352 * k + 1482506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 741253) = 4251528 * k + 2223760 := by
    unfold C
    simp [show (1417176 * k + 741253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2223760) = 2125764 * k + 1111880 := by
    unfold C
    simp [show (4251528 * k + 2223760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1111880) = 1062882 * k + 555940 := by
    unfold C
    simp [show (2125764 * k + 1111880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 555940) = 531441 * k + 277970 := by
    unfold C
    simp [show (1062882 * k + 555940) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 548455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 548455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_549223 : ∀ k : Nat,
    iterate (1048576 * k + 549223) 32 = 531441 * k + 278359 ∧
      531441 * k + 278359 < 1048576 * k + 549223 := by
  intro k
  have h1 : C (1048576 * k + 549223) = 3145728 * k + 1647670 := by
    unfold C
    simp [show (1048576 * k + 549223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1647670) = 1572864 * k + 823835 := by
    unfold C
    simp [show (3145728 * k + 1647670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 823835) = 4718592 * k + 2471506 := by
    unfold C
    simp [show (1572864 * k + 823835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2471506) = 2359296 * k + 1235753 := by
    unfold C
    simp [show (4718592 * k + 2471506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1235753) = 7077888 * k + 3707260 := by
    unfold C
    simp [show (2359296 * k + 1235753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3707260) = 3538944 * k + 1853630 := by
    unfold C
    simp [show (7077888 * k + 3707260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1853630) = 1769472 * k + 926815 := by
    unfold C
    simp [show (3538944 * k + 1853630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 926815) = 5308416 * k + 2780446 := by
    unfold C
    simp [show (1769472 * k + 926815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2780446) = 2654208 * k + 1390223 := by
    unfold C
    simp [show (5308416 * k + 2780446) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1390223) = 7962624 * k + 4170670 := by
    unfold C
    simp [show (2654208 * k + 1390223) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4170670) = 3981312 * k + 2085335 := by
    unfold C
    simp [show (7962624 * k + 4170670) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2085335) = 11943936 * k + 6256006 := by
    unfold C
    simp [show (3981312 * k + 2085335) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6256006) = 5971968 * k + 3128003 := by
    unfold C
    simp [show (11943936 * k + 6256006) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3128003) = 17915904 * k + 9384010 := by
    unfold C
    simp [show (5971968 * k + 3128003) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9384010) = 8957952 * k + 4692005 := by
    unfold C
    simp [show (17915904 * k + 9384010) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4692005) = 26873856 * k + 14076016 := by
    unfold C
    simp [show (8957952 * k + 4692005) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14076016) = 13436928 * k + 7038008 := by
    unfold C
    simp [show (26873856 * k + 14076016) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7038008) = 6718464 * k + 3519004 := by
    unfold C
    simp [show (13436928 * k + 7038008) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3519004) = 3359232 * k + 1759502 := by
    unfold C
    simp [show (6718464 * k + 3519004) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1759502) = 1679616 * k + 879751 := by
    unfold C
    simp [show (3359232 * k + 1759502) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 879751) = 5038848 * k + 2639254 := by
    unfold C
    simp [show (1679616 * k + 879751) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2639254) = 2519424 * k + 1319627 := by
    unfold C
    simp [show (5038848 * k + 2639254) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1319627) = 7558272 * k + 3958882 := by
    unfold C
    simp [show (2519424 * k + 1319627) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3958882) = 3779136 * k + 1979441 := by
    unfold C
    simp [show (7558272 * k + 3958882) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1979441) = 11337408 * k + 5938324 := by
    unfold C
    simp [show (3779136 * k + 1979441) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5938324) = 5668704 * k + 2969162 := by
    unfold C
    simp [show (11337408 * k + 5938324) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2969162) = 2834352 * k + 1484581 := by
    unfold C
    simp [show (5668704 * k + 2969162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1484581) = 8503056 * k + 4453744 := by
    unfold C
    simp [show (2834352 * k + 1484581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4453744) = 4251528 * k + 2226872 := by
    unfold C
    simp [show (8503056 * k + 4453744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2226872) = 2125764 * k + 1113436 := by
    unfold C
    simp [show (4251528 * k + 2226872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1113436) = 1062882 * k + 556718 := by
    unfold C
    simp [show (2125764 * k + 1113436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 556718) = 531441 * k + 278359 := by
    unfold C
    simp [show (1062882 * k + 556718) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 549223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 549223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_549467 : ∀ k : Nat,
    iterate (1048576 * k + 549467) 32 = 531441 * k + 278483 ∧
      531441 * k + 278483 < 1048576 * k + 549467 := by
  intro k
  have h1 : C (1048576 * k + 549467) = 3145728 * k + 1648402 := by
    unfold C
    simp [show (1048576 * k + 549467) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1648402) = 1572864 * k + 824201 := by
    unfold C
    simp [show (3145728 * k + 1648402) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 824201) = 4718592 * k + 2472604 := by
    unfold C
    simp [show (1572864 * k + 824201) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2472604) = 2359296 * k + 1236302 := by
    unfold C
    simp [show (4718592 * k + 2472604) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1236302) = 1179648 * k + 618151 := by
    unfold C
    simp [show (2359296 * k + 1236302) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 618151) = 3538944 * k + 1854454 := by
    unfold C
    simp [show (1179648 * k + 618151) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1854454) = 1769472 * k + 927227 := by
    unfold C
    simp [show (3538944 * k + 1854454) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 927227) = 5308416 * k + 2781682 := by
    unfold C
    simp [show (1769472 * k + 927227) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2781682) = 2654208 * k + 1390841 := by
    unfold C
    simp [show (5308416 * k + 2781682) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1390841) = 7962624 * k + 4172524 := by
    unfold C
    simp [show (2654208 * k + 1390841) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4172524) = 3981312 * k + 2086262 := by
    unfold C
    simp [show (7962624 * k + 4172524) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2086262) = 1990656 * k + 1043131 := by
    unfold C
    simp [show (3981312 * k + 2086262) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1043131) = 5971968 * k + 3129394 := by
    unfold C
    simp [show (1990656 * k + 1043131) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3129394) = 2985984 * k + 1564697 := by
    unfold C
    simp [show (5971968 * k + 3129394) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1564697) = 8957952 * k + 4694092 := by
    unfold C
    simp [show (2985984 * k + 1564697) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4694092) = 4478976 * k + 2347046 := by
    unfold C
    simp [show (8957952 * k + 4694092) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2347046) = 2239488 * k + 1173523 := by
    unfold C
    simp [show (4478976 * k + 2347046) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1173523) = 6718464 * k + 3520570 := by
    unfold C
    simp [show (2239488 * k + 1173523) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3520570) = 3359232 * k + 1760285 := by
    unfold C
    simp [show (6718464 * k + 3520570) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1760285) = 10077696 * k + 5280856 := by
    unfold C
    simp [show (3359232 * k + 1760285) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5280856) = 5038848 * k + 2640428 := by
    unfold C
    simp [show (10077696 * k + 5280856) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2640428) = 2519424 * k + 1320214 := by
    unfold C
    simp [show (5038848 * k + 2640428) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1320214) = 1259712 * k + 660107 := by
    unfold C
    simp [show (2519424 * k + 1320214) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 660107) = 3779136 * k + 1980322 := by
    unfold C
    simp [show (1259712 * k + 660107) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1980322) = 1889568 * k + 990161 := by
    unfold C
    simp [show (3779136 * k + 1980322) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 990161) = 5668704 * k + 2970484 := by
    unfold C
    simp [show (1889568 * k + 990161) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2970484) = 2834352 * k + 1485242 := by
    unfold C
    simp [show (5668704 * k + 2970484) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1485242) = 1417176 * k + 742621 := by
    unfold C
    simp [show (2834352 * k + 1485242) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 742621) = 4251528 * k + 2227864 := by
    unfold C
    simp [show (1417176 * k + 742621) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2227864) = 2125764 * k + 1113932 := by
    unfold C
    simp [show (4251528 * k + 2227864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1113932) = 1062882 * k + 556966 := by
    unfold C
    simp [show (2125764 * k + 1113932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 556966) = 531441 * k + 278483 := by
    unfold C
    simp [show (1062882 * k + 556966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 549467) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 549467)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_549627 : ∀ k : Nat,
    iterate (1048576 * k + 549627) 32 = 531441 * k + 278564 ∧
      531441 * k + 278564 < 1048576 * k + 549627 := by
  intro k
  have h1 : C (1048576 * k + 549627) = 3145728 * k + 1648882 := by
    unfold C
    simp [show (1048576 * k + 549627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1648882) = 1572864 * k + 824441 := by
    unfold C
    simp [show (3145728 * k + 1648882) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 824441) = 4718592 * k + 2473324 := by
    unfold C
    simp [show (1572864 * k + 824441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2473324) = 2359296 * k + 1236662 := by
    unfold C
    simp [show (4718592 * k + 2473324) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1236662) = 1179648 * k + 618331 := by
    unfold C
    simp [show (2359296 * k + 1236662) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 618331) = 3538944 * k + 1854994 := by
    unfold C
    simp [show (1179648 * k + 618331) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1854994) = 1769472 * k + 927497 := by
    unfold C
    simp [show (3538944 * k + 1854994) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 927497) = 5308416 * k + 2782492 := by
    unfold C
    simp [show (1769472 * k + 927497) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2782492) = 2654208 * k + 1391246 := by
    unfold C
    simp [show (5308416 * k + 2782492) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1391246) = 1327104 * k + 695623 := by
    unfold C
    simp [show (2654208 * k + 1391246) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 695623) = 3981312 * k + 2086870 := by
    unfold C
    simp [show (1327104 * k + 695623) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2086870) = 1990656 * k + 1043435 := by
    unfold C
    simp [show (3981312 * k + 2086870) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1043435) = 5971968 * k + 3130306 := by
    unfold C
    simp [show (1990656 * k + 1043435) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3130306) = 2985984 * k + 1565153 := by
    unfold C
    simp [show (5971968 * k + 3130306) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1565153) = 8957952 * k + 4695460 := by
    unfold C
    simp [show (2985984 * k + 1565153) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4695460) = 4478976 * k + 2347730 := by
    unfold C
    simp [show (8957952 * k + 4695460) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2347730) = 2239488 * k + 1173865 := by
    unfold C
    simp [show (4478976 * k + 2347730) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1173865) = 6718464 * k + 3521596 := by
    unfold C
    simp [show (2239488 * k + 1173865) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3521596) = 3359232 * k + 1760798 := by
    unfold C
    simp [show (6718464 * k + 3521596) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1760798) = 1679616 * k + 880399 := by
    unfold C
    simp [show (3359232 * k + 1760798) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 880399) = 5038848 * k + 2641198 := by
    unfold C
    simp [show (1679616 * k + 880399) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2641198) = 2519424 * k + 1320599 := by
    unfold C
    simp [show (5038848 * k + 2641198) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1320599) = 7558272 * k + 3961798 := by
    unfold C
    simp [show (2519424 * k + 1320599) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3961798) = 3779136 * k + 1980899 := by
    unfold C
    simp [show (7558272 * k + 3961798) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1980899) = 11337408 * k + 5942698 := by
    unfold C
    simp [show (3779136 * k + 1980899) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5942698) = 5668704 * k + 2971349 := by
    unfold C
    simp [show (11337408 * k + 5942698) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2971349) = 17006112 * k + 8914048 := by
    unfold C
    simp [show (5668704 * k + 2971349) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8914048) = 8503056 * k + 4457024 := by
    unfold C
    simp [show (17006112 * k + 8914048) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4457024) = 4251528 * k + 2228512 := by
    unfold C
    simp [show (8503056 * k + 4457024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2228512) = 2125764 * k + 1114256 := by
    unfold C
    simp [show (4251528 * k + 2228512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1114256) = 1062882 * k + 557128 := by
    unfold C
    simp [show (2125764 * k + 1114256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 557128) = 531441 * k + 278564 := by
    unfold C
    simp [show (1062882 * k + 557128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 549627) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 549627)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_550143 : ∀ k : Nat,
    iterate (1048576 * k + 550143) 32 = 531441 * k + 278825 ∧
      531441 * k + 278825 < 1048576 * k + 550143 := by
  intro k
  have h1 : C (1048576 * k + 550143) = 3145728 * k + 1650430 := by
    unfold C
    simp [show (1048576 * k + 550143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1650430) = 1572864 * k + 825215 := by
    unfold C
    simp [show (3145728 * k + 1650430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 825215) = 4718592 * k + 2475646 := by
    unfold C
    simp [show (1572864 * k + 825215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2475646) = 2359296 * k + 1237823 := by
    unfold C
    simp [show (4718592 * k + 2475646) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1237823) = 7077888 * k + 3713470 := by
    unfold C
    simp [show (2359296 * k + 1237823) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3713470) = 3538944 * k + 1856735 := by
    unfold C
    simp [show (7077888 * k + 3713470) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1856735) = 10616832 * k + 5570206 := by
    unfold C
    simp [show (3538944 * k + 1856735) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5570206) = 5308416 * k + 2785103 := by
    unfold C
    simp [show (10616832 * k + 5570206) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2785103) = 15925248 * k + 8355310 := by
    unfold C
    simp [show (5308416 * k + 2785103) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8355310) = 7962624 * k + 4177655 := by
    unfold C
    simp [show (15925248 * k + 8355310) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4177655) = 23887872 * k + 12532966 := by
    unfold C
    simp [show (7962624 * k + 4177655) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12532966) = 11943936 * k + 6266483 := by
    unfold C
    simp [show (23887872 * k + 12532966) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6266483) = 35831808 * k + 18799450 := by
    unfold C
    simp [show (11943936 * k + 6266483) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 18799450) = 17915904 * k + 9399725 := by
    unfold C
    simp [show (35831808 * k + 18799450) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9399725) = 53747712 * k + 28199176 := by
    unfold C
    simp [show (17915904 * k + 9399725) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 28199176) = 26873856 * k + 14099588 := by
    unfold C
    simp [show (53747712 * k + 28199176) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 14099588) = 13436928 * k + 7049794 := by
    unfold C
    simp [show (26873856 * k + 14099588) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7049794) = 6718464 * k + 3524897 := by
    unfold C
    simp [show (13436928 * k + 7049794) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3524897) = 20155392 * k + 10574692 := by
    unfold C
    simp [show (6718464 * k + 3524897) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10574692) = 10077696 * k + 5287346 := by
    unfold C
    simp [show (20155392 * k + 10574692) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5287346) = 5038848 * k + 2643673 := by
    unfold C
    simp [show (10077696 * k + 5287346) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2643673) = 15116544 * k + 7931020 := by
    unfold C
    simp [show (5038848 * k + 2643673) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7931020) = 7558272 * k + 3965510 := by
    unfold C
    simp [show (15116544 * k + 7931020) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3965510) = 3779136 * k + 1982755 := by
    unfold C
    simp [show (7558272 * k + 3965510) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1982755) = 11337408 * k + 5948266 := by
    unfold C
    simp [show (3779136 * k + 1982755) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5948266) = 5668704 * k + 2974133 := by
    unfold C
    simp [show (11337408 * k + 5948266) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2974133) = 17006112 * k + 8922400 := by
    unfold C
    simp [show (5668704 * k + 2974133) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8922400) = 8503056 * k + 4461200 := by
    unfold C
    simp [show (17006112 * k + 8922400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4461200) = 4251528 * k + 2230600 := by
    unfold C
    simp [show (8503056 * k + 4461200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2230600) = 2125764 * k + 1115300 := by
    unfold C
    simp [show (4251528 * k + 2230600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1115300) = 1062882 * k + 557650 := by
    unfold C
    simp [show (2125764 * k + 1115300) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 557650) = 531441 * k + 278825 := by
    unfold C
    simp [show (1062882 * k + 557650) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 550143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 550143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_550271 : ∀ k : Nat,
    iterate (1048576 * k + 550271) 32 = 531441 * k + 278890 ∧
      531441 * k + 278890 < 1048576 * k + 550271 := by
  intro k
  have h1 : C (1048576 * k + 550271) = 3145728 * k + 1650814 := by
    unfold C
    simp [show (1048576 * k + 550271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1650814) = 1572864 * k + 825407 := by
    unfold C
    simp [show (3145728 * k + 1650814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 825407) = 4718592 * k + 2476222 := by
    unfold C
    simp [show (1572864 * k + 825407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2476222) = 2359296 * k + 1238111 := by
    unfold C
    simp [show (4718592 * k + 2476222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1238111) = 7077888 * k + 3714334 := by
    unfold C
    simp [show (2359296 * k + 1238111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3714334) = 3538944 * k + 1857167 := by
    unfold C
    simp [show (7077888 * k + 3714334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1857167) = 10616832 * k + 5571502 := by
    unfold C
    simp [show (3538944 * k + 1857167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5571502) = 5308416 * k + 2785751 := by
    unfold C
    simp [show (10616832 * k + 5571502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2785751) = 15925248 * k + 8357254 := by
    unfold C
    simp [show (5308416 * k + 2785751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8357254) = 7962624 * k + 4178627 := by
    unfold C
    simp [show (15925248 * k + 8357254) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4178627) = 23887872 * k + 12535882 := by
    unfold C
    simp [show (7962624 * k + 4178627) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12535882) = 11943936 * k + 6267941 := by
    unfold C
    simp [show (23887872 * k + 12535882) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6267941) = 35831808 * k + 18803824 := by
    unfold C
    simp [show (11943936 * k + 6267941) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 18803824) = 17915904 * k + 9401912 := by
    unfold C
    simp [show (35831808 * k + 18803824) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9401912) = 8957952 * k + 4700956 := by
    unfold C
    simp [show (17915904 * k + 9401912) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4700956) = 4478976 * k + 2350478 := by
    unfold C
    simp [show (8957952 * k + 4700956) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2350478) = 2239488 * k + 1175239 := by
    unfold C
    simp [show (4478976 * k + 2350478) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1175239) = 6718464 * k + 3525718 := by
    unfold C
    simp [show (2239488 * k + 1175239) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3525718) = 3359232 * k + 1762859 := by
    unfold C
    simp [show (6718464 * k + 3525718) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1762859) = 10077696 * k + 5288578 := by
    unfold C
    simp [show (3359232 * k + 1762859) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5288578) = 5038848 * k + 2644289 := by
    unfold C
    simp [show (10077696 * k + 5288578) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2644289) = 15116544 * k + 7932868 := by
    unfold C
    simp [show (5038848 * k + 2644289) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7932868) = 7558272 * k + 3966434 := by
    unfold C
    simp [show (15116544 * k + 7932868) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3966434) = 3779136 * k + 1983217 := by
    unfold C
    simp [show (7558272 * k + 3966434) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1983217) = 11337408 * k + 5949652 := by
    unfold C
    simp [show (3779136 * k + 1983217) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5949652) = 5668704 * k + 2974826 := by
    unfold C
    simp [show (11337408 * k + 5949652) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2974826) = 2834352 * k + 1487413 := by
    unfold C
    simp [show (5668704 * k + 2974826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1487413) = 8503056 * k + 4462240 := by
    unfold C
    simp [show (2834352 * k + 1487413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4462240) = 4251528 * k + 2231120 := by
    unfold C
    simp [show (8503056 * k + 4462240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2231120) = 2125764 * k + 1115560 := by
    unfold C
    simp [show (4251528 * k + 2231120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1115560) = 1062882 * k + 557780 := by
    unfold C
    simp [show (2125764 * k + 1115560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 557780) = 531441 * k + 278890 := by
    unfold C
    simp [show (1062882 * k + 557780) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 550271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 550271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_550383 : ∀ k : Nat,
    iterate (1048576 * k + 550383) 32 = 531441 * k + 278947 ∧
      531441 * k + 278947 < 1048576 * k + 550383 := by
  intro k
  have h1 : C (1048576 * k + 550383) = 3145728 * k + 1651150 := by
    unfold C
    simp [show (1048576 * k + 550383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1651150) = 1572864 * k + 825575 := by
    unfold C
    simp [show (3145728 * k + 1651150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 825575) = 4718592 * k + 2476726 := by
    unfold C
    simp [show (1572864 * k + 825575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2476726) = 2359296 * k + 1238363 := by
    unfold C
    simp [show (4718592 * k + 2476726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1238363) = 7077888 * k + 3715090 := by
    unfold C
    simp [show (2359296 * k + 1238363) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3715090) = 3538944 * k + 1857545 := by
    unfold C
    simp [show (7077888 * k + 3715090) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1857545) = 10616832 * k + 5572636 := by
    unfold C
    simp [show (3538944 * k + 1857545) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5572636) = 5308416 * k + 2786318 := by
    unfold C
    simp [show (10616832 * k + 5572636) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2786318) = 2654208 * k + 1393159 := by
    unfold C
    simp [show (5308416 * k + 2786318) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1393159) = 7962624 * k + 4179478 := by
    unfold C
    simp [show (2654208 * k + 1393159) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4179478) = 3981312 * k + 2089739 := by
    unfold C
    simp [show (7962624 * k + 4179478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2089739) = 11943936 * k + 6269218 := by
    unfold C
    simp [show (3981312 * k + 2089739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6269218) = 5971968 * k + 3134609 := by
    unfold C
    simp [show (11943936 * k + 6269218) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3134609) = 17915904 * k + 9403828 := by
    unfold C
    simp [show (5971968 * k + 3134609) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9403828) = 8957952 * k + 4701914 := by
    unfold C
    simp [show (17915904 * k + 9403828) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4701914) = 4478976 * k + 2350957 := by
    unfold C
    simp [show (8957952 * k + 4701914) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2350957) = 13436928 * k + 7052872 := by
    unfold C
    simp [show (4478976 * k + 2350957) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7052872) = 6718464 * k + 3526436 := by
    unfold C
    simp [show (13436928 * k + 7052872) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3526436) = 3359232 * k + 1763218 := by
    unfold C
    simp [show (6718464 * k + 3526436) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1763218) = 1679616 * k + 881609 := by
    unfold C
    simp [show (3359232 * k + 1763218) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 881609) = 5038848 * k + 2644828 := by
    unfold C
    simp [show (1679616 * k + 881609) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2644828) = 2519424 * k + 1322414 := by
    unfold C
    simp [show (5038848 * k + 2644828) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1322414) = 1259712 * k + 661207 := by
    unfold C
    simp [show (2519424 * k + 1322414) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 661207) = 3779136 * k + 1983622 := by
    unfold C
    simp [show (1259712 * k + 661207) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1983622) = 1889568 * k + 991811 := by
    unfold C
    simp [show (3779136 * k + 1983622) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 991811) = 5668704 * k + 2975434 := by
    unfold C
    simp [show (1889568 * k + 991811) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2975434) = 2834352 * k + 1487717 := by
    unfold C
    simp [show (5668704 * k + 2975434) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1487717) = 8503056 * k + 4463152 := by
    unfold C
    simp [show (2834352 * k + 1487717) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4463152) = 4251528 * k + 2231576 := by
    unfold C
    simp [show (8503056 * k + 4463152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2231576) = 2125764 * k + 1115788 := by
    unfold C
    simp [show (4251528 * k + 2231576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1115788) = 1062882 * k + 557894 := by
    unfold C
    simp [show (2125764 * k + 1115788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 557894) = 531441 * k + 278947 := by
    unfold C
    simp [show (1062882 * k + 557894) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 550383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 550383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_550491 : ∀ k : Nat,
    iterate (1048576 * k + 550491) 32 = 531441 * k + 279002 ∧
      531441 * k + 279002 < 1048576 * k + 550491 := by
  intro k
  have h1 : C (1048576 * k + 550491) = 3145728 * k + 1651474 := by
    unfold C
    simp [show (1048576 * k + 550491) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1651474) = 1572864 * k + 825737 := by
    unfold C
    simp [show (3145728 * k + 1651474) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 825737) = 4718592 * k + 2477212 := by
    unfold C
    simp [show (1572864 * k + 825737) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2477212) = 2359296 * k + 1238606 := by
    unfold C
    simp [show (4718592 * k + 2477212) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1238606) = 1179648 * k + 619303 := by
    unfold C
    simp [show (2359296 * k + 1238606) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 619303) = 3538944 * k + 1857910 := by
    unfold C
    simp [show (1179648 * k + 619303) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1857910) = 1769472 * k + 928955 := by
    unfold C
    simp [show (3538944 * k + 1857910) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 928955) = 5308416 * k + 2786866 := by
    unfold C
    simp [show (1769472 * k + 928955) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2786866) = 2654208 * k + 1393433 := by
    unfold C
    simp [show (5308416 * k + 2786866) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1393433) = 7962624 * k + 4180300 := by
    unfold C
    simp [show (2654208 * k + 1393433) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4180300) = 3981312 * k + 2090150 := by
    unfold C
    simp [show (7962624 * k + 4180300) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2090150) = 1990656 * k + 1045075 := by
    unfold C
    simp [show (3981312 * k + 2090150) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1045075) = 5971968 * k + 3135226 := by
    unfold C
    simp [show (1990656 * k + 1045075) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3135226) = 2985984 * k + 1567613 := by
    unfold C
    simp [show (5971968 * k + 3135226) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1567613) = 8957952 * k + 4702840 := by
    unfold C
    simp [show (2985984 * k + 1567613) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4702840) = 4478976 * k + 2351420 := by
    unfold C
    simp [show (8957952 * k + 4702840) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2351420) = 2239488 * k + 1175710 := by
    unfold C
    simp [show (4478976 * k + 2351420) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1175710) = 1119744 * k + 587855 := by
    unfold C
    simp [show (2239488 * k + 1175710) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 587855) = 3359232 * k + 1763566 := by
    unfold C
    simp [show (1119744 * k + 587855) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1763566) = 1679616 * k + 881783 := by
    unfold C
    simp [show (3359232 * k + 1763566) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 881783) = 5038848 * k + 2645350 := by
    unfold C
    simp [show (1679616 * k + 881783) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2645350) = 2519424 * k + 1322675 := by
    unfold C
    simp [show (5038848 * k + 2645350) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1322675) = 7558272 * k + 3968026 := by
    unfold C
    simp [show (2519424 * k + 1322675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3968026) = 3779136 * k + 1984013 := by
    unfold C
    simp [show (7558272 * k + 3968026) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1984013) = 11337408 * k + 5952040 := by
    unfold C
    simp [show (3779136 * k + 1984013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5952040) = 5668704 * k + 2976020 := by
    unfold C
    simp [show (11337408 * k + 5952040) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2976020) = 2834352 * k + 1488010 := by
    unfold C
    simp [show (5668704 * k + 2976020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1488010) = 1417176 * k + 744005 := by
    unfold C
    simp [show (2834352 * k + 1488010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 744005) = 4251528 * k + 2232016 := by
    unfold C
    simp [show (1417176 * k + 744005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2232016) = 2125764 * k + 1116008 := by
    unfold C
    simp [show (4251528 * k + 2232016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1116008) = 1062882 * k + 558004 := by
    unfold C
    simp [show (2125764 * k + 1116008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 558004) = 531441 * k + 279002 := by
    unfold C
    simp [show (1062882 * k + 558004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 550491) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 550491)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_551119 : ∀ k : Nat,
    iterate (1048576 * k + 551119) 32 = 531441 * k + 279320 ∧
      531441 * k + 279320 < 1048576 * k + 551119 := by
  intro k
  have h1 : C (1048576 * k + 551119) = 3145728 * k + 1653358 := by
    unfold C
    simp [show (1048576 * k + 551119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1653358) = 1572864 * k + 826679 := by
    unfold C
    simp [show (3145728 * k + 1653358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 826679) = 4718592 * k + 2480038 := by
    unfold C
    simp [show (1572864 * k + 826679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2480038) = 2359296 * k + 1240019 := by
    unfold C
    simp [show (4718592 * k + 2480038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1240019) = 7077888 * k + 3720058 := by
    unfold C
    simp [show (2359296 * k + 1240019) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3720058) = 3538944 * k + 1860029 := by
    unfold C
    simp [show (7077888 * k + 3720058) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1860029) = 10616832 * k + 5580088 := by
    unfold C
    simp [show (3538944 * k + 1860029) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5580088) = 5308416 * k + 2790044 := by
    unfold C
    simp [show (10616832 * k + 5580088) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2790044) = 2654208 * k + 1395022 := by
    unfold C
    simp [show (5308416 * k + 2790044) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1395022) = 1327104 * k + 697511 := by
    unfold C
    simp [show (2654208 * k + 1395022) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 697511) = 3981312 * k + 2092534 := by
    unfold C
    simp [show (1327104 * k + 697511) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2092534) = 1990656 * k + 1046267 := by
    unfold C
    simp [show (3981312 * k + 2092534) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1046267) = 5971968 * k + 3138802 := by
    unfold C
    simp [show (1990656 * k + 1046267) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3138802) = 2985984 * k + 1569401 := by
    unfold C
    simp [show (5971968 * k + 3138802) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1569401) = 8957952 * k + 4708204 := by
    unfold C
    simp [show (2985984 * k + 1569401) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4708204) = 4478976 * k + 2354102 := by
    unfold C
    simp [show (8957952 * k + 4708204) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2354102) = 2239488 * k + 1177051 := by
    unfold C
    simp [show (4478976 * k + 2354102) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1177051) = 6718464 * k + 3531154 := by
    unfold C
    simp [show (2239488 * k + 1177051) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3531154) = 3359232 * k + 1765577 := by
    unfold C
    simp [show (6718464 * k + 3531154) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1765577) = 10077696 * k + 5296732 := by
    unfold C
    simp [show (3359232 * k + 1765577) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5296732) = 5038848 * k + 2648366 := by
    unfold C
    simp [show (10077696 * k + 5296732) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2648366) = 2519424 * k + 1324183 := by
    unfold C
    simp [show (5038848 * k + 2648366) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1324183) = 7558272 * k + 3972550 := by
    unfold C
    simp [show (2519424 * k + 1324183) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3972550) = 3779136 * k + 1986275 := by
    unfold C
    simp [show (7558272 * k + 3972550) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1986275) = 11337408 * k + 5958826 := by
    unfold C
    simp [show (3779136 * k + 1986275) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5958826) = 5668704 * k + 2979413 := by
    unfold C
    simp [show (11337408 * k + 5958826) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2979413) = 17006112 * k + 8938240 := by
    unfold C
    simp [show (5668704 * k + 2979413) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8938240) = 8503056 * k + 4469120 := by
    unfold C
    simp [show (17006112 * k + 8938240) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4469120) = 4251528 * k + 2234560 := by
    unfold C
    simp [show (8503056 * k + 4469120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2234560) = 2125764 * k + 1117280 := by
    unfold C
    simp [show (4251528 * k + 2234560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1117280) = 1062882 * k + 558640 := by
    unfold C
    simp [show (2125764 * k + 1117280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 558640) = 531441 * k + 279320 := by
    unfold C
    simp [show (1062882 * k + 558640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 551119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 551119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_552895 : ∀ k : Nat,
    iterate (1048576 * k + 552895) 32 = 531441 * k + 280220 ∧
      531441 * k + 280220 < 1048576 * k + 552895 := by
  intro k
  have h1 : C (1048576 * k + 552895) = 3145728 * k + 1658686 := by
    unfold C
    simp [show (1048576 * k + 552895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1658686) = 1572864 * k + 829343 := by
    unfold C
    simp [show (3145728 * k + 1658686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 829343) = 4718592 * k + 2488030 := by
    unfold C
    simp [show (1572864 * k + 829343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2488030) = 2359296 * k + 1244015 := by
    unfold C
    simp [show (4718592 * k + 2488030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1244015) = 7077888 * k + 3732046 := by
    unfold C
    simp [show (2359296 * k + 1244015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3732046) = 3538944 * k + 1866023 := by
    unfold C
    simp [show (7077888 * k + 3732046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1866023) = 10616832 * k + 5598070 := by
    unfold C
    simp [show (3538944 * k + 1866023) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5598070) = 5308416 * k + 2799035 := by
    unfold C
    simp [show (10616832 * k + 5598070) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2799035) = 15925248 * k + 8397106 := by
    unfold C
    simp [show (5308416 * k + 2799035) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8397106) = 7962624 * k + 4198553 := by
    unfold C
    simp [show (15925248 * k + 8397106) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4198553) = 23887872 * k + 12595660 := by
    unfold C
    simp [show (7962624 * k + 4198553) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12595660) = 11943936 * k + 6297830 := by
    unfold C
    simp [show (23887872 * k + 12595660) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6297830) = 5971968 * k + 3148915 := by
    unfold C
    simp [show (11943936 * k + 6297830) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3148915) = 17915904 * k + 9446746 := by
    unfold C
    simp [show (5971968 * k + 3148915) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9446746) = 8957952 * k + 4723373 := by
    unfold C
    simp [show (17915904 * k + 9446746) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4723373) = 26873856 * k + 14170120 := by
    unfold C
    simp [show (8957952 * k + 4723373) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14170120) = 13436928 * k + 7085060 := by
    unfold C
    simp [show (26873856 * k + 14170120) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7085060) = 6718464 * k + 3542530 := by
    unfold C
    simp [show (13436928 * k + 7085060) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3542530) = 3359232 * k + 1771265 := by
    unfold C
    simp [show (6718464 * k + 3542530) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1771265) = 10077696 * k + 5313796 := by
    unfold C
    simp [show (3359232 * k + 1771265) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5313796) = 5038848 * k + 2656898 := by
    unfold C
    simp [show (10077696 * k + 5313796) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2656898) = 2519424 * k + 1328449 := by
    unfold C
    simp [show (5038848 * k + 2656898) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1328449) = 7558272 * k + 3985348 := by
    unfold C
    simp [show (2519424 * k + 1328449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3985348) = 3779136 * k + 1992674 := by
    unfold C
    simp [show (7558272 * k + 3985348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1992674) = 1889568 * k + 996337 := by
    unfold C
    simp [show (3779136 * k + 1992674) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 996337) = 5668704 * k + 2989012 := by
    unfold C
    simp [show (1889568 * k + 996337) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2989012) = 2834352 * k + 1494506 := by
    unfold C
    simp [show (5668704 * k + 2989012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1494506) = 1417176 * k + 747253 := by
    unfold C
    simp [show (2834352 * k + 1494506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 747253) = 4251528 * k + 2241760 := by
    unfold C
    simp [show (1417176 * k + 747253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2241760) = 2125764 * k + 1120880 := by
    unfold C
    simp [show (4251528 * k + 2241760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1120880) = 1062882 * k + 560440 := by
    unfold C
    simp [show (2125764 * k + 1120880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 560440) = 531441 * k + 280220 := by
    unfold C
    simp [show (1062882 * k + 560440) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 552895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 552895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard070
