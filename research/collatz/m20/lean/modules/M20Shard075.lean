import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard075

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_579099 : ∀ k : Nat,
    iterate (1048576 * k + 579099) 32 = 531441 * k + 293501 ∧
      531441 * k + 293501 < 1048576 * k + 579099 := by
  intro k
  have h1 : C (1048576 * k + 579099) = 3145728 * k + 1737298 := by
    unfold C
    simp [show (1048576 * k + 579099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1737298) = 1572864 * k + 868649 := by
    unfold C
    simp [show (3145728 * k + 1737298) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 868649) = 4718592 * k + 2605948 := by
    unfold C
    simp [show (1572864 * k + 868649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2605948) = 2359296 * k + 1302974 := by
    unfold C
    simp [show (4718592 * k + 2605948) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1302974) = 1179648 * k + 651487 := by
    unfold C
    simp [show (2359296 * k + 1302974) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 651487) = 3538944 * k + 1954462 := by
    unfold C
    simp [show (1179648 * k + 651487) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1954462) = 1769472 * k + 977231 := by
    unfold C
    simp [show (3538944 * k + 1954462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 977231) = 5308416 * k + 2931694 := by
    unfold C
    simp [show (1769472 * k + 977231) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2931694) = 2654208 * k + 1465847 := by
    unfold C
    simp [show (5308416 * k + 2931694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1465847) = 7962624 * k + 4397542 := by
    unfold C
    simp [show (2654208 * k + 1465847) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4397542) = 3981312 * k + 2198771 := by
    unfold C
    simp [show (7962624 * k + 4397542) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2198771) = 11943936 * k + 6596314 := by
    unfold C
    simp [show (3981312 * k + 2198771) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6596314) = 5971968 * k + 3298157 := by
    unfold C
    simp [show (11943936 * k + 6596314) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3298157) = 17915904 * k + 9894472 := by
    unfold C
    simp [show (5971968 * k + 3298157) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9894472) = 8957952 * k + 4947236 := by
    unfold C
    simp [show (17915904 * k + 9894472) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4947236) = 4478976 * k + 2473618 := by
    unfold C
    simp [show (8957952 * k + 4947236) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2473618) = 2239488 * k + 1236809 := by
    unfold C
    simp [show (4478976 * k + 2473618) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1236809) = 6718464 * k + 3710428 := by
    unfold C
    simp [show (2239488 * k + 1236809) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3710428) = 3359232 * k + 1855214 := by
    unfold C
    simp [show (6718464 * k + 3710428) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1855214) = 1679616 * k + 927607 := by
    unfold C
    simp [show (3359232 * k + 1855214) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 927607) = 5038848 * k + 2782822 := by
    unfold C
    simp [show (1679616 * k + 927607) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2782822) = 2519424 * k + 1391411 := by
    unfold C
    simp [show (5038848 * k + 2782822) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1391411) = 7558272 * k + 4174234 := by
    unfold C
    simp [show (2519424 * k + 1391411) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4174234) = 3779136 * k + 2087117 := by
    unfold C
    simp [show (7558272 * k + 4174234) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2087117) = 11337408 * k + 6261352 := by
    unfold C
    simp [show (3779136 * k + 2087117) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6261352) = 5668704 * k + 3130676 := by
    unfold C
    simp [show (11337408 * k + 6261352) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3130676) = 2834352 * k + 1565338 := by
    unfold C
    simp [show (5668704 * k + 3130676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1565338) = 1417176 * k + 782669 := by
    unfold C
    simp [show (2834352 * k + 1565338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 782669) = 4251528 * k + 2348008 := by
    unfold C
    simp [show (1417176 * k + 782669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2348008) = 2125764 * k + 1174004 := by
    unfold C
    simp [show (4251528 * k + 2348008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1174004) = 1062882 * k + 587002 := by
    unfold C
    simp [show (2125764 * k + 1174004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 587002) = 531441 * k + 293501 := by
    unfold C
    simp [show (1062882 * k + 587002) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 579099) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 579099)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_580335 : ∀ k : Nat,
    iterate (1048576 * k + 580335) 32 = 531441 * k + 294127 ∧
      531441 * k + 294127 < 1048576 * k + 580335 := by
  intro k
  have h1 : C (1048576 * k + 580335) = 3145728 * k + 1741006 := by
    unfold C
    simp [show (1048576 * k + 580335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1741006) = 1572864 * k + 870503 := by
    unfold C
    simp [show (3145728 * k + 1741006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 870503) = 4718592 * k + 2611510 := by
    unfold C
    simp [show (1572864 * k + 870503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2611510) = 2359296 * k + 1305755 := by
    unfold C
    simp [show (4718592 * k + 2611510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1305755) = 7077888 * k + 3917266 := by
    unfold C
    simp [show (2359296 * k + 1305755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3917266) = 3538944 * k + 1958633 := by
    unfold C
    simp [show (7077888 * k + 3917266) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1958633) = 10616832 * k + 5875900 := by
    unfold C
    simp [show (3538944 * k + 1958633) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5875900) = 5308416 * k + 2937950 := by
    unfold C
    simp [show (10616832 * k + 5875900) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2937950) = 2654208 * k + 1468975 := by
    unfold C
    simp [show (5308416 * k + 2937950) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1468975) = 7962624 * k + 4406926 := by
    unfold C
    simp [show (2654208 * k + 1468975) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4406926) = 3981312 * k + 2203463 := by
    unfold C
    simp [show (7962624 * k + 4406926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2203463) = 11943936 * k + 6610390 := by
    unfold C
    simp [show (3981312 * k + 2203463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6610390) = 5971968 * k + 3305195 := by
    unfold C
    simp [show (11943936 * k + 6610390) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3305195) = 17915904 * k + 9915586 := by
    unfold C
    simp [show (5971968 * k + 3305195) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9915586) = 8957952 * k + 4957793 := by
    unfold C
    simp [show (17915904 * k + 9915586) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4957793) = 26873856 * k + 14873380 := by
    unfold C
    simp [show (8957952 * k + 4957793) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14873380) = 13436928 * k + 7436690 := by
    unfold C
    simp [show (26873856 * k + 14873380) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7436690) = 6718464 * k + 3718345 := by
    unfold C
    simp [show (13436928 * k + 7436690) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3718345) = 20155392 * k + 11155036 := by
    unfold C
    simp [show (6718464 * k + 3718345) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11155036) = 10077696 * k + 5577518 := by
    unfold C
    simp [show (20155392 * k + 11155036) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5577518) = 5038848 * k + 2788759 := by
    unfold C
    simp [show (10077696 * k + 5577518) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2788759) = 15116544 * k + 8366278 := by
    unfold C
    simp [show (5038848 * k + 2788759) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8366278) = 7558272 * k + 4183139 := by
    unfold C
    simp [show (15116544 * k + 8366278) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4183139) = 22674816 * k + 12549418 := by
    unfold C
    simp [show (7558272 * k + 4183139) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12549418) = 11337408 * k + 6274709 := by
    unfold C
    simp [show (22674816 * k + 12549418) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6274709) = 34012224 * k + 18824128 := by
    unfold C
    simp [show (11337408 * k + 6274709) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 18824128) = 17006112 * k + 9412064 := by
    unfold C
    simp [show (34012224 * k + 18824128) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9412064) = 8503056 * k + 4706032 := by
    unfold C
    simp [show (17006112 * k + 9412064) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4706032) = 4251528 * k + 2353016 := by
    unfold C
    simp [show (8503056 * k + 4706032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2353016) = 2125764 * k + 1176508 := by
    unfold C
    simp [show (4251528 * k + 2353016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1176508) = 1062882 * k + 588254 := by
    unfold C
    simp [show (2125764 * k + 1176508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 588254) = 531441 * k + 294127 := by
    unfold C
    simp [show (1062882 * k + 588254) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 580335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 580335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_580591 : ∀ k : Nat,
    iterate (1048576 * k + 580591) 32 = 531441 * k + 294257 ∧
      531441 * k + 294257 < 1048576 * k + 580591 := by
  intro k
  have h1 : C (1048576 * k + 580591) = 3145728 * k + 1741774 := by
    unfold C
    simp [show (1048576 * k + 580591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1741774) = 1572864 * k + 870887 := by
    unfold C
    simp [show (3145728 * k + 1741774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 870887) = 4718592 * k + 2612662 := by
    unfold C
    simp [show (1572864 * k + 870887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2612662) = 2359296 * k + 1306331 := by
    unfold C
    simp [show (4718592 * k + 2612662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1306331) = 7077888 * k + 3918994 := by
    unfold C
    simp [show (2359296 * k + 1306331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3918994) = 3538944 * k + 1959497 := by
    unfold C
    simp [show (7077888 * k + 3918994) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1959497) = 10616832 * k + 5878492 := by
    unfold C
    simp [show (3538944 * k + 1959497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5878492) = 5308416 * k + 2939246 := by
    unfold C
    simp [show (10616832 * k + 5878492) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2939246) = 2654208 * k + 1469623 := by
    unfold C
    simp [show (5308416 * k + 2939246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1469623) = 7962624 * k + 4408870 := by
    unfold C
    simp [show (2654208 * k + 1469623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4408870) = 3981312 * k + 2204435 := by
    unfold C
    simp [show (7962624 * k + 4408870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2204435) = 11943936 * k + 6613306 := by
    unfold C
    simp [show (3981312 * k + 2204435) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6613306) = 5971968 * k + 3306653 := by
    unfold C
    simp [show (11943936 * k + 6613306) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3306653) = 17915904 * k + 9919960 := by
    unfold C
    simp [show (5971968 * k + 3306653) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9919960) = 8957952 * k + 4959980 := by
    unfold C
    simp [show (17915904 * k + 9919960) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4959980) = 4478976 * k + 2479990 := by
    unfold C
    simp [show (8957952 * k + 4959980) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2479990) = 2239488 * k + 1239995 := by
    unfold C
    simp [show (4478976 * k + 2479990) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1239995) = 6718464 * k + 3719986 := by
    unfold C
    simp [show (2239488 * k + 1239995) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3719986) = 3359232 * k + 1859993 := by
    unfold C
    simp [show (6718464 * k + 3719986) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1859993) = 10077696 * k + 5579980 := by
    unfold C
    simp [show (3359232 * k + 1859993) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5579980) = 5038848 * k + 2789990 := by
    unfold C
    simp [show (10077696 * k + 5579980) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2789990) = 2519424 * k + 1394995 := by
    unfold C
    simp [show (5038848 * k + 2789990) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1394995) = 7558272 * k + 4184986 := by
    unfold C
    simp [show (2519424 * k + 1394995) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4184986) = 3779136 * k + 2092493 := by
    unfold C
    simp [show (7558272 * k + 4184986) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2092493) = 11337408 * k + 6277480 := by
    unfold C
    simp [show (3779136 * k + 2092493) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6277480) = 5668704 * k + 3138740 := by
    unfold C
    simp [show (11337408 * k + 6277480) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3138740) = 2834352 * k + 1569370 := by
    unfold C
    simp [show (5668704 * k + 3138740) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1569370) = 1417176 * k + 784685 := by
    unfold C
    simp [show (2834352 * k + 1569370) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 784685) = 4251528 * k + 2354056 := by
    unfold C
    simp [show (1417176 * k + 784685) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2354056) = 2125764 * k + 1177028 := by
    unfold C
    simp [show (4251528 * k + 2354056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1177028) = 1062882 * k + 588514 := by
    unfold C
    simp [show (2125764 * k + 1177028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 588514) = 531441 * k + 294257 := by
    unfold C
    simp [show (1062882 * k + 588514) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 580591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 580591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_580767 : ∀ k : Nat,
    iterate (1048576 * k + 580767) 32 = 531441 * k + 294346 ∧
      531441 * k + 294346 < 1048576 * k + 580767 := by
  intro k
  have h1 : C (1048576 * k + 580767) = 3145728 * k + 1742302 := by
    unfold C
    simp [show (1048576 * k + 580767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1742302) = 1572864 * k + 871151 := by
    unfold C
    simp [show (3145728 * k + 1742302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 871151) = 4718592 * k + 2613454 := by
    unfold C
    simp [show (1572864 * k + 871151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2613454) = 2359296 * k + 1306727 := by
    unfold C
    simp [show (4718592 * k + 2613454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1306727) = 7077888 * k + 3920182 := by
    unfold C
    simp [show (2359296 * k + 1306727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3920182) = 3538944 * k + 1960091 := by
    unfold C
    simp [show (7077888 * k + 3920182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1960091) = 10616832 * k + 5880274 := by
    unfold C
    simp [show (3538944 * k + 1960091) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5880274) = 5308416 * k + 2940137 := by
    unfold C
    simp [show (10616832 * k + 5880274) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2940137) = 15925248 * k + 8820412 := by
    unfold C
    simp [show (5308416 * k + 2940137) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8820412) = 7962624 * k + 4410206 := by
    unfold C
    simp [show (15925248 * k + 8820412) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4410206) = 3981312 * k + 2205103 := by
    unfold C
    simp [show (7962624 * k + 4410206) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2205103) = 11943936 * k + 6615310 := by
    unfold C
    simp [show (3981312 * k + 2205103) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6615310) = 5971968 * k + 3307655 := by
    unfold C
    simp [show (11943936 * k + 6615310) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3307655) = 17915904 * k + 9922966 := by
    unfold C
    simp [show (5971968 * k + 3307655) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9922966) = 8957952 * k + 4961483 := by
    unfold C
    simp [show (17915904 * k + 9922966) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4961483) = 26873856 * k + 14884450 := by
    unfold C
    simp [show (8957952 * k + 4961483) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14884450) = 13436928 * k + 7442225 := by
    unfold C
    simp [show (26873856 * k + 14884450) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7442225) = 40310784 * k + 22326676 := by
    unfold C
    simp [show (13436928 * k + 7442225) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 22326676) = 20155392 * k + 11163338 := by
    unfold C
    simp [show (40310784 * k + 22326676) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11163338) = 10077696 * k + 5581669 := by
    unfold C
    simp [show (20155392 * k + 11163338) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5581669) = 30233088 * k + 16745008 := by
    unfold C
    simp [show (10077696 * k + 5581669) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16745008) = 15116544 * k + 8372504 := by
    unfold C
    simp [show (30233088 * k + 16745008) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8372504) = 7558272 * k + 4186252 := by
    unfold C
    simp [show (15116544 * k + 8372504) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4186252) = 3779136 * k + 2093126 := by
    unfold C
    simp [show (7558272 * k + 4186252) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2093126) = 1889568 * k + 1046563 := by
    unfold C
    simp [show (3779136 * k + 2093126) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1046563) = 5668704 * k + 3139690 := by
    unfold C
    simp [show (1889568 * k + 1046563) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3139690) = 2834352 * k + 1569845 := by
    unfold C
    simp [show (5668704 * k + 3139690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1569845) = 8503056 * k + 4709536 := by
    unfold C
    simp [show (2834352 * k + 1569845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4709536) = 4251528 * k + 2354768 := by
    unfold C
    simp [show (8503056 * k + 4709536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2354768) = 2125764 * k + 1177384 := by
    unfold C
    simp [show (4251528 * k + 2354768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1177384) = 1062882 * k + 588692 := by
    unfold C
    simp [show (2125764 * k + 1177384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 588692) = 531441 * k + 294346 := by
    unfold C
    simp [show (1062882 * k + 588692) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 580767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 580767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_581915 : ∀ k : Nat,
    iterate (1048576 * k + 581915) 32 = 531441 * k + 294928 ∧
      531441 * k + 294928 < 1048576 * k + 581915 := by
  intro k
  have h1 : C (1048576 * k + 581915) = 3145728 * k + 1745746 := by
    unfold C
    simp [show (1048576 * k + 581915) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1745746) = 1572864 * k + 872873 := by
    unfold C
    simp [show (3145728 * k + 1745746) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 872873) = 4718592 * k + 2618620 := by
    unfold C
    simp [show (1572864 * k + 872873) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2618620) = 2359296 * k + 1309310 := by
    unfold C
    simp [show (4718592 * k + 2618620) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1309310) = 1179648 * k + 654655 := by
    unfold C
    simp [show (2359296 * k + 1309310) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 654655) = 3538944 * k + 1963966 := by
    unfold C
    simp [show (1179648 * k + 654655) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1963966) = 1769472 * k + 981983 := by
    unfold C
    simp [show (3538944 * k + 1963966) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 981983) = 5308416 * k + 2945950 := by
    unfold C
    simp [show (1769472 * k + 981983) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2945950) = 2654208 * k + 1472975 := by
    unfold C
    simp [show (5308416 * k + 2945950) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1472975) = 7962624 * k + 4418926 := by
    unfold C
    simp [show (2654208 * k + 1472975) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4418926) = 3981312 * k + 2209463 := by
    unfold C
    simp [show (7962624 * k + 4418926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2209463) = 11943936 * k + 6628390 := by
    unfold C
    simp [show (3981312 * k + 2209463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6628390) = 5971968 * k + 3314195 := by
    unfold C
    simp [show (11943936 * k + 6628390) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3314195) = 17915904 * k + 9942586 := by
    unfold C
    simp [show (5971968 * k + 3314195) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9942586) = 8957952 * k + 4971293 := by
    unfold C
    simp [show (17915904 * k + 9942586) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4971293) = 26873856 * k + 14913880 := by
    unfold C
    simp [show (8957952 * k + 4971293) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14913880) = 13436928 * k + 7456940 := by
    unfold C
    simp [show (26873856 * k + 14913880) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7456940) = 6718464 * k + 3728470 := by
    unfold C
    simp [show (13436928 * k + 7456940) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3728470) = 3359232 * k + 1864235 := by
    unfold C
    simp [show (6718464 * k + 3728470) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1864235) = 10077696 * k + 5592706 := by
    unfold C
    simp [show (3359232 * k + 1864235) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5592706) = 5038848 * k + 2796353 := by
    unfold C
    simp [show (10077696 * k + 5592706) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2796353) = 15116544 * k + 8389060 := by
    unfold C
    simp [show (5038848 * k + 2796353) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8389060) = 7558272 * k + 4194530 := by
    unfold C
    simp [show (15116544 * k + 8389060) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4194530) = 3779136 * k + 2097265 := by
    unfold C
    simp [show (7558272 * k + 4194530) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2097265) = 11337408 * k + 6291796 := by
    unfold C
    simp [show (3779136 * k + 2097265) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6291796) = 5668704 * k + 3145898 := by
    unfold C
    simp [show (11337408 * k + 6291796) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3145898) = 2834352 * k + 1572949 := by
    unfold C
    simp [show (5668704 * k + 3145898) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1572949) = 8503056 * k + 4718848 := by
    unfold C
    simp [show (2834352 * k + 1572949) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4718848) = 4251528 * k + 2359424 := by
    unfold C
    simp [show (8503056 * k + 4718848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2359424) = 2125764 * k + 1179712 := by
    unfold C
    simp [show (4251528 * k + 2359424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1179712) = 1062882 * k + 589856 := by
    unfold C
    simp [show (2125764 * k + 1179712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 589856) = 531441 * k + 294928 := by
    unfold C
    simp [show (1062882 * k + 589856) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 581915) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 581915)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_581951 : ∀ k : Nat,
    iterate (1048576 * k + 581951) 32 = 531441 * k + 294946 ∧
      531441 * k + 294946 < 1048576 * k + 581951 := by
  intro k
  have h1 : C (1048576 * k + 581951) = 3145728 * k + 1745854 := by
    unfold C
    simp [show (1048576 * k + 581951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1745854) = 1572864 * k + 872927 := by
    unfold C
    simp [show (3145728 * k + 1745854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 872927) = 4718592 * k + 2618782 := by
    unfold C
    simp [show (1572864 * k + 872927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2618782) = 2359296 * k + 1309391 := by
    unfold C
    simp [show (4718592 * k + 2618782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1309391) = 7077888 * k + 3928174 := by
    unfold C
    simp [show (2359296 * k + 1309391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3928174) = 3538944 * k + 1964087 := by
    unfold C
    simp [show (7077888 * k + 3928174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1964087) = 10616832 * k + 5892262 := by
    unfold C
    simp [show (3538944 * k + 1964087) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5892262) = 5308416 * k + 2946131 := by
    unfold C
    simp [show (10616832 * k + 5892262) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2946131) = 15925248 * k + 8838394 := by
    unfold C
    simp [show (5308416 * k + 2946131) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8838394) = 7962624 * k + 4419197 := by
    unfold C
    simp [show (15925248 * k + 8838394) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4419197) = 23887872 * k + 13257592 := by
    unfold C
    simp [show (7962624 * k + 4419197) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13257592) = 11943936 * k + 6628796 := by
    unfold C
    simp [show (23887872 * k + 13257592) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6628796) = 5971968 * k + 3314398 := by
    unfold C
    simp [show (11943936 * k + 6628796) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3314398) = 2985984 * k + 1657199 := by
    unfold C
    simp [show (5971968 * k + 3314398) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1657199) = 8957952 * k + 4971598 := by
    unfold C
    simp [show (2985984 * k + 1657199) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4971598) = 4478976 * k + 2485799 := by
    unfold C
    simp [show (8957952 * k + 4971598) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2485799) = 13436928 * k + 7457398 := by
    unfold C
    simp [show (4478976 * k + 2485799) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7457398) = 6718464 * k + 3728699 := by
    unfold C
    simp [show (13436928 * k + 7457398) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3728699) = 20155392 * k + 11186098 := by
    unfold C
    simp [show (6718464 * k + 3728699) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11186098) = 10077696 * k + 5593049 := by
    unfold C
    simp [show (20155392 * k + 11186098) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5593049) = 30233088 * k + 16779148 := by
    unfold C
    simp [show (10077696 * k + 5593049) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16779148) = 15116544 * k + 8389574 := by
    unfold C
    simp [show (30233088 * k + 16779148) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8389574) = 7558272 * k + 4194787 := by
    unfold C
    simp [show (15116544 * k + 8389574) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4194787) = 22674816 * k + 12584362 := by
    unfold C
    simp [show (7558272 * k + 4194787) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12584362) = 11337408 * k + 6292181 := by
    unfold C
    simp [show (22674816 * k + 12584362) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6292181) = 34012224 * k + 18876544 := by
    unfold C
    simp [show (11337408 * k + 6292181) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 18876544) = 17006112 * k + 9438272 := by
    unfold C
    simp [show (34012224 * k + 18876544) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9438272) = 8503056 * k + 4719136 := by
    unfold C
    simp [show (17006112 * k + 9438272) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4719136) = 4251528 * k + 2359568 := by
    unfold C
    simp [show (8503056 * k + 4719136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2359568) = 2125764 * k + 1179784 := by
    unfold C
    simp [show (4251528 * k + 2359568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1179784) = 1062882 * k + 589892 := by
    unfold C
    simp [show (2125764 * k + 1179784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 589892) = 531441 * k + 294946 := by
    unfold C
    simp [show (1062882 * k + 589892) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 581951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 581951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_582383 : ∀ k : Nat,
    iterate (1048576 * k + 582383) 32 = 531441 * k + 295165 ∧
      531441 * k + 295165 < 1048576 * k + 582383 := by
  intro k
  have h1 : C (1048576 * k + 582383) = 3145728 * k + 1747150 := by
    unfold C
    simp [show (1048576 * k + 582383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1747150) = 1572864 * k + 873575 := by
    unfold C
    simp [show (3145728 * k + 1747150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 873575) = 4718592 * k + 2620726 := by
    unfold C
    simp [show (1572864 * k + 873575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2620726) = 2359296 * k + 1310363 := by
    unfold C
    simp [show (4718592 * k + 2620726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1310363) = 7077888 * k + 3931090 := by
    unfold C
    simp [show (2359296 * k + 1310363) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3931090) = 3538944 * k + 1965545 := by
    unfold C
    simp [show (7077888 * k + 3931090) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1965545) = 10616832 * k + 5896636 := by
    unfold C
    simp [show (3538944 * k + 1965545) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5896636) = 5308416 * k + 2948318 := by
    unfold C
    simp [show (10616832 * k + 5896636) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2948318) = 2654208 * k + 1474159 := by
    unfold C
    simp [show (5308416 * k + 2948318) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1474159) = 7962624 * k + 4422478 := by
    unfold C
    simp [show (2654208 * k + 1474159) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4422478) = 3981312 * k + 2211239 := by
    unfold C
    simp [show (7962624 * k + 4422478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2211239) = 11943936 * k + 6633718 := by
    unfold C
    simp [show (3981312 * k + 2211239) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6633718) = 5971968 * k + 3316859 := by
    unfold C
    simp [show (11943936 * k + 6633718) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3316859) = 17915904 * k + 9950578 := by
    unfold C
    simp [show (5971968 * k + 3316859) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9950578) = 8957952 * k + 4975289 := by
    unfold C
    simp [show (17915904 * k + 9950578) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4975289) = 26873856 * k + 14925868 := by
    unfold C
    simp [show (8957952 * k + 4975289) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14925868) = 13436928 * k + 7462934 := by
    unfold C
    simp [show (26873856 * k + 14925868) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7462934) = 6718464 * k + 3731467 := by
    unfold C
    simp [show (13436928 * k + 7462934) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3731467) = 20155392 * k + 11194402 := by
    unfold C
    simp [show (6718464 * k + 3731467) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11194402) = 10077696 * k + 5597201 := by
    unfold C
    simp [show (20155392 * k + 11194402) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5597201) = 30233088 * k + 16791604 := by
    unfold C
    simp [show (10077696 * k + 5597201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16791604) = 15116544 * k + 8395802 := by
    unfold C
    simp [show (30233088 * k + 16791604) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8395802) = 7558272 * k + 4197901 := by
    unfold C
    simp [show (15116544 * k + 8395802) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4197901) = 22674816 * k + 12593704 := by
    unfold C
    simp [show (7558272 * k + 4197901) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12593704) = 11337408 * k + 6296852 := by
    unfold C
    simp [show (22674816 * k + 12593704) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6296852) = 5668704 * k + 3148426 := by
    unfold C
    simp [show (11337408 * k + 6296852) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3148426) = 2834352 * k + 1574213 := by
    unfold C
    simp [show (5668704 * k + 3148426) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1574213) = 8503056 * k + 4722640 := by
    unfold C
    simp [show (2834352 * k + 1574213) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4722640) = 4251528 * k + 2361320 := by
    unfold C
    simp [show (8503056 * k + 4722640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2361320) = 2125764 * k + 1180660 := by
    unfold C
    simp [show (4251528 * k + 2361320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1180660) = 1062882 * k + 590330 := by
    unfold C
    simp [show (2125764 * k + 1180660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 590330) = 531441 * k + 295165 := by
    unfold C
    simp [show (1062882 * k + 590330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 582383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 582383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_582471 : ∀ k : Nat,
    iterate (1048576 * k + 582471) 32 = 531441 * k + 295210 ∧
      531441 * k + 295210 < 1048576 * k + 582471 := by
  intro k
  have h1 : C (1048576 * k + 582471) = 3145728 * k + 1747414 := by
    unfold C
    simp [show (1048576 * k + 582471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1747414) = 1572864 * k + 873707 := by
    unfold C
    simp [show (3145728 * k + 1747414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 873707) = 4718592 * k + 2621122 := by
    unfold C
    simp [show (1572864 * k + 873707) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2621122) = 2359296 * k + 1310561 := by
    unfold C
    simp [show (4718592 * k + 2621122) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1310561) = 7077888 * k + 3931684 := by
    unfold C
    simp [show (2359296 * k + 1310561) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3931684) = 3538944 * k + 1965842 := by
    unfold C
    simp [show (7077888 * k + 3931684) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1965842) = 1769472 * k + 982921 := by
    unfold C
    simp [show (3538944 * k + 1965842) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 982921) = 5308416 * k + 2948764 := by
    unfold C
    simp [show (1769472 * k + 982921) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2948764) = 2654208 * k + 1474382 := by
    unfold C
    simp [show (5308416 * k + 2948764) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1474382) = 1327104 * k + 737191 := by
    unfold C
    simp [show (2654208 * k + 1474382) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 737191) = 3981312 * k + 2211574 := by
    unfold C
    simp [show (1327104 * k + 737191) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2211574) = 1990656 * k + 1105787 := by
    unfold C
    simp [show (3981312 * k + 2211574) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1105787) = 5971968 * k + 3317362 := by
    unfold C
    simp [show (1990656 * k + 1105787) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3317362) = 2985984 * k + 1658681 := by
    unfold C
    simp [show (5971968 * k + 3317362) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1658681) = 8957952 * k + 4976044 := by
    unfold C
    simp [show (2985984 * k + 1658681) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4976044) = 4478976 * k + 2488022 := by
    unfold C
    simp [show (8957952 * k + 4976044) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2488022) = 2239488 * k + 1244011 := by
    unfold C
    simp [show (4478976 * k + 2488022) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1244011) = 6718464 * k + 3732034 := by
    unfold C
    simp [show (2239488 * k + 1244011) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3732034) = 3359232 * k + 1866017 := by
    unfold C
    simp [show (6718464 * k + 3732034) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1866017) = 10077696 * k + 5598052 := by
    unfold C
    simp [show (3359232 * k + 1866017) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5598052) = 5038848 * k + 2799026 := by
    unfold C
    simp [show (10077696 * k + 5598052) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2799026) = 2519424 * k + 1399513 := by
    unfold C
    simp [show (5038848 * k + 2799026) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1399513) = 7558272 * k + 4198540 := by
    unfold C
    simp [show (2519424 * k + 1399513) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4198540) = 3779136 * k + 2099270 := by
    unfold C
    simp [show (7558272 * k + 4198540) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2099270) = 1889568 * k + 1049635 := by
    unfold C
    simp [show (3779136 * k + 2099270) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1049635) = 5668704 * k + 3148906 := by
    unfold C
    simp [show (1889568 * k + 1049635) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3148906) = 2834352 * k + 1574453 := by
    unfold C
    simp [show (5668704 * k + 3148906) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1574453) = 8503056 * k + 4723360 := by
    unfold C
    simp [show (2834352 * k + 1574453) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4723360) = 4251528 * k + 2361680 := by
    unfold C
    simp [show (8503056 * k + 4723360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2361680) = 2125764 * k + 1180840 := by
    unfold C
    simp [show (4251528 * k + 2361680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1180840) = 1062882 * k + 590420 := by
    unfold C
    simp [show (2125764 * k + 1180840) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 590420) = 531441 * k + 295210 := by
    unfold C
    simp [show (1062882 * k + 590420) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 582471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 582471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_582727 : ∀ k : Nat,
    iterate (1048576 * k + 582727) 32 = 531441 * k + 295340 ∧
      531441 * k + 295340 < 1048576 * k + 582727 := by
  intro k
  have h1 : C (1048576 * k + 582727) = 3145728 * k + 1748182 := by
    unfold C
    simp [show (1048576 * k + 582727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1748182) = 1572864 * k + 874091 := by
    unfold C
    simp [show (3145728 * k + 1748182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 874091) = 4718592 * k + 2622274 := by
    unfold C
    simp [show (1572864 * k + 874091) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2622274) = 2359296 * k + 1311137 := by
    unfold C
    simp [show (4718592 * k + 2622274) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1311137) = 7077888 * k + 3933412 := by
    unfold C
    simp [show (2359296 * k + 1311137) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3933412) = 3538944 * k + 1966706 := by
    unfold C
    simp [show (7077888 * k + 3933412) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1966706) = 1769472 * k + 983353 := by
    unfold C
    simp [show (3538944 * k + 1966706) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 983353) = 5308416 * k + 2950060 := by
    unfold C
    simp [show (1769472 * k + 983353) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2950060) = 2654208 * k + 1475030 := by
    unfold C
    simp [show (5308416 * k + 2950060) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1475030) = 1327104 * k + 737515 := by
    unfold C
    simp [show (2654208 * k + 1475030) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 737515) = 3981312 * k + 2212546 := by
    unfold C
    simp [show (1327104 * k + 737515) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2212546) = 1990656 * k + 1106273 := by
    unfold C
    simp [show (3981312 * k + 2212546) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1106273) = 5971968 * k + 3318820 := by
    unfold C
    simp [show (1990656 * k + 1106273) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3318820) = 2985984 * k + 1659410 := by
    unfold C
    simp [show (5971968 * k + 3318820) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1659410) = 1492992 * k + 829705 := by
    unfold C
    simp [show (2985984 * k + 1659410) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 829705) = 4478976 * k + 2489116 := by
    unfold C
    simp [show (1492992 * k + 829705) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2489116) = 2239488 * k + 1244558 := by
    unfold C
    simp [show (4478976 * k + 2489116) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1244558) = 1119744 * k + 622279 := by
    unfold C
    simp [show (2239488 * k + 1244558) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 622279) = 3359232 * k + 1866838 := by
    unfold C
    simp [show (1119744 * k + 622279) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1866838) = 1679616 * k + 933419 := by
    unfold C
    simp [show (3359232 * k + 1866838) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 933419) = 5038848 * k + 2800258 := by
    unfold C
    simp [show (1679616 * k + 933419) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2800258) = 2519424 * k + 1400129 := by
    unfold C
    simp [show (5038848 * k + 2800258) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1400129) = 7558272 * k + 4200388 := by
    unfold C
    simp [show (2519424 * k + 1400129) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4200388) = 3779136 * k + 2100194 := by
    unfold C
    simp [show (7558272 * k + 4200388) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2100194) = 1889568 * k + 1050097 := by
    unfold C
    simp [show (3779136 * k + 2100194) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1050097) = 5668704 * k + 3150292 := by
    unfold C
    simp [show (1889568 * k + 1050097) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3150292) = 2834352 * k + 1575146 := by
    unfold C
    simp [show (5668704 * k + 3150292) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1575146) = 1417176 * k + 787573 := by
    unfold C
    simp [show (2834352 * k + 1575146) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 787573) = 4251528 * k + 2362720 := by
    unfold C
    simp [show (1417176 * k + 787573) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2362720) = 2125764 * k + 1181360 := by
    unfold C
    simp [show (4251528 * k + 2362720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1181360) = 1062882 * k + 590680 := by
    unfold C
    simp [show (2125764 * k + 1181360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 590680) = 531441 * k + 295340 := by
    unfold C
    simp [show (1062882 * k + 590680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 582727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 582727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_584095 : ∀ k : Nat,
    iterate (1048576 * k + 584095) 32 = 531441 * k + 296033 ∧
      531441 * k + 296033 < 1048576 * k + 584095 := by
  intro k
  have h1 : C (1048576 * k + 584095) = 3145728 * k + 1752286 := by
    unfold C
    simp [show (1048576 * k + 584095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1752286) = 1572864 * k + 876143 := by
    unfold C
    simp [show (3145728 * k + 1752286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 876143) = 4718592 * k + 2628430 := by
    unfold C
    simp [show (1572864 * k + 876143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2628430) = 2359296 * k + 1314215 := by
    unfold C
    simp [show (4718592 * k + 2628430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1314215) = 7077888 * k + 3942646 := by
    unfold C
    simp [show (2359296 * k + 1314215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3942646) = 3538944 * k + 1971323 := by
    unfold C
    simp [show (7077888 * k + 3942646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1971323) = 10616832 * k + 5913970 := by
    unfold C
    simp [show (3538944 * k + 1971323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5913970) = 5308416 * k + 2956985 := by
    unfold C
    simp [show (10616832 * k + 5913970) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2956985) = 15925248 * k + 8870956 := by
    unfold C
    simp [show (5308416 * k + 2956985) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8870956) = 7962624 * k + 4435478 := by
    unfold C
    simp [show (15925248 * k + 8870956) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4435478) = 3981312 * k + 2217739 := by
    unfold C
    simp [show (7962624 * k + 4435478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2217739) = 11943936 * k + 6653218 := by
    unfold C
    simp [show (3981312 * k + 2217739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6653218) = 5971968 * k + 3326609 := by
    unfold C
    simp [show (11943936 * k + 6653218) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3326609) = 17915904 * k + 9979828 := by
    unfold C
    simp [show (5971968 * k + 3326609) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9979828) = 8957952 * k + 4989914 := by
    unfold C
    simp [show (17915904 * k + 9979828) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4989914) = 4478976 * k + 2494957 := by
    unfold C
    simp [show (8957952 * k + 4989914) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2494957) = 13436928 * k + 7484872 := by
    unfold C
    simp [show (4478976 * k + 2494957) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7484872) = 6718464 * k + 3742436 := by
    unfold C
    simp [show (13436928 * k + 7484872) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3742436) = 3359232 * k + 1871218 := by
    unfold C
    simp [show (6718464 * k + 3742436) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1871218) = 1679616 * k + 935609 := by
    unfold C
    simp [show (3359232 * k + 1871218) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 935609) = 5038848 * k + 2806828 := by
    unfold C
    simp [show (1679616 * k + 935609) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2806828) = 2519424 * k + 1403414 := by
    unfold C
    simp [show (5038848 * k + 2806828) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1403414) = 1259712 * k + 701707 := by
    unfold C
    simp [show (2519424 * k + 1403414) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 701707) = 3779136 * k + 2105122 := by
    unfold C
    simp [show (1259712 * k + 701707) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2105122) = 1889568 * k + 1052561 := by
    unfold C
    simp [show (3779136 * k + 2105122) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1052561) = 5668704 * k + 3157684 := by
    unfold C
    simp [show (1889568 * k + 1052561) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3157684) = 2834352 * k + 1578842 := by
    unfold C
    simp [show (5668704 * k + 3157684) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1578842) = 1417176 * k + 789421 := by
    unfold C
    simp [show (2834352 * k + 1578842) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 789421) = 4251528 * k + 2368264 := by
    unfold C
    simp [show (1417176 * k + 789421) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2368264) = 2125764 * k + 1184132 := by
    unfold C
    simp [show (4251528 * k + 2368264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1184132) = 1062882 * k + 592066 := by
    unfold C
    simp [show (2125764 * k + 1184132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 592066) = 531441 * k + 296033 := by
    unfold C
    simp [show (1062882 * k + 592066) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 584095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 584095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_585023 : ∀ k : Nat,
    iterate (1048576 * k + 585023) 32 = 531441 * k + 296503 ∧
      531441 * k + 296503 < 1048576 * k + 585023 := by
  intro k
  have h1 : C (1048576 * k + 585023) = 3145728 * k + 1755070 := by
    unfold C
    simp [show (1048576 * k + 585023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1755070) = 1572864 * k + 877535 := by
    unfold C
    simp [show (3145728 * k + 1755070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 877535) = 4718592 * k + 2632606 := by
    unfold C
    simp [show (1572864 * k + 877535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2632606) = 2359296 * k + 1316303 := by
    unfold C
    simp [show (4718592 * k + 2632606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1316303) = 7077888 * k + 3948910 := by
    unfold C
    simp [show (2359296 * k + 1316303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3948910) = 3538944 * k + 1974455 := by
    unfold C
    simp [show (7077888 * k + 3948910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1974455) = 10616832 * k + 5923366 := by
    unfold C
    simp [show (3538944 * k + 1974455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5923366) = 5308416 * k + 2961683 := by
    unfold C
    simp [show (10616832 * k + 5923366) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2961683) = 15925248 * k + 8885050 := by
    unfold C
    simp [show (5308416 * k + 2961683) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8885050) = 7962624 * k + 4442525 := by
    unfold C
    simp [show (15925248 * k + 8885050) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4442525) = 23887872 * k + 13327576 := by
    unfold C
    simp [show (7962624 * k + 4442525) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13327576) = 11943936 * k + 6663788 := by
    unfold C
    simp [show (23887872 * k + 13327576) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6663788) = 5971968 * k + 3331894 := by
    unfold C
    simp [show (11943936 * k + 6663788) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3331894) = 2985984 * k + 1665947 := by
    unfold C
    simp [show (5971968 * k + 3331894) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1665947) = 8957952 * k + 4997842 := by
    unfold C
    simp [show (2985984 * k + 1665947) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4997842) = 4478976 * k + 2498921 := by
    unfold C
    simp [show (8957952 * k + 4997842) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2498921) = 13436928 * k + 7496764 := by
    unfold C
    simp [show (4478976 * k + 2498921) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7496764) = 6718464 * k + 3748382 := by
    unfold C
    simp [show (13436928 * k + 7496764) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3748382) = 3359232 * k + 1874191 := by
    unfold C
    simp [show (6718464 * k + 3748382) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1874191) = 10077696 * k + 5622574 := by
    unfold C
    simp [show (3359232 * k + 1874191) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5622574) = 5038848 * k + 2811287 := by
    unfold C
    simp [show (10077696 * k + 5622574) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2811287) = 15116544 * k + 8433862 := by
    unfold C
    simp [show (5038848 * k + 2811287) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8433862) = 7558272 * k + 4216931 := by
    unfold C
    simp [show (15116544 * k + 8433862) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4216931) = 22674816 * k + 12650794 := by
    unfold C
    simp [show (7558272 * k + 4216931) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12650794) = 11337408 * k + 6325397 := by
    unfold C
    simp [show (22674816 * k + 12650794) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6325397) = 34012224 * k + 18976192 := by
    unfold C
    simp [show (11337408 * k + 6325397) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 18976192) = 17006112 * k + 9488096 := by
    unfold C
    simp [show (34012224 * k + 18976192) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9488096) = 8503056 * k + 4744048 := by
    unfold C
    simp [show (17006112 * k + 9488096) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4744048) = 4251528 * k + 2372024 := by
    unfold C
    simp [show (8503056 * k + 4744048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2372024) = 2125764 * k + 1186012 := by
    unfold C
    simp [show (4251528 * k + 2372024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1186012) = 1062882 * k + 593006 := by
    unfold C
    simp [show (2125764 * k + 1186012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 593006) = 531441 * k + 296503 := by
    unfold C
    simp [show (1062882 * k + 593006) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 585023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 585023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_585383 : ∀ k : Nat,
    iterate (1048576 * k + 585383) 32 = 531441 * k + 296686 ∧
      531441 * k + 296686 < 1048576 * k + 585383 := by
  intro k
  have h1 : C (1048576 * k + 585383) = 3145728 * k + 1756150 := by
    unfold C
    simp [show (1048576 * k + 585383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1756150) = 1572864 * k + 878075 := by
    unfold C
    simp [show (3145728 * k + 1756150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 878075) = 4718592 * k + 2634226 := by
    unfold C
    simp [show (1572864 * k + 878075) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2634226) = 2359296 * k + 1317113 := by
    unfold C
    simp [show (4718592 * k + 2634226) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1317113) = 7077888 * k + 3951340 := by
    unfold C
    simp [show (2359296 * k + 1317113) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3951340) = 3538944 * k + 1975670 := by
    unfold C
    simp [show (7077888 * k + 3951340) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1975670) = 1769472 * k + 987835 := by
    unfold C
    simp [show (3538944 * k + 1975670) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 987835) = 5308416 * k + 2963506 := by
    unfold C
    simp [show (1769472 * k + 987835) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2963506) = 2654208 * k + 1481753 := by
    unfold C
    simp [show (5308416 * k + 2963506) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1481753) = 7962624 * k + 4445260 := by
    unfold C
    simp [show (2654208 * k + 1481753) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4445260) = 3981312 * k + 2222630 := by
    unfold C
    simp [show (7962624 * k + 4445260) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2222630) = 1990656 * k + 1111315 := by
    unfold C
    simp [show (3981312 * k + 2222630) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1111315) = 5971968 * k + 3333946 := by
    unfold C
    simp [show (1990656 * k + 1111315) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3333946) = 2985984 * k + 1666973 := by
    unfold C
    simp [show (5971968 * k + 3333946) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1666973) = 8957952 * k + 5000920 := by
    unfold C
    simp [show (2985984 * k + 1666973) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5000920) = 4478976 * k + 2500460 := by
    unfold C
    simp [show (8957952 * k + 5000920) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2500460) = 2239488 * k + 1250230 := by
    unfold C
    simp [show (4478976 * k + 2500460) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1250230) = 1119744 * k + 625115 := by
    unfold C
    simp [show (2239488 * k + 1250230) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 625115) = 3359232 * k + 1875346 := by
    unfold C
    simp [show (1119744 * k + 625115) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1875346) = 1679616 * k + 937673 := by
    unfold C
    simp [show (3359232 * k + 1875346) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 937673) = 5038848 * k + 2813020 := by
    unfold C
    simp [show (1679616 * k + 937673) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2813020) = 2519424 * k + 1406510 := by
    unfold C
    simp [show (5038848 * k + 2813020) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1406510) = 1259712 * k + 703255 := by
    unfold C
    simp [show (2519424 * k + 1406510) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 703255) = 3779136 * k + 2109766 := by
    unfold C
    simp [show (1259712 * k + 703255) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2109766) = 1889568 * k + 1054883 := by
    unfold C
    simp [show (3779136 * k + 2109766) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1054883) = 5668704 * k + 3164650 := by
    unfold C
    simp [show (1889568 * k + 1054883) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3164650) = 2834352 * k + 1582325 := by
    unfold C
    simp [show (5668704 * k + 3164650) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1582325) = 8503056 * k + 4746976 := by
    unfold C
    simp [show (2834352 * k + 1582325) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4746976) = 4251528 * k + 2373488 := by
    unfold C
    simp [show (8503056 * k + 4746976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2373488) = 2125764 * k + 1186744 := by
    unfold C
    simp [show (4251528 * k + 2373488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1186744) = 1062882 * k + 593372 := by
    unfold C
    simp [show (2125764 * k + 1186744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 593372) = 531441 * k + 296686 := by
    unfold C
    simp [show (1062882 * k + 593372) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 585383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 585383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_585455 : ∀ k : Nat,
    iterate (1048576 * k + 585455) 32 = 531441 * k + 296722 ∧
      531441 * k + 296722 < 1048576 * k + 585455 := by
  intro k
  have h1 : C (1048576 * k + 585455) = 3145728 * k + 1756366 := by
    unfold C
    simp [show (1048576 * k + 585455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1756366) = 1572864 * k + 878183 := by
    unfold C
    simp [show (3145728 * k + 1756366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 878183) = 4718592 * k + 2634550 := by
    unfold C
    simp [show (1572864 * k + 878183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2634550) = 2359296 * k + 1317275 := by
    unfold C
    simp [show (4718592 * k + 2634550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1317275) = 7077888 * k + 3951826 := by
    unfold C
    simp [show (2359296 * k + 1317275) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3951826) = 3538944 * k + 1975913 := by
    unfold C
    simp [show (7077888 * k + 3951826) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1975913) = 10616832 * k + 5927740 := by
    unfold C
    simp [show (3538944 * k + 1975913) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5927740) = 5308416 * k + 2963870 := by
    unfold C
    simp [show (10616832 * k + 5927740) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2963870) = 2654208 * k + 1481935 := by
    unfold C
    simp [show (5308416 * k + 2963870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1481935) = 7962624 * k + 4445806 := by
    unfold C
    simp [show (2654208 * k + 1481935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4445806) = 3981312 * k + 2222903 := by
    unfold C
    simp [show (7962624 * k + 4445806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2222903) = 11943936 * k + 6668710 := by
    unfold C
    simp [show (3981312 * k + 2222903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6668710) = 5971968 * k + 3334355 := by
    unfold C
    simp [show (11943936 * k + 6668710) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3334355) = 17915904 * k + 10003066 := by
    unfold C
    simp [show (5971968 * k + 3334355) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10003066) = 8957952 * k + 5001533 := by
    unfold C
    simp [show (17915904 * k + 10003066) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5001533) = 26873856 * k + 15004600 := by
    unfold C
    simp [show (8957952 * k + 5001533) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15004600) = 13436928 * k + 7502300 := by
    unfold C
    simp [show (26873856 * k + 15004600) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7502300) = 6718464 * k + 3751150 := by
    unfold C
    simp [show (13436928 * k + 7502300) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3751150) = 3359232 * k + 1875575 := by
    unfold C
    simp [show (6718464 * k + 3751150) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1875575) = 10077696 * k + 5626726 := by
    unfold C
    simp [show (3359232 * k + 1875575) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5626726) = 5038848 * k + 2813363 := by
    unfold C
    simp [show (10077696 * k + 5626726) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2813363) = 15116544 * k + 8440090 := by
    unfold C
    simp [show (5038848 * k + 2813363) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8440090) = 7558272 * k + 4220045 := by
    unfold C
    simp [show (15116544 * k + 8440090) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4220045) = 22674816 * k + 12660136 := by
    unfold C
    simp [show (7558272 * k + 4220045) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12660136) = 11337408 * k + 6330068 := by
    unfold C
    simp [show (22674816 * k + 12660136) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6330068) = 5668704 * k + 3165034 := by
    unfold C
    simp [show (11337408 * k + 6330068) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3165034) = 2834352 * k + 1582517 := by
    unfold C
    simp [show (5668704 * k + 3165034) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1582517) = 8503056 * k + 4747552 := by
    unfold C
    simp [show (2834352 * k + 1582517) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4747552) = 4251528 * k + 2373776 := by
    unfold C
    simp [show (8503056 * k + 4747552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2373776) = 2125764 * k + 1186888 := by
    unfold C
    simp [show (4251528 * k + 2373776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1186888) = 1062882 * k + 593444 := by
    unfold C
    simp [show (2125764 * k + 1186888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 593444) = 531441 * k + 296722 := by
    unfold C
    simp [show (1062882 * k + 593444) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 585455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 585455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_586783 : ∀ k : Nat,
    iterate (1048576 * k + 586783) 32 = 531441 * k + 297395 ∧
      531441 * k + 297395 < 1048576 * k + 586783 := by
  intro k
  have h1 : C (1048576 * k + 586783) = 3145728 * k + 1760350 := by
    unfold C
    simp [show (1048576 * k + 586783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1760350) = 1572864 * k + 880175 := by
    unfold C
    simp [show (3145728 * k + 1760350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 880175) = 4718592 * k + 2640526 := by
    unfold C
    simp [show (1572864 * k + 880175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2640526) = 2359296 * k + 1320263 := by
    unfold C
    simp [show (4718592 * k + 2640526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1320263) = 7077888 * k + 3960790 := by
    unfold C
    simp [show (2359296 * k + 1320263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3960790) = 3538944 * k + 1980395 := by
    unfold C
    simp [show (7077888 * k + 3960790) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1980395) = 10616832 * k + 5941186 := by
    unfold C
    simp [show (3538944 * k + 1980395) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5941186) = 5308416 * k + 2970593 := by
    unfold C
    simp [show (10616832 * k + 5941186) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2970593) = 15925248 * k + 8911780 := by
    unfold C
    simp [show (5308416 * k + 2970593) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8911780) = 7962624 * k + 4455890 := by
    unfold C
    simp [show (15925248 * k + 8911780) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4455890) = 3981312 * k + 2227945 := by
    unfold C
    simp [show (7962624 * k + 4455890) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2227945) = 11943936 * k + 6683836 := by
    unfold C
    simp [show (3981312 * k + 2227945) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6683836) = 5971968 * k + 3341918 := by
    unfold C
    simp [show (11943936 * k + 6683836) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3341918) = 2985984 * k + 1670959 := by
    unfold C
    simp [show (5971968 * k + 3341918) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1670959) = 8957952 * k + 5012878 := by
    unfold C
    simp [show (2985984 * k + 1670959) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5012878) = 4478976 * k + 2506439 := by
    unfold C
    simp [show (8957952 * k + 5012878) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2506439) = 13436928 * k + 7519318 := by
    unfold C
    simp [show (4478976 * k + 2506439) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7519318) = 6718464 * k + 3759659 := by
    unfold C
    simp [show (13436928 * k + 7519318) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3759659) = 20155392 * k + 11278978 := by
    unfold C
    simp [show (6718464 * k + 3759659) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11278978) = 10077696 * k + 5639489 := by
    unfold C
    simp [show (20155392 * k + 11278978) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5639489) = 30233088 * k + 16918468 := by
    unfold C
    simp [show (10077696 * k + 5639489) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16918468) = 15116544 * k + 8459234 := by
    unfold C
    simp [show (30233088 * k + 16918468) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8459234) = 7558272 * k + 4229617 := by
    unfold C
    simp [show (15116544 * k + 8459234) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4229617) = 22674816 * k + 12688852 := by
    unfold C
    simp [show (7558272 * k + 4229617) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12688852) = 11337408 * k + 6344426 := by
    unfold C
    simp [show (22674816 * k + 12688852) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6344426) = 5668704 * k + 3172213 := by
    unfold C
    simp [show (11337408 * k + 6344426) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3172213) = 17006112 * k + 9516640 := by
    unfold C
    simp [show (5668704 * k + 3172213) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9516640) = 8503056 * k + 4758320 := by
    unfold C
    simp [show (17006112 * k + 9516640) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4758320) = 4251528 * k + 2379160 := by
    unfold C
    simp [show (8503056 * k + 4758320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2379160) = 2125764 * k + 1189580 := by
    unfold C
    simp [show (4251528 * k + 2379160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1189580) = 1062882 * k + 594790 := by
    unfold C
    simp [show (2125764 * k + 1189580) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 594790) = 531441 * k + 297395 := by
    unfold C
    simp [show (1062882 * k + 594790) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 586783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 586783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_587291 : ∀ k : Nat,
    iterate (1048576 * k + 587291) 32 = 531441 * k + 297653 ∧
      531441 * k + 297653 < 1048576 * k + 587291 := by
  intro k
  have h1 : C (1048576 * k + 587291) = 3145728 * k + 1761874 := by
    unfold C
    simp [show (1048576 * k + 587291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1761874) = 1572864 * k + 880937 := by
    unfold C
    simp [show (3145728 * k + 1761874) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 880937) = 4718592 * k + 2642812 := by
    unfold C
    simp [show (1572864 * k + 880937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2642812) = 2359296 * k + 1321406 := by
    unfold C
    simp [show (4718592 * k + 2642812) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1321406) = 1179648 * k + 660703 := by
    unfold C
    simp [show (2359296 * k + 1321406) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 660703) = 3538944 * k + 1982110 := by
    unfold C
    simp [show (1179648 * k + 660703) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1982110) = 1769472 * k + 991055 := by
    unfold C
    simp [show (3538944 * k + 1982110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 991055) = 5308416 * k + 2973166 := by
    unfold C
    simp [show (1769472 * k + 991055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2973166) = 2654208 * k + 1486583 := by
    unfold C
    simp [show (5308416 * k + 2973166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1486583) = 7962624 * k + 4459750 := by
    unfold C
    simp [show (2654208 * k + 1486583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4459750) = 3981312 * k + 2229875 := by
    unfold C
    simp [show (7962624 * k + 4459750) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2229875) = 11943936 * k + 6689626 := by
    unfold C
    simp [show (3981312 * k + 2229875) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6689626) = 5971968 * k + 3344813 := by
    unfold C
    simp [show (11943936 * k + 6689626) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3344813) = 17915904 * k + 10034440 := by
    unfold C
    simp [show (5971968 * k + 3344813) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10034440) = 8957952 * k + 5017220 := by
    unfold C
    simp [show (17915904 * k + 10034440) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5017220) = 4478976 * k + 2508610 := by
    unfold C
    simp [show (8957952 * k + 5017220) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2508610) = 2239488 * k + 1254305 := by
    unfold C
    simp [show (4478976 * k + 2508610) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1254305) = 6718464 * k + 3762916 := by
    unfold C
    simp [show (2239488 * k + 1254305) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3762916) = 3359232 * k + 1881458 := by
    unfold C
    simp [show (6718464 * k + 3762916) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1881458) = 1679616 * k + 940729 := by
    unfold C
    simp [show (3359232 * k + 1881458) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 940729) = 5038848 * k + 2822188 := by
    unfold C
    simp [show (1679616 * k + 940729) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2822188) = 2519424 * k + 1411094 := by
    unfold C
    simp [show (5038848 * k + 2822188) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1411094) = 1259712 * k + 705547 := by
    unfold C
    simp [show (2519424 * k + 1411094) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 705547) = 3779136 * k + 2116642 := by
    unfold C
    simp [show (1259712 * k + 705547) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2116642) = 1889568 * k + 1058321 := by
    unfold C
    simp [show (3779136 * k + 2116642) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1058321) = 5668704 * k + 3174964 := by
    unfold C
    simp [show (1889568 * k + 1058321) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3174964) = 2834352 * k + 1587482 := by
    unfold C
    simp [show (5668704 * k + 3174964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1587482) = 1417176 * k + 793741 := by
    unfold C
    simp [show (2834352 * k + 1587482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 793741) = 4251528 * k + 2381224 := by
    unfold C
    simp [show (1417176 * k + 793741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2381224) = 2125764 * k + 1190612 := by
    unfold C
    simp [show (4251528 * k + 2381224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1190612) = 1062882 * k + 595306 := by
    unfold C
    simp [show (2125764 * k + 1190612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 595306) = 531441 * k + 297653 := by
    unfold C
    simp [show (1062882 * k + 595306) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 587291) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 587291)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_588059 : ∀ k : Nat,
    iterate (1048576 * k + 588059) 32 = 531441 * k + 298042 ∧
      531441 * k + 298042 < 1048576 * k + 588059 := by
  intro k
  have h1 : C (1048576 * k + 588059) = 3145728 * k + 1764178 := by
    unfold C
    simp [show (1048576 * k + 588059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1764178) = 1572864 * k + 882089 := by
    unfold C
    simp [show (3145728 * k + 1764178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 882089) = 4718592 * k + 2646268 := by
    unfold C
    simp [show (1572864 * k + 882089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2646268) = 2359296 * k + 1323134 := by
    unfold C
    simp [show (4718592 * k + 2646268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1323134) = 1179648 * k + 661567 := by
    unfold C
    simp [show (2359296 * k + 1323134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 661567) = 3538944 * k + 1984702 := by
    unfold C
    simp [show (1179648 * k + 661567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1984702) = 1769472 * k + 992351 := by
    unfold C
    simp [show (3538944 * k + 1984702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 992351) = 5308416 * k + 2977054 := by
    unfold C
    simp [show (1769472 * k + 992351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2977054) = 2654208 * k + 1488527 := by
    unfold C
    simp [show (5308416 * k + 2977054) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1488527) = 7962624 * k + 4465582 := by
    unfold C
    simp [show (2654208 * k + 1488527) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4465582) = 3981312 * k + 2232791 := by
    unfold C
    simp [show (7962624 * k + 4465582) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2232791) = 11943936 * k + 6698374 := by
    unfold C
    simp [show (3981312 * k + 2232791) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6698374) = 5971968 * k + 3349187 := by
    unfold C
    simp [show (11943936 * k + 6698374) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3349187) = 17915904 * k + 10047562 := by
    unfold C
    simp [show (5971968 * k + 3349187) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10047562) = 8957952 * k + 5023781 := by
    unfold C
    simp [show (17915904 * k + 10047562) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5023781) = 26873856 * k + 15071344 := by
    unfold C
    simp [show (8957952 * k + 5023781) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15071344) = 13436928 * k + 7535672 := by
    unfold C
    simp [show (26873856 * k + 15071344) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7535672) = 6718464 * k + 3767836 := by
    unfold C
    simp [show (13436928 * k + 7535672) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3767836) = 3359232 * k + 1883918 := by
    unfold C
    simp [show (6718464 * k + 3767836) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1883918) = 1679616 * k + 941959 := by
    unfold C
    simp [show (3359232 * k + 1883918) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 941959) = 5038848 * k + 2825878 := by
    unfold C
    simp [show (1679616 * k + 941959) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2825878) = 2519424 * k + 1412939 := by
    unfold C
    simp [show (5038848 * k + 2825878) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1412939) = 7558272 * k + 4238818 := by
    unfold C
    simp [show (2519424 * k + 1412939) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4238818) = 3779136 * k + 2119409 := by
    unfold C
    simp [show (7558272 * k + 4238818) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2119409) = 11337408 * k + 6358228 := by
    unfold C
    simp [show (3779136 * k + 2119409) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6358228) = 5668704 * k + 3179114 := by
    unfold C
    simp [show (11337408 * k + 6358228) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3179114) = 2834352 * k + 1589557 := by
    unfold C
    simp [show (5668704 * k + 3179114) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1589557) = 8503056 * k + 4768672 := by
    unfold C
    simp [show (2834352 * k + 1589557) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4768672) = 4251528 * k + 2384336 := by
    unfold C
    simp [show (8503056 * k + 4768672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2384336) = 2125764 * k + 1192168 := by
    unfold C
    simp [show (4251528 * k + 2384336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1192168) = 1062882 * k + 596084 := by
    unfold C
    simp [show (2125764 * k + 1192168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 596084) = 531441 * k + 298042 := by
    unfold C
    simp [show (1062882 * k + 596084) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 588059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 588059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_588095 : ∀ k : Nat,
    iterate (1048576 * k + 588095) 32 = 531441 * k + 298060 ∧
      531441 * k + 298060 < 1048576 * k + 588095 := by
  intro k
  have h1 : C (1048576 * k + 588095) = 3145728 * k + 1764286 := by
    unfold C
    simp [show (1048576 * k + 588095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1764286) = 1572864 * k + 882143 := by
    unfold C
    simp [show (3145728 * k + 1764286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 882143) = 4718592 * k + 2646430 := by
    unfold C
    simp [show (1572864 * k + 882143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2646430) = 2359296 * k + 1323215 := by
    unfold C
    simp [show (4718592 * k + 2646430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1323215) = 7077888 * k + 3969646 := by
    unfold C
    simp [show (2359296 * k + 1323215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3969646) = 3538944 * k + 1984823 := by
    unfold C
    simp [show (7077888 * k + 3969646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1984823) = 10616832 * k + 5954470 := by
    unfold C
    simp [show (3538944 * k + 1984823) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5954470) = 5308416 * k + 2977235 := by
    unfold C
    simp [show (10616832 * k + 5954470) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2977235) = 15925248 * k + 8931706 := by
    unfold C
    simp [show (5308416 * k + 2977235) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8931706) = 7962624 * k + 4465853 := by
    unfold C
    simp [show (15925248 * k + 8931706) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4465853) = 23887872 * k + 13397560 := by
    unfold C
    simp [show (7962624 * k + 4465853) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13397560) = 11943936 * k + 6698780 := by
    unfold C
    simp [show (23887872 * k + 13397560) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6698780) = 5971968 * k + 3349390 := by
    unfold C
    simp [show (11943936 * k + 6698780) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3349390) = 2985984 * k + 1674695 := by
    unfold C
    simp [show (5971968 * k + 3349390) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1674695) = 8957952 * k + 5024086 := by
    unfold C
    simp [show (2985984 * k + 1674695) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5024086) = 4478976 * k + 2512043 := by
    unfold C
    simp [show (8957952 * k + 5024086) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2512043) = 13436928 * k + 7536130 := by
    unfold C
    simp [show (4478976 * k + 2512043) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7536130) = 6718464 * k + 3768065 := by
    unfold C
    simp [show (13436928 * k + 7536130) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3768065) = 20155392 * k + 11304196 := by
    unfold C
    simp [show (6718464 * k + 3768065) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11304196) = 10077696 * k + 5652098 := by
    unfold C
    simp [show (20155392 * k + 11304196) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5652098) = 5038848 * k + 2826049 := by
    unfold C
    simp [show (10077696 * k + 5652098) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2826049) = 15116544 * k + 8478148 := by
    unfold C
    simp [show (5038848 * k + 2826049) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8478148) = 7558272 * k + 4239074 := by
    unfold C
    simp [show (15116544 * k + 8478148) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4239074) = 3779136 * k + 2119537 := by
    unfold C
    simp [show (7558272 * k + 4239074) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2119537) = 11337408 * k + 6358612 := by
    unfold C
    simp [show (3779136 * k + 2119537) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6358612) = 5668704 * k + 3179306 := by
    unfold C
    simp [show (11337408 * k + 6358612) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3179306) = 2834352 * k + 1589653 := by
    unfold C
    simp [show (5668704 * k + 3179306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1589653) = 8503056 * k + 4768960 := by
    unfold C
    simp [show (2834352 * k + 1589653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4768960) = 4251528 * k + 2384480 := by
    unfold C
    simp [show (8503056 * k + 4768960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2384480) = 2125764 * k + 1192240 := by
    unfold C
    simp [show (4251528 * k + 2384480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1192240) = 1062882 * k + 596120 := by
    unfold C
    simp [show (2125764 * k + 1192240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 596120) = 531441 * k + 298060 := by
    unfold C
    simp [show (1062882 * k + 596120) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 588095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 588095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_588527 : ∀ k : Nat,
    iterate (1048576 * k + 588527) 32 = 531441 * k + 298279 ∧
      531441 * k + 298279 < 1048576 * k + 588527 := by
  intro k
  have h1 : C (1048576 * k + 588527) = 3145728 * k + 1765582 := by
    unfold C
    simp [show (1048576 * k + 588527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1765582) = 1572864 * k + 882791 := by
    unfold C
    simp [show (3145728 * k + 1765582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 882791) = 4718592 * k + 2648374 := by
    unfold C
    simp [show (1572864 * k + 882791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2648374) = 2359296 * k + 1324187 := by
    unfold C
    simp [show (4718592 * k + 2648374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1324187) = 7077888 * k + 3972562 := by
    unfold C
    simp [show (2359296 * k + 1324187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3972562) = 3538944 * k + 1986281 := by
    unfold C
    simp [show (7077888 * k + 3972562) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1986281) = 10616832 * k + 5958844 := by
    unfold C
    simp [show (3538944 * k + 1986281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5958844) = 5308416 * k + 2979422 := by
    unfold C
    simp [show (10616832 * k + 5958844) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2979422) = 2654208 * k + 1489711 := by
    unfold C
    simp [show (5308416 * k + 2979422) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1489711) = 7962624 * k + 4469134 := by
    unfold C
    simp [show (2654208 * k + 1489711) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4469134) = 3981312 * k + 2234567 := by
    unfold C
    simp [show (7962624 * k + 4469134) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2234567) = 11943936 * k + 6703702 := by
    unfold C
    simp [show (3981312 * k + 2234567) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6703702) = 5971968 * k + 3351851 := by
    unfold C
    simp [show (11943936 * k + 6703702) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3351851) = 17915904 * k + 10055554 := by
    unfold C
    simp [show (5971968 * k + 3351851) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10055554) = 8957952 * k + 5027777 := by
    unfold C
    simp [show (17915904 * k + 10055554) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5027777) = 26873856 * k + 15083332 := by
    unfold C
    simp [show (8957952 * k + 5027777) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15083332) = 13436928 * k + 7541666 := by
    unfold C
    simp [show (26873856 * k + 15083332) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7541666) = 6718464 * k + 3770833 := by
    unfold C
    simp [show (13436928 * k + 7541666) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3770833) = 20155392 * k + 11312500 := by
    unfold C
    simp [show (6718464 * k + 3770833) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11312500) = 10077696 * k + 5656250 := by
    unfold C
    simp [show (20155392 * k + 11312500) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5656250) = 5038848 * k + 2828125 := by
    unfold C
    simp [show (10077696 * k + 5656250) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2828125) = 15116544 * k + 8484376 := by
    unfold C
    simp [show (5038848 * k + 2828125) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8484376) = 7558272 * k + 4242188 := by
    unfold C
    simp [show (15116544 * k + 8484376) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4242188) = 3779136 * k + 2121094 := by
    unfold C
    simp [show (7558272 * k + 4242188) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2121094) = 1889568 * k + 1060547 := by
    unfold C
    simp [show (3779136 * k + 2121094) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1060547) = 5668704 * k + 3181642 := by
    unfold C
    simp [show (1889568 * k + 1060547) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3181642) = 2834352 * k + 1590821 := by
    unfold C
    simp [show (5668704 * k + 3181642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1590821) = 8503056 * k + 4772464 := by
    unfold C
    simp [show (2834352 * k + 1590821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4772464) = 4251528 * k + 2386232 := by
    unfold C
    simp [show (8503056 * k + 4772464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2386232) = 2125764 * k + 1193116 := by
    unfold C
    simp [show (4251528 * k + 2386232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1193116) = 1062882 * k + 596558 := by
    unfold C
    simp [show (2125764 * k + 1193116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 596558) = 531441 * k + 298279 := by
    unfold C
    simp [show (1062882 * k + 596558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 588527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 588527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_588783 : ∀ k : Nat,
    iterate (1048576 * k + 588783) 32 = 531441 * k + 298409 ∧
      531441 * k + 298409 < 1048576 * k + 588783 := by
  intro k
  have h1 : C (1048576 * k + 588783) = 3145728 * k + 1766350 := by
    unfold C
    simp [show (1048576 * k + 588783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1766350) = 1572864 * k + 883175 := by
    unfold C
    simp [show (3145728 * k + 1766350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 883175) = 4718592 * k + 2649526 := by
    unfold C
    simp [show (1572864 * k + 883175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2649526) = 2359296 * k + 1324763 := by
    unfold C
    simp [show (4718592 * k + 2649526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1324763) = 7077888 * k + 3974290 := by
    unfold C
    simp [show (2359296 * k + 1324763) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3974290) = 3538944 * k + 1987145 := by
    unfold C
    simp [show (7077888 * k + 3974290) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1987145) = 10616832 * k + 5961436 := by
    unfold C
    simp [show (3538944 * k + 1987145) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5961436) = 5308416 * k + 2980718 := by
    unfold C
    simp [show (10616832 * k + 5961436) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2980718) = 2654208 * k + 1490359 := by
    unfold C
    simp [show (5308416 * k + 2980718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1490359) = 7962624 * k + 4471078 := by
    unfold C
    simp [show (2654208 * k + 1490359) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4471078) = 3981312 * k + 2235539 := by
    unfold C
    simp [show (7962624 * k + 4471078) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2235539) = 11943936 * k + 6706618 := by
    unfold C
    simp [show (3981312 * k + 2235539) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6706618) = 5971968 * k + 3353309 := by
    unfold C
    simp [show (11943936 * k + 6706618) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3353309) = 17915904 * k + 10059928 := by
    unfold C
    simp [show (5971968 * k + 3353309) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10059928) = 8957952 * k + 5029964 := by
    unfold C
    simp [show (17915904 * k + 10059928) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5029964) = 4478976 * k + 2514982 := by
    unfold C
    simp [show (8957952 * k + 5029964) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2514982) = 2239488 * k + 1257491 := by
    unfold C
    simp [show (4478976 * k + 2514982) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1257491) = 6718464 * k + 3772474 := by
    unfold C
    simp [show (2239488 * k + 1257491) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3772474) = 3359232 * k + 1886237 := by
    unfold C
    simp [show (6718464 * k + 3772474) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1886237) = 10077696 * k + 5658712 := by
    unfold C
    simp [show (3359232 * k + 1886237) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5658712) = 5038848 * k + 2829356 := by
    unfold C
    simp [show (10077696 * k + 5658712) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2829356) = 2519424 * k + 1414678 := by
    unfold C
    simp [show (5038848 * k + 2829356) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1414678) = 1259712 * k + 707339 := by
    unfold C
    simp [show (2519424 * k + 1414678) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 707339) = 3779136 * k + 2122018 := by
    unfold C
    simp [show (1259712 * k + 707339) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2122018) = 1889568 * k + 1061009 := by
    unfold C
    simp [show (3779136 * k + 2122018) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1061009) = 5668704 * k + 3183028 := by
    unfold C
    simp [show (1889568 * k + 1061009) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3183028) = 2834352 * k + 1591514 := by
    unfold C
    simp [show (5668704 * k + 3183028) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1591514) = 1417176 * k + 795757 := by
    unfold C
    simp [show (2834352 * k + 1591514) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 795757) = 4251528 * k + 2387272 := by
    unfold C
    simp [show (1417176 * k + 795757) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2387272) = 2125764 * k + 1193636 := by
    unfold C
    simp [show (4251528 * k + 2387272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1193636) = 1062882 * k + 596818 := by
    unfold C
    simp [show (2125764 * k + 1193636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 596818) = 531441 * k + 298409 := by
    unfold C
    simp [show (1062882 * k + 596818) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 588783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 588783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_589551 : ∀ k : Nat,
    iterate (1048576 * k + 589551) 32 = 531441 * k + 298798 ∧
      531441 * k + 298798 < 1048576 * k + 589551 := by
  intro k
  have h1 : C (1048576 * k + 589551) = 3145728 * k + 1768654 := by
    unfold C
    simp [show (1048576 * k + 589551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1768654) = 1572864 * k + 884327 := by
    unfold C
    simp [show (3145728 * k + 1768654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 884327) = 4718592 * k + 2652982 := by
    unfold C
    simp [show (1572864 * k + 884327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2652982) = 2359296 * k + 1326491 := by
    unfold C
    simp [show (4718592 * k + 2652982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1326491) = 7077888 * k + 3979474 := by
    unfold C
    simp [show (2359296 * k + 1326491) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3979474) = 3538944 * k + 1989737 := by
    unfold C
    simp [show (7077888 * k + 3979474) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1989737) = 10616832 * k + 5969212 := by
    unfold C
    simp [show (3538944 * k + 1989737) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5969212) = 5308416 * k + 2984606 := by
    unfold C
    simp [show (10616832 * k + 5969212) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2984606) = 2654208 * k + 1492303 := by
    unfold C
    simp [show (5308416 * k + 2984606) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1492303) = 7962624 * k + 4476910 := by
    unfold C
    simp [show (2654208 * k + 1492303) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4476910) = 3981312 * k + 2238455 := by
    unfold C
    simp [show (7962624 * k + 4476910) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2238455) = 11943936 * k + 6715366 := by
    unfold C
    simp [show (3981312 * k + 2238455) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6715366) = 5971968 * k + 3357683 := by
    unfold C
    simp [show (11943936 * k + 6715366) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3357683) = 17915904 * k + 10073050 := by
    unfold C
    simp [show (5971968 * k + 3357683) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10073050) = 8957952 * k + 5036525 := by
    unfold C
    simp [show (17915904 * k + 10073050) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5036525) = 26873856 * k + 15109576 := by
    unfold C
    simp [show (8957952 * k + 5036525) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15109576) = 13436928 * k + 7554788 := by
    unfold C
    simp [show (26873856 * k + 15109576) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7554788) = 6718464 * k + 3777394 := by
    unfold C
    simp [show (13436928 * k + 7554788) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3777394) = 3359232 * k + 1888697 := by
    unfold C
    simp [show (6718464 * k + 3777394) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1888697) = 10077696 * k + 5666092 := by
    unfold C
    simp [show (3359232 * k + 1888697) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5666092) = 5038848 * k + 2833046 := by
    unfold C
    simp [show (10077696 * k + 5666092) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2833046) = 2519424 * k + 1416523 := by
    unfold C
    simp [show (5038848 * k + 2833046) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1416523) = 7558272 * k + 4249570 := by
    unfold C
    simp [show (2519424 * k + 1416523) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4249570) = 3779136 * k + 2124785 := by
    unfold C
    simp [show (7558272 * k + 4249570) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2124785) = 11337408 * k + 6374356 := by
    unfold C
    simp [show (3779136 * k + 2124785) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6374356) = 5668704 * k + 3187178 := by
    unfold C
    simp [show (11337408 * k + 6374356) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3187178) = 2834352 * k + 1593589 := by
    unfold C
    simp [show (5668704 * k + 3187178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1593589) = 8503056 * k + 4780768 := by
    unfold C
    simp [show (2834352 * k + 1593589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4780768) = 4251528 * k + 2390384 := by
    unfold C
    simp [show (8503056 * k + 4780768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2390384) = 2125764 * k + 1195192 := by
    unfold C
    simp [show (4251528 * k + 2390384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1195192) = 1062882 * k + 597596 := by
    unfold C
    simp [show (2125764 * k + 1195192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 597596) = 531441 * k + 298798 := by
    unfold C
    simp [show (1062882 * k + 597596) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 589551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 589551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard075
