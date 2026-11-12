import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard021

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_149919 : ∀ k : Nat,
    iterate (1048576 * k + 149919) 32 = 531441 * k + 75983 ∧
      531441 * k + 75983 < 1048576 * k + 149919 := by
  intro k
  have h1 : C (1048576 * k + 149919) = 3145728 * k + 449758 := by
    unfold C
    simp [show (1048576 * k + 149919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 449758) = 1572864 * k + 224879 := by
    unfold C
    simp [show (3145728 * k + 449758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 224879) = 4718592 * k + 674638 := by
    unfold C
    simp [show (1572864 * k + 224879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 674638) = 2359296 * k + 337319 := by
    unfold C
    simp [show (4718592 * k + 674638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 337319) = 7077888 * k + 1011958 := by
    unfold C
    simp [show (2359296 * k + 337319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1011958) = 3538944 * k + 505979 := by
    unfold C
    simp [show (7077888 * k + 1011958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 505979) = 10616832 * k + 1517938 := by
    unfold C
    simp [show (3538944 * k + 505979) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1517938) = 5308416 * k + 758969 := by
    unfold C
    simp [show (10616832 * k + 1517938) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 758969) = 15925248 * k + 2276908 := by
    unfold C
    simp [show (5308416 * k + 758969) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2276908) = 7962624 * k + 1138454 := by
    unfold C
    simp [show (15925248 * k + 2276908) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1138454) = 3981312 * k + 569227 := by
    unfold C
    simp [show (7962624 * k + 1138454) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 569227) = 11943936 * k + 1707682 := by
    unfold C
    simp [show (3981312 * k + 569227) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1707682) = 5971968 * k + 853841 := by
    unfold C
    simp [show (11943936 * k + 1707682) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 853841) = 17915904 * k + 2561524 := by
    unfold C
    simp [show (5971968 * k + 853841) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2561524) = 8957952 * k + 1280762 := by
    unfold C
    simp [show (17915904 * k + 2561524) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1280762) = 4478976 * k + 640381 := by
    unfold C
    simp [show (8957952 * k + 1280762) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 640381) = 13436928 * k + 1921144 := by
    unfold C
    simp [show (4478976 * k + 640381) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1921144) = 6718464 * k + 960572 := by
    unfold C
    simp [show (13436928 * k + 1921144) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 960572) = 3359232 * k + 480286 := by
    unfold C
    simp [show (6718464 * k + 960572) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 480286) = 1679616 * k + 240143 := by
    unfold C
    simp [show (3359232 * k + 480286) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 240143) = 5038848 * k + 720430 := by
    unfold C
    simp [show (1679616 * k + 240143) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 720430) = 2519424 * k + 360215 := by
    unfold C
    simp [show (5038848 * k + 720430) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 360215) = 7558272 * k + 1080646 := by
    unfold C
    simp [show (2519424 * k + 360215) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1080646) = 3779136 * k + 540323 := by
    unfold C
    simp [show (7558272 * k + 1080646) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 540323) = 11337408 * k + 1620970 := by
    unfold C
    simp [show (3779136 * k + 540323) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1620970) = 5668704 * k + 810485 := by
    unfold C
    simp [show (11337408 * k + 1620970) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 810485) = 17006112 * k + 2431456 := by
    unfold C
    simp [show (5668704 * k + 810485) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2431456) = 8503056 * k + 1215728 := by
    unfold C
    simp [show (17006112 * k + 2431456) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1215728) = 4251528 * k + 607864 := by
    unfold C
    simp [show (8503056 * k + 1215728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 607864) = 2125764 * k + 303932 := by
    unfold C
    simp [show (4251528 * k + 607864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 303932) = 1062882 * k + 151966 := by
    unfold C
    simp [show (2125764 * k + 303932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 151966) = 531441 * k + 75983 := by
    unfold C
    simp [show (1062882 * k + 151966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 149919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 149919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_150511 : ∀ k : Nat,
    iterate (1048576 * k + 150511) 32 = 531441 * k + 76283 ∧
      531441 * k + 76283 < 1048576 * k + 150511 := by
  intro k
  have h1 : C (1048576 * k + 150511) = 3145728 * k + 451534 := by
    unfold C
    simp [show (1048576 * k + 150511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 451534) = 1572864 * k + 225767 := by
    unfold C
    simp [show (3145728 * k + 451534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 225767) = 4718592 * k + 677302 := by
    unfold C
    simp [show (1572864 * k + 225767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 677302) = 2359296 * k + 338651 := by
    unfold C
    simp [show (4718592 * k + 677302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 338651) = 7077888 * k + 1015954 := by
    unfold C
    simp [show (2359296 * k + 338651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1015954) = 3538944 * k + 507977 := by
    unfold C
    simp [show (7077888 * k + 1015954) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 507977) = 10616832 * k + 1523932 := by
    unfold C
    simp [show (3538944 * k + 507977) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1523932) = 5308416 * k + 761966 := by
    unfold C
    simp [show (10616832 * k + 1523932) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 761966) = 2654208 * k + 380983 := by
    unfold C
    simp [show (5308416 * k + 761966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 380983) = 7962624 * k + 1142950 := by
    unfold C
    simp [show (2654208 * k + 380983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1142950) = 3981312 * k + 571475 := by
    unfold C
    simp [show (7962624 * k + 1142950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 571475) = 11943936 * k + 1714426 := by
    unfold C
    simp [show (3981312 * k + 571475) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1714426) = 5971968 * k + 857213 := by
    unfold C
    simp [show (11943936 * k + 1714426) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 857213) = 17915904 * k + 2571640 := by
    unfold C
    simp [show (5971968 * k + 857213) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2571640) = 8957952 * k + 1285820 := by
    unfold C
    simp [show (17915904 * k + 2571640) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1285820) = 4478976 * k + 642910 := by
    unfold C
    simp [show (8957952 * k + 1285820) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 642910) = 2239488 * k + 321455 := by
    unfold C
    simp [show (4478976 * k + 642910) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 321455) = 6718464 * k + 964366 := by
    unfold C
    simp [show (2239488 * k + 321455) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 964366) = 3359232 * k + 482183 := by
    unfold C
    simp [show (6718464 * k + 964366) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 482183) = 10077696 * k + 1446550 := by
    unfold C
    simp [show (3359232 * k + 482183) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1446550) = 5038848 * k + 723275 := by
    unfold C
    simp [show (10077696 * k + 1446550) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 723275) = 15116544 * k + 2169826 := by
    unfold C
    simp [show (5038848 * k + 723275) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2169826) = 7558272 * k + 1084913 := by
    unfold C
    simp [show (15116544 * k + 2169826) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1084913) = 22674816 * k + 3254740 := by
    unfold C
    simp [show (7558272 * k + 1084913) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3254740) = 11337408 * k + 1627370 := by
    unfold C
    simp [show (22674816 * k + 3254740) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1627370) = 5668704 * k + 813685 := by
    unfold C
    simp [show (11337408 * k + 1627370) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 813685) = 17006112 * k + 2441056 := by
    unfold C
    simp [show (5668704 * k + 813685) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2441056) = 8503056 * k + 1220528 := by
    unfold C
    simp [show (17006112 * k + 2441056) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1220528) = 4251528 * k + 610264 := by
    unfold C
    simp [show (8503056 * k + 1220528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 610264) = 2125764 * k + 305132 := by
    unfold C
    simp [show (4251528 * k + 610264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 305132) = 1062882 * k + 152566 := by
    unfold C
    simp [show (2125764 * k + 305132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 152566) = 531441 * k + 76283 := by
    unfold C
    simp [show (1062882 * k + 152566) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 150511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 150511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_150639 : ∀ k : Nat,
    iterate (1048576 * k + 150639) 32 = 531441 * k + 76348 ∧
      531441 * k + 76348 < 1048576 * k + 150639 := by
  intro k
  have h1 : C (1048576 * k + 150639) = 3145728 * k + 451918 := by
    unfold C
    simp [show (1048576 * k + 150639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 451918) = 1572864 * k + 225959 := by
    unfold C
    simp [show (3145728 * k + 451918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 225959) = 4718592 * k + 677878 := by
    unfold C
    simp [show (1572864 * k + 225959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 677878) = 2359296 * k + 338939 := by
    unfold C
    simp [show (4718592 * k + 677878) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 338939) = 7077888 * k + 1016818 := by
    unfold C
    simp [show (2359296 * k + 338939) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1016818) = 3538944 * k + 508409 := by
    unfold C
    simp [show (7077888 * k + 1016818) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 508409) = 10616832 * k + 1525228 := by
    unfold C
    simp [show (3538944 * k + 508409) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1525228) = 5308416 * k + 762614 := by
    unfold C
    simp [show (10616832 * k + 1525228) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 762614) = 2654208 * k + 381307 := by
    unfold C
    simp [show (5308416 * k + 762614) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 381307) = 7962624 * k + 1143922 := by
    unfold C
    simp [show (2654208 * k + 381307) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1143922) = 3981312 * k + 571961 := by
    unfold C
    simp [show (7962624 * k + 1143922) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 571961) = 11943936 * k + 1715884 := by
    unfold C
    simp [show (3981312 * k + 571961) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1715884) = 5971968 * k + 857942 := by
    unfold C
    simp [show (11943936 * k + 1715884) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 857942) = 2985984 * k + 428971 := by
    unfold C
    simp [show (5971968 * k + 857942) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 428971) = 8957952 * k + 1286914 := by
    unfold C
    simp [show (2985984 * k + 428971) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1286914) = 4478976 * k + 643457 := by
    unfold C
    simp [show (8957952 * k + 1286914) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 643457) = 13436928 * k + 1930372 := by
    unfold C
    simp [show (4478976 * k + 643457) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1930372) = 6718464 * k + 965186 := by
    unfold C
    simp [show (13436928 * k + 1930372) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 965186) = 3359232 * k + 482593 := by
    unfold C
    simp [show (6718464 * k + 965186) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 482593) = 10077696 * k + 1447780 := by
    unfold C
    simp [show (3359232 * k + 482593) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1447780) = 5038848 * k + 723890 := by
    unfold C
    simp [show (10077696 * k + 1447780) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 723890) = 2519424 * k + 361945 := by
    unfold C
    simp [show (5038848 * k + 723890) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 361945) = 7558272 * k + 1085836 := by
    unfold C
    simp [show (2519424 * k + 361945) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1085836) = 3779136 * k + 542918 := by
    unfold C
    simp [show (7558272 * k + 1085836) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 542918) = 1889568 * k + 271459 := by
    unfold C
    simp [show (3779136 * k + 542918) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 271459) = 5668704 * k + 814378 := by
    unfold C
    simp [show (1889568 * k + 271459) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 814378) = 2834352 * k + 407189 := by
    unfold C
    simp [show (5668704 * k + 814378) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 407189) = 8503056 * k + 1221568 := by
    unfold C
    simp [show (2834352 * k + 407189) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1221568) = 4251528 * k + 610784 := by
    unfold C
    simp [show (8503056 * k + 1221568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 610784) = 2125764 * k + 305392 := by
    unfold C
    simp [show (4251528 * k + 610784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 305392) = 1062882 * k + 152696 := by
    unfold C
    simp [show (2125764 * k + 305392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 152696) = 531441 * k + 76348 := by
    unfold C
    simp [show (1062882 * k + 152696) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 150639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 150639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_150735 : ∀ k : Nat,
    iterate (1048576 * k + 150735) 32 = 531441 * k + 76397 ∧
      531441 * k + 76397 < 1048576 * k + 150735 := by
  intro k
  have h1 : C (1048576 * k + 150735) = 3145728 * k + 452206 := by
    unfold C
    simp [show (1048576 * k + 150735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 452206) = 1572864 * k + 226103 := by
    unfold C
    simp [show (3145728 * k + 452206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 226103) = 4718592 * k + 678310 := by
    unfold C
    simp [show (1572864 * k + 226103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 678310) = 2359296 * k + 339155 := by
    unfold C
    simp [show (4718592 * k + 678310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 339155) = 7077888 * k + 1017466 := by
    unfold C
    simp [show (2359296 * k + 339155) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1017466) = 3538944 * k + 508733 := by
    unfold C
    simp [show (7077888 * k + 1017466) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 508733) = 10616832 * k + 1526200 := by
    unfold C
    simp [show (3538944 * k + 508733) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1526200) = 5308416 * k + 763100 := by
    unfold C
    simp [show (10616832 * k + 1526200) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 763100) = 2654208 * k + 381550 := by
    unfold C
    simp [show (5308416 * k + 763100) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 381550) = 1327104 * k + 190775 := by
    unfold C
    simp [show (2654208 * k + 381550) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 190775) = 3981312 * k + 572326 := by
    unfold C
    simp [show (1327104 * k + 190775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 572326) = 1990656 * k + 286163 := by
    unfold C
    simp [show (3981312 * k + 572326) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 286163) = 5971968 * k + 858490 := by
    unfold C
    simp [show (1990656 * k + 286163) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 858490) = 2985984 * k + 429245 := by
    unfold C
    simp [show (5971968 * k + 858490) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 429245) = 8957952 * k + 1287736 := by
    unfold C
    simp [show (2985984 * k + 429245) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1287736) = 4478976 * k + 643868 := by
    unfold C
    simp [show (8957952 * k + 1287736) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 643868) = 2239488 * k + 321934 := by
    unfold C
    simp [show (4478976 * k + 643868) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 321934) = 1119744 * k + 160967 := by
    unfold C
    simp [show (2239488 * k + 321934) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 160967) = 3359232 * k + 482902 := by
    unfold C
    simp [show (1119744 * k + 160967) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 482902) = 1679616 * k + 241451 := by
    unfold C
    simp [show (3359232 * k + 482902) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 241451) = 5038848 * k + 724354 := by
    unfold C
    simp [show (1679616 * k + 241451) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 724354) = 2519424 * k + 362177 := by
    unfold C
    simp [show (5038848 * k + 724354) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 362177) = 7558272 * k + 1086532 := by
    unfold C
    simp [show (2519424 * k + 362177) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1086532) = 3779136 * k + 543266 := by
    unfold C
    simp [show (7558272 * k + 1086532) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 543266) = 1889568 * k + 271633 := by
    unfold C
    simp [show (3779136 * k + 543266) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 271633) = 5668704 * k + 814900 := by
    unfold C
    simp [show (1889568 * k + 271633) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 814900) = 2834352 * k + 407450 := by
    unfold C
    simp [show (5668704 * k + 814900) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 407450) = 1417176 * k + 203725 := by
    unfold C
    simp [show (2834352 * k + 407450) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 203725) = 4251528 * k + 611176 := by
    unfold C
    simp [show (1417176 * k + 203725) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 611176) = 2125764 * k + 305588 := by
    unfold C
    simp [show (4251528 * k + 611176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 305588) = 1062882 * k + 152794 := by
    unfold C
    simp [show (2125764 * k + 305588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 152794) = 531441 * k + 76397 := by
    unfold C
    simp [show (1062882 * k + 152794) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 150735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 150735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_150943 : ∀ k : Nat,
    iterate (1048576 * k + 150943) 32 = 531441 * k + 76502 ∧
      531441 * k + 76502 < 1048576 * k + 150943 := by
  intro k
  have h1 : C (1048576 * k + 150943) = 3145728 * k + 452830 := by
    unfold C
    simp [show (1048576 * k + 150943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 452830) = 1572864 * k + 226415 := by
    unfold C
    simp [show (3145728 * k + 452830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 226415) = 4718592 * k + 679246 := by
    unfold C
    simp [show (1572864 * k + 226415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 679246) = 2359296 * k + 339623 := by
    unfold C
    simp [show (4718592 * k + 679246) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 339623) = 7077888 * k + 1018870 := by
    unfold C
    simp [show (2359296 * k + 339623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1018870) = 3538944 * k + 509435 := by
    unfold C
    simp [show (7077888 * k + 1018870) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 509435) = 10616832 * k + 1528306 := by
    unfold C
    simp [show (3538944 * k + 509435) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1528306) = 5308416 * k + 764153 := by
    unfold C
    simp [show (10616832 * k + 1528306) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 764153) = 15925248 * k + 2292460 := by
    unfold C
    simp [show (5308416 * k + 764153) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2292460) = 7962624 * k + 1146230 := by
    unfold C
    simp [show (15925248 * k + 2292460) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1146230) = 3981312 * k + 573115 := by
    unfold C
    simp [show (7962624 * k + 1146230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 573115) = 11943936 * k + 1719346 := by
    unfold C
    simp [show (3981312 * k + 573115) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1719346) = 5971968 * k + 859673 := by
    unfold C
    simp [show (11943936 * k + 1719346) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 859673) = 17915904 * k + 2579020 := by
    unfold C
    simp [show (5971968 * k + 859673) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2579020) = 8957952 * k + 1289510 := by
    unfold C
    simp [show (17915904 * k + 2579020) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1289510) = 4478976 * k + 644755 := by
    unfold C
    simp [show (8957952 * k + 1289510) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 644755) = 13436928 * k + 1934266 := by
    unfold C
    simp [show (4478976 * k + 644755) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1934266) = 6718464 * k + 967133 := by
    unfold C
    simp [show (13436928 * k + 1934266) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 967133) = 20155392 * k + 2901400 := by
    unfold C
    simp [show (6718464 * k + 967133) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2901400) = 10077696 * k + 1450700 := by
    unfold C
    simp [show (20155392 * k + 2901400) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1450700) = 5038848 * k + 725350 := by
    unfold C
    simp [show (10077696 * k + 1450700) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 725350) = 2519424 * k + 362675 := by
    unfold C
    simp [show (5038848 * k + 725350) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 362675) = 7558272 * k + 1088026 := by
    unfold C
    simp [show (2519424 * k + 362675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1088026) = 3779136 * k + 544013 := by
    unfold C
    simp [show (7558272 * k + 1088026) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 544013) = 11337408 * k + 1632040 := by
    unfold C
    simp [show (3779136 * k + 544013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1632040) = 5668704 * k + 816020 := by
    unfold C
    simp [show (11337408 * k + 1632040) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 816020) = 2834352 * k + 408010 := by
    unfold C
    simp [show (5668704 * k + 816020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 408010) = 1417176 * k + 204005 := by
    unfold C
    simp [show (2834352 * k + 408010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 204005) = 4251528 * k + 612016 := by
    unfold C
    simp [show (1417176 * k + 204005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 612016) = 2125764 * k + 306008 := by
    unfold C
    simp [show (4251528 * k + 612016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 306008) = 1062882 * k + 153004 := by
    unfold C
    simp [show (2125764 * k + 306008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 153004) = 531441 * k + 76502 := by
    unfold C
    simp [show (1062882 * k + 153004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 150943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 150943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_151463 : ∀ k : Nat,
    iterate (1048576 * k + 151463) 32 = 531441 * k + 76766 ∧
      531441 * k + 76766 < 1048576 * k + 151463 := by
  intro k
  have h1 : C (1048576 * k + 151463) = 3145728 * k + 454390 := by
    unfold C
    simp [show (1048576 * k + 151463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 454390) = 1572864 * k + 227195 := by
    unfold C
    simp [show (3145728 * k + 454390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 227195) = 4718592 * k + 681586 := by
    unfold C
    simp [show (1572864 * k + 227195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 681586) = 2359296 * k + 340793 := by
    unfold C
    simp [show (4718592 * k + 681586) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 340793) = 7077888 * k + 1022380 := by
    unfold C
    simp [show (2359296 * k + 340793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1022380) = 3538944 * k + 511190 := by
    unfold C
    simp [show (7077888 * k + 1022380) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 511190) = 1769472 * k + 255595 := by
    unfold C
    simp [show (3538944 * k + 511190) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 255595) = 5308416 * k + 766786 := by
    unfold C
    simp [show (1769472 * k + 255595) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 766786) = 2654208 * k + 383393 := by
    unfold C
    simp [show (5308416 * k + 766786) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 383393) = 7962624 * k + 1150180 := by
    unfold C
    simp [show (2654208 * k + 383393) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1150180) = 3981312 * k + 575090 := by
    unfold C
    simp [show (7962624 * k + 1150180) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 575090) = 1990656 * k + 287545 := by
    unfold C
    simp [show (3981312 * k + 575090) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 287545) = 5971968 * k + 862636 := by
    unfold C
    simp [show (1990656 * k + 287545) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 862636) = 2985984 * k + 431318 := by
    unfold C
    simp [show (5971968 * k + 862636) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 431318) = 1492992 * k + 215659 := by
    unfold C
    simp [show (2985984 * k + 431318) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 215659) = 4478976 * k + 646978 := by
    unfold C
    simp [show (1492992 * k + 215659) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 646978) = 2239488 * k + 323489 := by
    unfold C
    simp [show (4478976 * k + 646978) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 323489) = 6718464 * k + 970468 := by
    unfold C
    simp [show (2239488 * k + 323489) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 970468) = 3359232 * k + 485234 := by
    unfold C
    simp [show (6718464 * k + 970468) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 485234) = 1679616 * k + 242617 := by
    unfold C
    simp [show (3359232 * k + 485234) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 242617) = 5038848 * k + 727852 := by
    unfold C
    simp [show (1679616 * k + 242617) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 727852) = 2519424 * k + 363926 := by
    unfold C
    simp [show (5038848 * k + 727852) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 363926) = 1259712 * k + 181963 := by
    unfold C
    simp [show (2519424 * k + 363926) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 181963) = 3779136 * k + 545890 := by
    unfold C
    simp [show (1259712 * k + 181963) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 545890) = 1889568 * k + 272945 := by
    unfold C
    simp [show (3779136 * k + 545890) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 272945) = 5668704 * k + 818836 := by
    unfold C
    simp [show (1889568 * k + 272945) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 818836) = 2834352 * k + 409418 := by
    unfold C
    simp [show (5668704 * k + 818836) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 409418) = 1417176 * k + 204709 := by
    unfold C
    simp [show (2834352 * k + 409418) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 204709) = 4251528 * k + 614128 := by
    unfold C
    simp [show (1417176 * k + 204709) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 614128) = 2125764 * k + 307064 := by
    unfold C
    simp [show (4251528 * k + 614128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 307064) = 1062882 * k + 153532 := by
    unfold C
    simp [show (2125764 * k + 307064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 153532) = 531441 * k + 76766 := by
    unfold C
    simp [show (1062882 * k + 153532) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 151463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 151463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_151623 : ∀ k : Nat,
    iterate (1048576 * k + 151623) 32 = 531441 * k + 76847 ∧
      531441 * k + 76847 < 1048576 * k + 151623 := by
  intro k
  have h1 : C (1048576 * k + 151623) = 3145728 * k + 454870 := by
    unfold C
    simp [show (1048576 * k + 151623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 454870) = 1572864 * k + 227435 := by
    unfold C
    simp [show (3145728 * k + 454870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 227435) = 4718592 * k + 682306 := by
    unfold C
    simp [show (1572864 * k + 227435) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 682306) = 2359296 * k + 341153 := by
    unfold C
    simp [show (4718592 * k + 682306) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 341153) = 7077888 * k + 1023460 := by
    unfold C
    simp [show (2359296 * k + 341153) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1023460) = 3538944 * k + 511730 := by
    unfold C
    simp [show (7077888 * k + 1023460) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 511730) = 1769472 * k + 255865 := by
    unfold C
    simp [show (3538944 * k + 511730) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 255865) = 5308416 * k + 767596 := by
    unfold C
    simp [show (1769472 * k + 255865) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 767596) = 2654208 * k + 383798 := by
    unfold C
    simp [show (5308416 * k + 767596) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 383798) = 1327104 * k + 191899 := by
    unfold C
    simp [show (2654208 * k + 383798) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 191899) = 3981312 * k + 575698 := by
    unfold C
    simp [show (1327104 * k + 191899) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 575698) = 1990656 * k + 287849 := by
    unfold C
    simp [show (3981312 * k + 575698) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 287849) = 5971968 * k + 863548 := by
    unfold C
    simp [show (1990656 * k + 287849) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 863548) = 2985984 * k + 431774 := by
    unfold C
    simp [show (5971968 * k + 863548) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 431774) = 1492992 * k + 215887 := by
    unfold C
    simp [show (2985984 * k + 431774) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 215887) = 4478976 * k + 647662 := by
    unfold C
    simp [show (1492992 * k + 215887) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 647662) = 2239488 * k + 323831 := by
    unfold C
    simp [show (4478976 * k + 647662) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 323831) = 6718464 * k + 971494 := by
    unfold C
    simp [show (2239488 * k + 323831) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 971494) = 3359232 * k + 485747 := by
    unfold C
    simp [show (6718464 * k + 971494) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 485747) = 10077696 * k + 1457242 := by
    unfold C
    simp [show (3359232 * k + 485747) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1457242) = 5038848 * k + 728621 := by
    unfold C
    simp [show (10077696 * k + 1457242) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 728621) = 15116544 * k + 2185864 := by
    unfold C
    simp [show (5038848 * k + 728621) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2185864) = 7558272 * k + 1092932 := by
    unfold C
    simp [show (15116544 * k + 2185864) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1092932) = 3779136 * k + 546466 := by
    unfold C
    simp [show (7558272 * k + 1092932) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 546466) = 1889568 * k + 273233 := by
    unfold C
    simp [show (3779136 * k + 546466) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 273233) = 5668704 * k + 819700 := by
    unfold C
    simp [show (1889568 * k + 273233) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 819700) = 2834352 * k + 409850 := by
    unfold C
    simp [show (5668704 * k + 819700) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 409850) = 1417176 * k + 204925 := by
    unfold C
    simp [show (2834352 * k + 409850) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 204925) = 4251528 * k + 614776 := by
    unfold C
    simp [show (1417176 * k + 204925) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 614776) = 2125764 * k + 307388 := by
    unfold C
    simp [show (4251528 * k + 614776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 307388) = 1062882 * k + 153694 := by
    unfold C
    simp [show (2125764 * k + 307388) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 153694) = 531441 * k + 76847 := by
    unfold C
    simp [show (1062882 * k + 153694) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 151623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 151623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_151711 : ∀ k : Nat,
    iterate (1048576 * k + 151711) 32 = 531441 * k + 76891 ∧
      531441 * k + 76891 < 1048576 * k + 151711 := by
  intro k
  have h1 : C (1048576 * k + 151711) = 3145728 * k + 455134 := by
    unfold C
    simp [show (1048576 * k + 151711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 455134) = 1572864 * k + 227567 := by
    unfold C
    simp [show (3145728 * k + 455134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 227567) = 4718592 * k + 682702 := by
    unfold C
    simp [show (1572864 * k + 227567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 682702) = 2359296 * k + 341351 := by
    unfold C
    simp [show (4718592 * k + 682702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 341351) = 7077888 * k + 1024054 := by
    unfold C
    simp [show (2359296 * k + 341351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1024054) = 3538944 * k + 512027 := by
    unfold C
    simp [show (7077888 * k + 1024054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 512027) = 10616832 * k + 1536082 := by
    unfold C
    simp [show (3538944 * k + 512027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1536082) = 5308416 * k + 768041 := by
    unfold C
    simp [show (10616832 * k + 1536082) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 768041) = 15925248 * k + 2304124 := by
    unfold C
    simp [show (5308416 * k + 768041) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2304124) = 7962624 * k + 1152062 := by
    unfold C
    simp [show (15925248 * k + 2304124) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1152062) = 3981312 * k + 576031 := by
    unfold C
    simp [show (7962624 * k + 1152062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 576031) = 11943936 * k + 1728094 := by
    unfold C
    simp [show (3981312 * k + 576031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1728094) = 5971968 * k + 864047 := by
    unfold C
    simp [show (11943936 * k + 1728094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 864047) = 17915904 * k + 2592142 := by
    unfold C
    simp [show (5971968 * k + 864047) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2592142) = 8957952 * k + 1296071 := by
    unfold C
    simp [show (17915904 * k + 2592142) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1296071) = 26873856 * k + 3888214 := by
    unfold C
    simp [show (8957952 * k + 1296071) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3888214) = 13436928 * k + 1944107 := by
    unfold C
    simp [show (26873856 * k + 3888214) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1944107) = 40310784 * k + 5832322 := by
    unfold C
    simp [show (13436928 * k + 1944107) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 5832322) = 20155392 * k + 2916161 := by
    unfold C
    simp [show (40310784 * k + 5832322) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2916161) = 60466176 * k + 8748484 := by
    unfold C
    simp [show (20155392 * k + 2916161) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 8748484) = 30233088 * k + 4374242 := by
    unfold C
    simp [show (60466176 * k + 8748484) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4374242) = 15116544 * k + 2187121 := by
    unfold C
    simp [show (30233088 * k + 4374242) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2187121) = 45349632 * k + 6561364 := by
    unfold C
    simp [show (15116544 * k + 2187121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 6561364) = 22674816 * k + 3280682 := by
    unfold C
    simp [show (45349632 * k + 6561364) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3280682) = 11337408 * k + 1640341 := by
    unfold C
    simp [show (22674816 * k + 3280682) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1640341) = 34012224 * k + 4921024 := by
    unfold C
    simp [show (11337408 * k + 1640341) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 4921024) = 17006112 * k + 2460512 := by
    unfold C
    simp [show (34012224 * k + 4921024) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2460512) = 8503056 * k + 1230256 := by
    unfold C
    simp [show (17006112 * k + 2460512) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1230256) = 4251528 * k + 615128 := by
    unfold C
    simp [show (8503056 * k + 1230256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 615128) = 2125764 * k + 307564 := by
    unfold C
    simp [show (4251528 * k + 615128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 307564) = 1062882 * k + 153782 := by
    unfold C
    simp [show (2125764 * k + 307564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 153782) = 531441 * k + 76891 := by
    unfold C
    simp [show (1062882 * k + 153782) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 151711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 151711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_152231 : ∀ k : Nat,
    iterate (1048576 * k + 152231) 32 = 531441 * k + 77155 ∧
      531441 * k + 77155 < 1048576 * k + 152231 := by
  intro k
  have h1 : C (1048576 * k + 152231) = 3145728 * k + 456694 := by
    unfold C
    simp [show (1048576 * k + 152231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 456694) = 1572864 * k + 228347 := by
    unfold C
    simp [show (3145728 * k + 456694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 228347) = 4718592 * k + 685042 := by
    unfold C
    simp [show (1572864 * k + 228347) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 685042) = 2359296 * k + 342521 := by
    unfold C
    simp [show (4718592 * k + 685042) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 342521) = 7077888 * k + 1027564 := by
    unfold C
    simp [show (2359296 * k + 342521) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1027564) = 3538944 * k + 513782 := by
    unfold C
    simp [show (7077888 * k + 1027564) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 513782) = 1769472 * k + 256891 := by
    unfold C
    simp [show (3538944 * k + 513782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 256891) = 5308416 * k + 770674 := by
    unfold C
    simp [show (1769472 * k + 256891) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 770674) = 2654208 * k + 385337 := by
    unfold C
    simp [show (5308416 * k + 770674) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 385337) = 7962624 * k + 1156012 := by
    unfold C
    simp [show (2654208 * k + 385337) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1156012) = 3981312 * k + 578006 := by
    unfold C
    simp [show (7962624 * k + 1156012) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 578006) = 1990656 * k + 289003 := by
    unfold C
    simp [show (3981312 * k + 578006) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 289003) = 5971968 * k + 867010 := by
    unfold C
    simp [show (1990656 * k + 289003) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 867010) = 2985984 * k + 433505 := by
    unfold C
    simp [show (5971968 * k + 867010) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 433505) = 8957952 * k + 1300516 := by
    unfold C
    simp [show (2985984 * k + 433505) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1300516) = 4478976 * k + 650258 := by
    unfold C
    simp [show (8957952 * k + 1300516) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 650258) = 2239488 * k + 325129 := by
    unfold C
    simp [show (4478976 * k + 650258) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 325129) = 6718464 * k + 975388 := by
    unfold C
    simp [show (2239488 * k + 325129) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 975388) = 3359232 * k + 487694 := by
    unfold C
    simp [show (6718464 * k + 975388) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 487694) = 1679616 * k + 243847 := by
    unfold C
    simp [show (3359232 * k + 487694) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 243847) = 5038848 * k + 731542 := by
    unfold C
    simp [show (1679616 * k + 243847) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 731542) = 2519424 * k + 365771 := by
    unfold C
    simp [show (5038848 * k + 731542) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 365771) = 7558272 * k + 1097314 := by
    unfold C
    simp [show (2519424 * k + 365771) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1097314) = 3779136 * k + 548657 := by
    unfold C
    simp [show (7558272 * k + 1097314) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 548657) = 11337408 * k + 1645972 := by
    unfold C
    simp [show (3779136 * k + 548657) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1645972) = 5668704 * k + 822986 := by
    unfold C
    simp [show (11337408 * k + 1645972) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 822986) = 2834352 * k + 411493 := by
    unfold C
    simp [show (5668704 * k + 822986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 411493) = 8503056 * k + 1234480 := by
    unfold C
    simp [show (2834352 * k + 411493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1234480) = 4251528 * k + 617240 := by
    unfold C
    simp [show (8503056 * k + 1234480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 617240) = 2125764 * k + 308620 := by
    unfold C
    simp [show (4251528 * k + 617240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 308620) = 1062882 * k + 154310 := by
    unfold C
    simp [show (2125764 * k + 308620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 154310) = 531441 * k + 77155 := by
    unfold C
    simp [show (1062882 * k + 154310) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 152231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 152231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_152391 : ∀ k : Nat,
    iterate (1048576 * k + 152391) 32 = 531441 * k + 77236 ∧
      531441 * k + 77236 < 1048576 * k + 152391 := by
  intro k
  have h1 : C (1048576 * k + 152391) = 3145728 * k + 457174 := by
    unfold C
    simp [show (1048576 * k + 152391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 457174) = 1572864 * k + 228587 := by
    unfold C
    simp [show (3145728 * k + 457174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 228587) = 4718592 * k + 685762 := by
    unfold C
    simp [show (1572864 * k + 228587) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 685762) = 2359296 * k + 342881 := by
    unfold C
    simp [show (4718592 * k + 685762) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 342881) = 7077888 * k + 1028644 := by
    unfold C
    simp [show (2359296 * k + 342881) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1028644) = 3538944 * k + 514322 := by
    unfold C
    simp [show (7077888 * k + 1028644) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 514322) = 1769472 * k + 257161 := by
    unfold C
    simp [show (3538944 * k + 514322) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 257161) = 5308416 * k + 771484 := by
    unfold C
    simp [show (1769472 * k + 257161) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 771484) = 2654208 * k + 385742 := by
    unfold C
    simp [show (5308416 * k + 771484) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 385742) = 1327104 * k + 192871 := by
    unfold C
    simp [show (2654208 * k + 385742) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 192871) = 3981312 * k + 578614 := by
    unfold C
    simp [show (1327104 * k + 192871) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 578614) = 1990656 * k + 289307 := by
    unfold C
    simp [show (3981312 * k + 578614) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 289307) = 5971968 * k + 867922 := by
    unfold C
    simp [show (1990656 * k + 289307) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 867922) = 2985984 * k + 433961 := by
    unfold C
    simp [show (5971968 * k + 867922) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 433961) = 8957952 * k + 1301884 := by
    unfold C
    simp [show (2985984 * k + 433961) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1301884) = 4478976 * k + 650942 := by
    unfold C
    simp [show (8957952 * k + 1301884) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 650942) = 2239488 * k + 325471 := by
    unfold C
    simp [show (4478976 * k + 650942) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 325471) = 6718464 * k + 976414 := by
    unfold C
    simp [show (2239488 * k + 325471) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 976414) = 3359232 * k + 488207 := by
    unfold C
    simp [show (6718464 * k + 976414) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 488207) = 10077696 * k + 1464622 := by
    unfold C
    simp [show (3359232 * k + 488207) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1464622) = 5038848 * k + 732311 := by
    unfold C
    simp [show (10077696 * k + 1464622) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 732311) = 15116544 * k + 2196934 := by
    unfold C
    simp [show (5038848 * k + 732311) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2196934) = 7558272 * k + 1098467 := by
    unfold C
    simp [show (15116544 * k + 2196934) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1098467) = 22674816 * k + 3295402 := by
    unfold C
    simp [show (7558272 * k + 1098467) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3295402) = 11337408 * k + 1647701 := by
    unfold C
    simp [show (22674816 * k + 3295402) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1647701) = 34012224 * k + 4943104 := by
    unfold C
    simp [show (11337408 * k + 1647701) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 4943104) = 17006112 * k + 2471552 := by
    unfold C
    simp [show (34012224 * k + 4943104) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2471552) = 8503056 * k + 1235776 := by
    unfold C
    simp [show (17006112 * k + 2471552) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1235776) = 4251528 * k + 617888 := by
    unfold C
    simp [show (8503056 * k + 1235776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 617888) = 2125764 * k + 308944 := by
    unfold C
    simp [show (4251528 * k + 617888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 308944) = 1062882 * k + 154472 := by
    unfold C
    simp [show (2125764 * k + 308944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 154472) = 531441 * k + 77236 := by
    unfold C
    simp [show (1062882 * k + 154472) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 152391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 152391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_152423 : ∀ k : Nat,
    iterate (1048576 * k + 152423) 32 = 531441 * k + 77252 ∧
      531441 * k + 77252 < 1048576 * k + 152423 := by
  intro k
  have h1 : C (1048576 * k + 152423) = 3145728 * k + 457270 := by
    unfold C
    simp [show (1048576 * k + 152423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 457270) = 1572864 * k + 228635 := by
    unfold C
    simp [show (3145728 * k + 457270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 228635) = 4718592 * k + 685906 := by
    unfold C
    simp [show (1572864 * k + 228635) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 685906) = 2359296 * k + 342953 := by
    unfold C
    simp [show (4718592 * k + 685906) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 342953) = 7077888 * k + 1028860 := by
    unfold C
    simp [show (2359296 * k + 342953) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1028860) = 3538944 * k + 514430 := by
    unfold C
    simp [show (7077888 * k + 1028860) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 514430) = 1769472 * k + 257215 := by
    unfold C
    simp [show (3538944 * k + 514430) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 257215) = 5308416 * k + 771646 := by
    unfold C
    simp [show (1769472 * k + 257215) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 771646) = 2654208 * k + 385823 := by
    unfold C
    simp [show (5308416 * k + 771646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 385823) = 7962624 * k + 1157470 := by
    unfold C
    simp [show (2654208 * k + 385823) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1157470) = 3981312 * k + 578735 := by
    unfold C
    simp [show (7962624 * k + 1157470) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 578735) = 11943936 * k + 1736206 := by
    unfold C
    simp [show (3981312 * k + 578735) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1736206) = 5971968 * k + 868103 := by
    unfold C
    simp [show (11943936 * k + 1736206) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 868103) = 17915904 * k + 2604310 := by
    unfold C
    simp [show (5971968 * k + 868103) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2604310) = 8957952 * k + 1302155 := by
    unfold C
    simp [show (17915904 * k + 2604310) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1302155) = 26873856 * k + 3906466 := by
    unfold C
    simp [show (8957952 * k + 1302155) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3906466) = 13436928 * k + 1953233 := by
    unfold C
    simp [show (26873856 * k + 3906466) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1953233) = 40310784 * k + 5859700 := by
    unfold C
    simp [show (13436928 * k + 1953233) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 5859700) = 20155392 * k + 2929850 := by
    unfold C
    simp [show (40310784 * k + 5859700) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2929850) = 10077696 * k + 1464925 := by
    unfold C
    simp [show (20155392 * k + 2929850) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1464925) = 30233088 * k + 4394776 := by
    unfold C
    simp [show (10077696 * k + 1464925) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4394776) = 15116544 * k + 2197388 := by
    unfold C
    simp [show (30233088 * k + 4394776) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2197388) = 7558272 * k + 1098694 := by
    unfold C
    simp [show (15116544 * k + 2197388) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1098694) = 3779136 * k + 549347 := by
    unfold C
    simp [show (7558272 * k + 1098694) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 549347) = 11337408 * k + 1648042 := by
    unfold C
    simp [show (3779136 * k + 549347) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1648042) = 5668704 * k + 824021 := by
    unfold C
    simp [show (11337408 * k + 1648042) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 824021) = 17006112 * k + 2472064 := by
    unfold C
    simp [show (5668704 * k + 824021) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2472064) = 8503056 * k + 1236032 := by
    unfold C
    simp [show (17006112 * k + 2472064) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1236032) = 4251528 * k + 618016 := by
    unfold C
    simp [show (8503056 * k + 1236032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 618016) = 2125764 * k + 309008 := by
    unfold C
    simp [show (4251528 * k + 618016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 309008) = 1062882 * k + 154504 := by
    unfold C
    simp [show (2125764 * k + 309008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 154504) = 531441 * k + 77252 := by
    unfold C
    simp [show (1062882 * k + 154504) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 152423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 152423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_153115 : ∀ k : Nat,
    iterate (1048576 * k + 153115) 32 = 531441 * k + 77603 ∧
      531441 * k + 77603 < 1048576 * k + 153115 := by
  intro k
  have h1 : C (1048576 * k + 153115) = 3145728 * k + 459346 := by
    unfold C
    simp [show (1048576 * k + 153115) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 459346) = 1572864 * k + 229673 := by
    unfold C
    simp [show (3145728 * k + 459346) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 229673) = 4718592 * k + 689020 := by
    unfold C
    simp [show (1572864 * k + 229673) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 689020) = 2359296 * k + 344510 := by
    unfold C
    simp [show (4718592 * k + 689020) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 344510) = 1179648 * k + 172255 := by
    unfold C
    simp [show (2359296 * k + 344510) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 172255) = 3538944 * k + 516766 := by
    unfold C
    simp [show (1179648 * k + 172255) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 516766) = 1769472 * k + 258383 := by
    unfold C
    simp [show (3538944 * k + 516766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 258383) = 5308416 * k + 775150 := by
    unfold C
    simp [show (1769472 * k + 258383) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 775150) = 2654208 * k + 387575 := by
    unfold C
    simp [show (5308416 * k + 775150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 387575) = 7962624 * k + 1162726 := by
    unfold C
    simp [show (2654208 * k + 387575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1162726) = 3981312 * k + 581363 := by
    unfold C
    simp [show (7962624 * k + 1162726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 581363) = 11943936 * k + 1744090 := by
    unfold C
    simp [show (3981312 * k + 581363) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1744090) = 5971968 * k + 872045 := by
    unfold C
    simp [show (11943936 * k + 1744090) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 872045) = 17915904 * k + 2616136 := by
    unfold C
    simp [show (5971968 * k + 872045) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2616136) = 8957952 * k + 1308068 := by
    unfold C
    simp [show (17915904 * k + 2616136) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1308068) = 4478976 * k + 654034 := by
    unfold C
    simp [show (8957952 * k + 1308068) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 654034) = 2239488 * k + 327017 := by
    unfold C
    simp [show (4478976 * k + 654034) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 327017) = 6718464 * k + 981052 := by
    unfold C
    simp [show (2239488 * k + 327017) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 981052) = 3359232 * k + 490526 := by
    unfold C
    simp [show (6718464 * k + 981052) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 490526) = 1679616 * k + 245263 := by
    unfold C
    simp [show (3359232 * k + 490526) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 245263) = 5038848 * k + 735790 := by
    unfold C
    simp [show (1679616 * k + 245263) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 735790) = 2519424 * k + 367895 := by
    unfold C
    simp [show (5038848 * k + 735790) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 367895) = 7558272 * k + 1103686 := by
    unfold C
    simp [show (2519424 * k + 367895) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1103686) = 3779136 * k + 551843 := by
    unfold C
    simp [show (7558272 * k + 1103686) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 551843) = 11337408 * k + 1655530 := by
    unfold C
    simp [show (3779136 * k + 551843) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1655530) = 5668704 * k + 827765 := by
    unfold C
    simp [show (11337408 * k + 1655530) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 827765) = 17006112 * k + 2483296 := by
    unfold C
    simp [show (5668704 * k + 827765) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2483296) = 8503056 * k + 1241648 := by
    unfold C
    simp [show (17006112 * k + 2483296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1241648) = 4251528 * k + 620824 := by
    unfold C
    simp [show (8503056 * k + 1241648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 620824) = 2125764 * k + 310412 := by
    unfold C
    simp [show (4251528 * k + 620824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 310412) = 1062882 * k + 155206 := by
    unfold C
    simp [show (2125764 * k + 310412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 155206) = 531441 * k + 77603 := by
    unfold C
    simp [show (1062882 * k + 155206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 153115) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 153115)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_153711 : ∀ k : Nat,
    iterate (1048576 * k + 153711) 32 = 531441 * k + 77905 ∧
      531441 * k + 77905 < 1048576 * k + 153711 := by
  intro k
  have h1 : C (1048576 * k + 153711) = 3145728 * k + 461134 := by
    unfold C
    simp [show (1048576 * k + 153711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 461134) = 1572864 * k + 230567 := by
    unfold C
    simp [show (3145728 * k + 461134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 230567) = 4718592 * k + 691702 := by
    unfold C
    simp [show (1572864 * k + 230567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 691702) = 2359296 * k + 345851 := by
    unfold C
    simp [show (4718592 * k + 691702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 345851) = 7077888 * k + 1037554 := by
    unfold C
    simp [show (2359296 * k + 345851) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1037554) = 3538944 * k + 518777 := by
    unfold C
    simp [show (7077888 * k + 1037554) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 518777) = 10616832 * k + 1556332 := by
    unfold C
    simp [show (3538944 * k + 518777) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1556332) = 5308416 * k + 778166 := by
    unfold C
    simp [show (10616832 * k + 1556332) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 778166) = 2654208 * k + 389083 := by
    unfold C
    simp [show (5308416 * k + 778166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 389083) = 7962624 * k + 1167250 := by
    unfold C
    simp [show (2654208 * k + 389083) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1167250) = 3981312 * k + 583625 := by
    unfold C
    simp [show (7962624 * k + 1167250) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 583625) = 11943936 * k + 1750876 := by
    unfold C
    simp [show (3981312 * k + 583625) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1750876) = 5971968 * k + 875438 := by
    unfold C
    simp [show (11943936 * k + 1750876) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 875438) = 2985984 * k + 437719 := by
    unfold C
    simp [show (5971968 * k + 875438) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 437719) = 8957952 * k + 1313158 := by
    unfold C
    simp [show (2985984 * k + 437719) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1313158) = 4478976 * k + 656579 := by
    unfold C
    simp [show (8957952 * k + 1313158) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 656579) = 13436928 * k + 1969738 := by
    unfold C
    simp [show (4478976 * k + 656579) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1969738) = 6718464 * k + 984869 := by
    unfold C
    simp [show (13436928 * k + 1969738) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 984869) = 20155392 * k + 2954608 := by
    unfold C
    simp [show (6718464 * k + 984869) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2954608) = 10077696 * k + 1477304 := by
    unfold C
    simp [show (20155392 * k + 2954608) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1477304) = 5038848 * k + 738652 := by
    unfold C
    simp [show (10077696 * k + 1477304) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 738652) = 2519424 * k + 369326 := by
    unfold C
    simp [show (5038848 * k + 738652) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 369326) = 1259712 * k + 184663 := by
    unfold C
    simp [show (2519424 * k + 369326) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 184663) = 3779136 * k + 553990 := by
    unfold C
    simp [show (1259712 * k + 184663) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 553990) = 1889568 * k + 276995 := by
    unfold C
    simp [show (3779136 * k + 553990) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 276995) = 5668704 * k + 830986 := by
    unfold C
    simp [show (1889568 * k + 276995) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 830986) = 2834352 * k + 415493 := by
    unfold C
    simp [show (5668704 * k + 830986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 415493) = 8503056 * k + 1246480 := by
    unfold C
    simp [show (2834352 * k + 415493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1246480) = 4251528 * k + 623240 := by
    unfold C
    simp [show (8503056 * k + 1246480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 623240) = 2125764 * k + 311620 := by
    unfold C
    simp [show (4251528 * k + 623240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 311620) = 1062882 * k + 155810 := by
    unfold C
    simp [show (2125764 * k + 311620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 155810) = 531441 * k + 77905 := by
    unfold C
    simp [show (1062882 * k + 155810) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 153711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 153711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_154607 : ∀ k : Nat,
    iterate (1048576 * k + 154607) 32 = 531441 * k + 78359 ∧
      531441 * k + 78359 < 1048576 * k + 154607 := by
  intro k
  have h1 : C (1048576 * k + 154607) = 3145728 * k + 463822 := by
    unfold C
    simp [show (1048576 * k + 154607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 463822) = 1572864 * k + 231911 := by
    unfold C
    simp [show (3145728 * k + 463822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 231911) = 4718592 * k + 695734 := by
    unfold C
    simp [show (1572864 * k + 231911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 695734) = 2359296 * k + 347867 := by
    unfold C
    simp [show (4718592 * k + 695734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 347867) = 7077888 * k + 1043602 := by
    unfold C
    simp [show (2359296 * k + 347867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1043602) = 3538944 * k + 521801 := by
    unfold C
    simp [show (7077888 * k + 1043602) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 521801) = 10616832 * k + 1565404 := by
    unfold C
    simp [show (3538944 * k + 521801) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1565404) = 5308416 * k + 782702 := by
    unfold C
    simp [show (10616832 * k + 1565404) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 782702) = 2654208 * k + 391351 := by
    unfold C
    simp [show (5308416 * k + 782702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 391351) = 7962624 * k + 1174054 := by
    unfold C
    simp [show (2654208 * k + 391351) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1174054) = 3981312 * k + 587027 := by
    unfold C
    simp [show (7962624 * k + 1174054) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 587027) = 11943936 * k + 1761082 := by
    unfold C
    simp [show (3981312 * k + 587027) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1761082) = 5971968 * k + 880541 := by
    unfold C
    simp [show (11943936 * k + 1761082) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 880541) = 17915904 * k + 2641624 := by
    unfold C
    simp [show (5971968 * k + 880541) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2641624) = 8957952 * k + 1320812 := by
    unfold C
    simp [show (17915904 * k + 2641624) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1320812) = 4478976 * k + 660406 := by
    unfold C
    simp [show (8957952 * k + 1320812) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 660406) = 2239488 * k + 330203 := by
    unfold C
    simp [show (4478976 * k + 660406) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 330203) = 6718464 * k + 990610 := by
    unfold C
    simp [show (2239488 * k + 330203) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 990610) = 3359232 * k + 495305 := by
    unfold C
    simp [show (6718464 * k + 990610) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 495305) = 10077696 * k + 1485916 := by
    unfold C
    simp [show (3359232 * k + 495305) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1485916) = 5038848 * k + 742958 := by
    unfold C
    simp [show (10077696 * k + 1485916) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 742958) = 2519424 * k + 371479 := by
    unfold C
    simp [show (5038848 * k + 742958) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 371479) = 7558272 * k + 1114438 := by
    unfold C
    simp [show (2519424 * k + 371479) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1114438) = 3779136 * k + 557219 := by
    unfold C
    simp [show (7558272 * k + 1114438) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 557219) = 11337408 * k + 1671658 := by
    unfold C
    simp [show (3779136 * k + 557219) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1671658) = 5668704 * k + 835829 := by
    unfold C
    simp [show (11337408 * k + 1671658) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 835829) = 17006112 * k + 2507488 := by
    unfold C
    simp [show (5668704 * k + 835829) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2507488) = 8503056 * k + 1253744 := by
    unfold C
    simp [show (17006112 * k + 2507488) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1253744) = 4251528 * k + 626872 := by
    unfold C
    simp [show (8503056 * k + 1253744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 626872) = 2125764 * k + 313436 := by
    unfold C
    simp [show (4251528 * k + 626872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 313436) = 1062882 * k + 156718 := by
    unfold C
    simp [show (2125764 * k + 313436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 156718) = 531441 * k + 78359 := by
    unfold C
    simp [show (1062882 * k + 156718) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 154607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 154607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_155495 : ∀ k : Nat,
    iterate (1048576 * k + 155495) 32 = 531441 * k + 78809 ∧
      531441 * k + 78809 < 1048576 * k + 155495 := by
  intro k
  have h1 : C (1048576 * k + 155495) = 3145728 * k + 466486 := by
    unfold C
    simp [show (1048576 * k + 155495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 466486) = 1572864 * k + 233243 := by
    unfold C
    simp [show (3145728 * k + 466486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 233243) = 4718592 * k + 699730 := by
    unfold C
    simp [show (1572864 * k + 233243) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 699730) = 2359296 * k + 349865 := by
    unfold C
    simp [show (4718592 * k + 699730) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 349865) = 7077888 * k + 1049596 := by
    unfold C
    simp [show (2359296 * k + 349865) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1049596) = 3538944 * k + 524798 := by
    unfold C
    simp [show (7077888 * k + 1049596) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 524798) = 1769472 * k + 262399 := by
    unfold C
    simp [show (3538944 * k + 524798) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 262399) = 5308416 * k + 787198 := by
    unfold C
    simp [show (1769472 * k + 262399) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 787198) = 2654208 * k + 393599 := by
    unfold C
    simp [show (5308416 * k + 787198) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 393599) = 7962624 * k + 1180798 := by
    unfold C
    simp [show (2654208 * k + 393599) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1180798) = 3981312 * k + 590399 := by
    unfold C
    simp [show (7962624 * k + 1180798) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 590399) = 11943936 * k + 1771198 := by
    unfold C
    simp [show (3981312 * k + 590399) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1771198) = 5971968 * k + 885599 := by
    unfold C
    simp [show (11943936 * k + 1771198) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 885599) = 17915904 * k + 2656798 := by
    unfold C
    simp [show (5971968 * k + 885599) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2656798) = 8957952 * k + 1328399 := by
    unfold C
    simp [show (17915904 * k + 2656798) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1328399) = 26873856 * k + 3985198 := by
    unfold C
    simp [show (8957952 * k + 1328399) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3985198) = 13436928 * k + 1992599 := by
    unfold C
    simp [show (26873856 * k + 3985198) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1992599) = 40310784 * k + 5977798 := by
    unfold C
    simp [show (13436928 * k + 1992599) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 5977798) = 20155392 * k + 2988899 := by
    unfold C
    simp [show (40310784 * k + 5977798) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2988899) = 60466176 * k + 8966698 := by
    unfold C
    simp [show (20155392 * k + 2988899) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 8966698) = 30233088 * k + 4483349 := by
    unfold C
    simp [show (60466176 * k + 8966698) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4483349) = 90699264 * k + 13450048 := by
    unfold C
    simp [show (30233088 * k + 4483349) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 13450048) = 45349632 * k + 6725024 := by
    unfold C
    simp [show (90699264 * k + 13450048) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 6725024) = 22674816 * k + 3362512 := by
    unfold C
    simp [show (45349632 * k + 6725024) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3362512) = 11337408 * k + 1681256 := by
    unfold C
    simp [show (22674816 * k + 3362512) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1681256) = 5668704 * k + 840628 := by
    unfold C
    simp [show (11337408 * k + 1681256) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 840628) = 2834352 * k + 420314 := by
    unfold C
    simp [show (5668704 * k + 840628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 420314) = 1417176 * k + 210157 := by
    unfold C
    simp [show (2834352 * k + 420314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 210157) = 4251528 * k + 630472 := by
    unfold C
    simp [show (1417176 * k + 210157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 630472) = 2125764 * k + 315236 := by
    unfold C
    simp [show (4251528 * k + 630472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 315236) = 1062882 * k + 157618 := by
    unfold C
    simp [show (2125764 * k + 315236) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 157618) = 531441 * k + 78809 := by
    unfold C
    simp [show (1062882 * k + 157618) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 155495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 155495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_155807 : ∀ k : Nat,
    iterate (1048576 * k + 155807) 32 = 531441 * k + 78967 ∧
      531441 * k + 78967 < 1048576 * k + 155807 := by
  intro k
  have h1 : C (1048576 * k + 155807) = 3145728 * k + 467422 := by
    unfold C
    simp [show (1048576 * k + 155807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 467422) = 1572864 * k + 233711 := by
    unfold C
    simp [show (3145728 * k + 467422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 233711) = 4718592 * k + 701134 := by
    unfold C
    simp [show (1572864 * k + 233711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 701134) = 2359296 * k + 350567 := by
    unfold C
    simp [show (4718592 * k + 701134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 350567) = 7077888 * k + 1051702 := by
    unfold C
    simp [show (2359296 * k + 350567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1051702) = 3538944 * k + 525851 := by
    unfold C
    simp [show (7077888 * k + 1051702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 525851) = 10616832 * k + 1577554 := by
    unfold C
    simp [show (3538944 * k + 525851) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1577554) = 5308416 * k + 788777 := by
    unfold C
    simp [show (10616832 * k + 1577554) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 788777) = 15925248 * k + 2366332 := by
    unfold C
    simp [show (5308416 * k + 788777) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2366332) = 7962624 * k + 1183166 := by
    unfold C
    simp [show (15925248 * k + 2366332) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1183166) = 3981312 * k + 591583 := by
    unfold C
    simp [show (7962624 * k + 1183166) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 591583) = 11943936 * k + 1774750 := by
    unfold C
    simp [show (3981312 * k + 591583) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1774750) = 5971968 * k + 887375 := by
    unfold C
    simp [show (11943936 * k + 1774750) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 887375) = 17915904 * k + 2662126 := by
    unfold C
    simp [show (5971968 * k + 887375) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2662126) = 8957952 * k + 1331063 := by
    unfold C
    simp [show (17915904 * k + 2662126) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1331063) = 26873856 * k + 3993190 := by
    unfold C
    simp [show (8957952 * k + 1331063) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3993190) = 13436928 * k + 1996595 := by
    unfold C
    simp [show (26873856 * k + 3993190) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1996595) = 40310784 * k + 5989786 := by
    unfold C
    simp [show (13436928 * k + 1996595) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 5989786) = 20155392 * k + 2994893 := by
    unfold C
    simp [show (40310784 * k + 5989786) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2994893) = 60466176 * k + 8984680 := by
    unfold C
    simp [show (20155392 * k + 2994893) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 8984680) = 30233088 * k + 4492340 := by
    unfold C
    simp [show (60466176 * k + 8984680) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4492340) = 15116544 * k + 2246170 := by
    unfold C
    simp [show (30233088 * k + 4492340) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2246170) = 7558272 * k + 1123085 := by
    unfold C
    simp [show (15116544 * k + 2246170) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1123085) = 22674816 * k + 3369256 := by
    unfold C
    simp [show (7558272 * k + 1123085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3369256) = 11337408 * k + 1684628 := by
    unfold C
    simp [show (22674816 * k + 3369256) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1684628) = 5668704 * k + 842314 := by
    unfold C
    simp [show (11337408 * k + 1684628) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 842314) = 2834352 * k + 421157 := by
    unfold C
    simp [show (5668704 * k + 842314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 421157) = 8503056 * k + 1263472 := by
    unfold C
    simp [show (2834352 * k + 421157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1263472) = 4251528 * k + 631736 := by
    unfold C
    simp [show (8503056 * k + 1263472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 631736) = 2125764 * k + 315868 := by
    unfold C
    simp [show (4251528 * k + 631736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 315868) = 1062882 * k + 157934 := by
    unfold C
    simp [show (2125764 * k + 315868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 157934) = 531441 * k + 78967 := by
    unfold C
    simp [show (1062882 * k + 157934) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 155807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 155807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_156063 : ∀ k : Nat,
    iterate (1048576 * k + 156063) 32 = 531441 * k + 79097 ∧
      531441 * k + 79097 < 1048576 * k + 156063 := by
  intro k
  have h1 : C (1048576 * k + 156063) = 3145728 * k + 468190 := by
    unfold C
    simp [show (1048576 * k + 156063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 468190) = 1572864 * k + 234095 := by
    unfold C
    simp [show (3145728 * k + 468190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 234095) = 4718592 * k + 702286 := by
    unfold C
    simp [show (1572864 * k + 234095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 702286) = 2359296 * k + 351143 := by
    unfold C
    simp [show (4718592 * k + 702286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 351143) = 7077888 * k + 1053430 := by
    unfold C
    simp [show (2359296 * k + 351143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1053430) = 3538944 * k + 526715 := by
    unfold C
    simp [show (7077888 * k + 1053430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 526715) = 10616832 * k + 1580146 := by
    unfold C
    simp [show (3538944 * k + 526715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1580146) = 5308416 * k + 790073 := by
    unfold C
    simp [show (10616832 * k + 1580146) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 790073) = 15925248 * k + 2370220 := by
    unfold C
    simp [show (5308416 * k + 790073) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2370220) = 7962624 * k + 1185110 := by
    unfold C
    simp [show (15925248 * k + 2370220) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1185110) = 3981312 * k + 592555 := by
    unfold C
    simp [show (7962624 * k + 1185110) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 592555) = 11943936 * k + 1777666 := by
    unfold C
    simp [show (3981312 * k + 592555) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1777666) = 5971968 * k + 888833 := by
    unfold C
    simp [show (11943936 * k + 1777666) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 888833) = 17915904 * k + 2666500 := by
    unfold C
    simp [show (5971968 * k + 888833) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2666500) = 8957952 * k + 1333250 := by
    unfold C
    simp [show (17915904 * k + 2666500) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1333250) = 4478976 * k + 666625 := by
    unfold C
    simp [show (8957952 * k + 1333250) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 666625) = 13436928 * k + 1999876 := by
    unfold C
    simp [show (4478976 * k + 666625) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1999876) = 6718464 * k + 999938 := by
    unfold C
    simp [show (13436928 * k + 1999876) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 999938) = 3359232 * k + 499969 := by
    unfold C
    simp [show (6718464 * k + 999938) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 499969) = 10077696 * k + 1499908 := by
    unfold C
    simp [show (3359232 * k + 499969) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1499908) = 5038848 * k + 749954 := by
    unfold C
    simp [show (10077696 * k + 1499908) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 749954) = 2519424 * k + 374977 := by
    unfold C
    simp [show (5038848 * k + 749954) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 374977) = 7558272 * k + 1124932 := by
    unfold C
    simp [show (2519424 * k + 374977) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1124932) = 3779136 * k + 562466 := by
    unfold C
    simp [show (7558272 * k + 1124932) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 562466) = 1889568 * k + 281233 := by
    unfold C
    simp [show (3779136 * k + 562466) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 281233) = 5668704 * k + 843700 := by
    unfold C
    simp [show (1889568 * k + 281233) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 843700) = 2834352 * k + 421850 := by
    unfold C
    simp [show (5668704 * k + 843700) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 421850) = 1417176 * k + 210925 := by
    unfold C
    simp [show (2834352 * k + 421850) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 210925) = 4251528 * k + 632776 := by
    unfold C
    simp [show (1417176 * k + 210925) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 632776) = 2125764 * k + 316388 := by
    unfold C
    simp [show (4251528 * k + 632776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 316388) = 1062882 * k + 158194 := by
    unfold C
    simp [show (2125764 * k + 316388) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 158194) = 531441 * k + 79097 := by
    unfold C
    simp [show (1062882 * k + 158194) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 156063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 156063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_156519 : ∀ k : Nat,
    iterate (1048576 * k + 156519) 32 = 531441 * k + 79328 ∧
      531441 * k + 79328 < 1048576 * k + 156519 := by
  intro k
  have h1 : C (1048576 * k + 156519) = 3145728 * k + 469558 := by
    unfold C
    simp [show (1048576 * k + 156519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 469558) = 1572864 * k + 234779 := by
    unfold C
    simp [show (3145728 * k + 469558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 234779) = 4718592 * k + 704338 := by
    unfold C
    simp [show (1572864 * k + 234779) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 704338) = 2359296 * k + 352169 := by
    unfold C
    simp [show (4718592 * k + 704338) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 352169) = 7077888 * k + 1056508 := by
    unfold C
    simp [show (2359296 * k + 352169) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1056508) = 3538944 * k + 528254 := by
    unfold C
    simp [show (7077888 * k + 1056508) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 528254) = 1769472 * k + 264127 := by
    unfold C
    simp [show (3538944 * k + 528254) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 264127) = 5308416 * k + 792382 := by
    unfold C
    simp [show (1769472 * k + 264127) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 792382) = 2654208 * k + 396191 := by
    unfold C
    simp [show (5308416 * k + 792382) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 396191) = 7962624 * k + 1188574 := by
    unfold C
    simp [show (2654208 * k + 396191) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1188574) = 3981312 * k + 594287 := by
    unfold C
    simp [show (7962624 * k + 1188574) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 594287) = 11943936 * k + 1782862 := by
    unfold C
    simp [show (3981312 * k + 594287) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1782862) = 5971968 * k + 891431 := by
    unfold C
    simp [show (11943936 * k + 1782862) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 891431) = 17915904 * k + 2674294 := by
    unfold C
    simp [show (5971968 * k + 891431) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2674294) = 8957952 * k + 1337147 := by
    unfold C
    simp [show (17915904 * k + 2674294) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1337147) = 26873856 * k + 4011442 := by
    unfold C
    simp [show (8957952 * k + 1337147) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4011442) = 13436928 * k + 2005721 := by
    unfold C
    simp [show (26873856 * k + 4011442) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2005721) = 40310784 * k + 6017164 := by
    unfold C
    simp [show (13436928 * k + 2005721) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6017164) = 20155392 * k + 3008582 := by
    unfold C
    simp [show (40310784 * k + 6017164) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3008582) = 10077696 * k + 1504291 := by
    unfold C
    simp [show (20155392 * k + 3008582) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1504291) = 30233088 * k + 4512874 := by
    unfold C
    simp [show (10077696 * k + 1504291) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4512874) = 15116544 * k + 2256437 := by
    unfold C
    simp [show (30233088 * k + 4512874) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2256437) = 45349632 * k + 6769312 := by
    unfold C
    simp [show (15116544 * k + 2256437) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 6769312) = 22674816 * k + 3384656 := by
    unfold C
    simp [show (45349632 * k + 6769312) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3384656) = 11337408 * k + 1692328 := by
    unfold C
    simp [show (22674816 * k + 3384656) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1692328) = 5668704 * k + 846164 := by
    unfold C
    simp [show (11337408 * k + 1692328) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 846164) = 2834352 * k + 423082 := by
    unfold C
    simp [show (5668704 * k + 846164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 423082) = 1417176 * k + 211541 := by
    unfold C
    simp [show (2834352 * k + 423082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 211541) = 4251528 * k + 634624 := by
    unfold C
    simp [show (1417176 * k + 211541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 634624) = 2125764 * k + 317312 := by
    unfold C
    simp [show (4251528 * k + 634624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 317312) = 1062882 * k + 158656 := by
    unfold C
    simp [show (2125764 * k + 317312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 158656) = 531441 * k + 79328 := by
    unfold C
    simp [show (1062882 * k + 158656) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 156519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 156519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_156955 : ∀ k : Nat,
    iterate (1048576 * k + 156955) 32 = 531441 * k + 79549 ∧
      531441 * k + 79549 < 1048576 * k + 156955 := by
  intro k
  have h1 : C (1048576 * k + 156955) = 3145728 * k + 470866 := by
    unfold C
    simp [show (1048576 * k + 156955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 470866) = 1572864 * k + 235433 := by
    unfold C
    simp [show (3145728 * k + 470866) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 235433) = 4718592 * k + 706300 := by
    unfold C
    simp [show (1572864 * k + 235433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 706300) = 2359296 * k + 353150 := by
    unfold C
    simp [show (4718592 * k + 706300) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 353150) = 1179648 * k + 176575 := by
    unfold C
    simp [show (2359296 * k + 353150) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 176575) = 3538944 * k + 529726 := by
    unfold C
    simp [show (1179648 * k + 176575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 529726) = 1769472 * k + 264863 := by
    unfold C
    simp [show (3538944 * k + 529726) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 264863) = 5308416 * k + 794590 := by
    unfold C
    simp [show (1769472 * k + 264863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 794590) = 2654208 * k + 397295 := by
    unfold C
    simp [show (5308416 * k + 794590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 397295) = 7962624 * k + 1191886 := by
    unfold C
    simp [show (2654208 * k + 397295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1191886) = 3981312 * k + 595943 := by
    unfold C
    simp [show (7962624 * k + 1191886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 595943) = 11943936 * k + 1787830 := by
    unfold C
    simp [show (3981312 * k + 595943) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1787830) = 5971968 * k + 893915 := by
    unfold C
    simp [show (11943936 * k + 1787830) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 893915) = 17915904 * k + 2681746 := by
    unfold C
    simp [show (5971968 * k + 893915) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2681746) = 8957952 * k + 1340873 := by
    unfold C
    simp [show (17915904 * k + 2681746) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1340873) = 26873856 * k + 4022620 := by
    unfold C
    simp [show (8957952 * k + 1340873) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4022620) = 13436928 * k + 2011310 := by
    unfold C
    simp [show (26873856 * k + 4022620) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2011310) = 6718464 * k + 1005655 := by
    unfold C
    simp [show (13436928 * k + 2011310) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1005655) = 20155392 * k + 3016966 := by
    unfold C
    simp [show (6718464 * k + 1005655) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3016966) = 10077696 * k + 1508483 := by
    unfold C
    simp [show (20155392 * k + 3016966) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1508483) = 30233088 * k + 4525450 := by
    unfold C
    simp [show (10077696 * k + 1508483) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4525450) = 15116544 * k + 2262725 := by
    unfold C
    simp [show (30233088 * k + 4525450) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2262725) = 45349632 * k + 6788176 := by
    unfold C
    simp [show (15116544 * k + 2262725) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 6788176) = 22674816 * k + 3394088 := by
    unfold C
    simp [show (45349632 * k + 6788176) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3394088) = 11337408 * k + 1697044 := by
    unfold C
    simp [show (22674816 * k + 3394088) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1697044) = 5668704 * k + 848522 := by
    unfold C
    simp [show (11337408 * k + 1697044) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 848522) = 2834352 * k + 424261 := by
    unfold C
    simp [show (5668704 * k + 848522) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 424261) = 8503056 * k + 1272784 := by
    unfold C
    simp [show (2834352 * k + 424261) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1272784) = 4251528 * k + 636392 := by
    unfold C
    simp [show (8503056 * k + 1272784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 636392) = 2125764 * k + 318196 := by
    unfold C
    simp [show (4251528 * k + 636392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 318196) = 1062882 * k + 159098 := by
    unfold C
    simp [show (2125764 * k + 318196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 159098) = 531441 * k + 79549 := by
    unfold C
    simp [show (1062882 * k + 159098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 156955) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 156955)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_157767 : ∀ k : Nat,
    iterate (1048576 * k + 157767) 32 = 531441 * k + 79961 ∧
      531441 * k + 79961 < 1048576 * k + 157767 := by
  intro k
  have h1 : C (1048576 * k + 157767) = 3145728 * k + 473302 := by
    unfold C
    simp [show (1048576 * k + 157767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 473302) = 1572864 * k + 236651 := by
    unfold C
    simp [show (3145728 * k + 473302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 236651) = 4718592 * k + 709954 := by
    unfold C
    simp [show (1572864 * k + 236651) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 709954) = 2359296 * k + 354977 := by
    unfold C
    simp [show (4718592 * k + 709954) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 354977) = 7077888 * k + 1064932 := by
    unfold C
    simp [show (2359296 * k + 354977) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1064932) = 3538944 * k + 532466 := by
    unfold C
    simp [show (7077888 * k + 1064932) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 532466) = 1769472 * k + 266233 := by
    unfold C
    simp [show (3538944 * k + 532466) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 266233) = 5308416 * k + 798700 := by
    unfold C
    simp [show (1769472 * k + 266233) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 798700) = 2654208 * k + 399350 := by
    unfold C
    simp [show (5308416 * k + 798700) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 399350) = 1327104 * k + 199675 := by
    unfold C
    simp [show (2654208 * k + 399350) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 199675) = 3981312 * k + 599026 := by
    unfold C
    simp [show (1327104 * k + 199675) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 599026) = 1990656 * k + 299513 := by
    unfold C
    simp [show (3981312 * k + 599026) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 299513) = 5971968 * k + 898540 := by
    unfold C
    simp [show (1990656 * k + 299513) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 898540) = 2985984 * k + 449270 := by
    unfold C
    simp [show (5971968 * k + 898540) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 449270) = 1492992 * k + 224635 := by
    unfold C
    simp [show (2985984 * k + 449270) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 224635) = 4478976 * k + 673906 := by
    unfold C
    simp [show (1492992 * k + 224635) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 673906) = 2239488 * k + 336953 := by
    unfold C
    simp [show (4478976 * k + 673906) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 336953) = 6718464 * k + 1010860 := by
    unfold C
    simp [show (2239488 * k + 336953) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1010860) = 3359232 * k + 505430 := by
    unfold C
    simp [show (6718464 * k + 1010860) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 505430) = 1679616 * k + 252715 := by
    unfold C
    simp [show (3359232 * k + 505430) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 252715) = 5038848 * k + 758146 := by
    unfold C
    simp [show (1679616 * k + 252715) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 758146) = 2519424 * k + 379073 := by
    unfold C
    simp [show (5038848 * k + 758146) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 379073) = 7558272 * k + 1137220 := by
    unfold C
    simp [show (2519424 * k + 379073) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1137220) = 3779136 * k + 568610 := by
    unfold C
    simp [show (7558272 * k + 1137220) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 568610) = 1889568 * k + 284305 := by
    unfold C
    simp [show (3779136 * k + 568610) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 284305) = 5668704 * k + 852916 := by
    unfold C
    simp [show (1889568 * k + 284305) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 852916) = 2834352 * k + 426458 := by
    unfold C
    simp [show (5668704 * k + 852916) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 426458) = 1417176 * k + 213229 := by
    unfold C
    simp [show (2834352 * k + 426458) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 213229) = 4251528 * k + 639688 := by
    unfold C
    simp [show (1417176 * k + 213229) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 639688) = 2125764 * k + 319844 := by
    unfold C
    simp [show (4251528 * k + 639688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 319844) = 1062882 * k + 159922 := by
    unfold C
    simp [show (2125764 * k + 319844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 159922) = 531441 * k + 79961 := by
    unfold C
    simp [show (1062882 * k + 159922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 157767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 157767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard021
