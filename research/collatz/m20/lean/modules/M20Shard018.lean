import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard018

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_125531 : ∀ k : Nat,
    iterate (1048576 * k + 125531) 32 = 531441 * k + 63623 ∧
      531441 * k + 63623 < 1048576 * k + 125531 := by
  intro k
  have h1 : C (1048576 * k + 125531) = 3145728 * k + 376594 := by
    unfold C
    simp [show (1048576 * k + 125531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 376594) = 1572864 * k + 188297 := by
    unfold C
    simp [show (3145728 * k + 376594) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 188297) = 4718592 * k + 564892 := by
    unfold C
    simp [show (1572864 * k + 188297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 564892) = 2359296 * k + 282446 := by
    unfold C
    simp [show (4718592 * k + 564892) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 282446) = 1179648 * k + 141223 := by
    unfold C
    simp [show (2359296 * k + 282446) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 141223) = 3538944 * k + 423670 := by
    unfold C
    simp [show (1179648 * k + 141223) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 423670) = 1769472 * k + 211835 := by
    unfold C
    simp [show (3538944 * k + 423670) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 211835) = 5308416 * k + 635506 := by
    unfold C
    simp [show (1769472 * k + 211835) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 635506) = 2654208 * k + 317753 := by
    unfold C
    simp [show (5308416 * k + 635506) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 317753) = 7962624 * k + 953260 := by
    unfold C
    simp [show (2654208 * k + 317753) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 953260) = 3981312 * k + 476630 := by
    unfold C
    simp [show (7962624 * k + 953260) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 476630) = 1990656 * k + 238315 := by
    unfold C
    simp [show (3981312 * k + 476630) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 238315) = 5971968 * k + 714946 := by
    unfold C
    simp [show (1990656 * k + 238315) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 714946) = 2985984 * k + 357473 := by
    unfold C
    simp [show (5971968 * k + 714946) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 357473) = 8957952 * k + 1072420 := by
    unfold C
    simp [show (2985984 * k + 357473) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1072420) = 4478976 * k + 536210 := by
    unfold C
    simp [show (8957952 * k + 1072420) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 536210) = 2239488 * k + 268105 := by
    unfold C
    simp [show (4478976 * k + 536210) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 268105) = 6718464 * k + 804316 := by
    unfold C
    simp [show (2239488 * k + 268105) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 804316) = 3359232 * k + 402158 := by
    unfold C
    simp [show (6718464 * k + 804316) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 402158) = 1679616 * k + 201079 := by
    unfold C
    simp [show (3359232 * k + 402158) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 201079) = 5038848 * k + 603238 := by
    unfold C
    simp [show (1679616 * k + 201079) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 603238) = 2519424 * k + 301619 := by
    unfold C
    simp [show (5038848 * k + 603238) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 301619) = 7558272 * k + 904858 := by
    unfold C
    simp [show (2519424 * k + 301619) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 904858) = 3779136 * k + 452429 := by
    unfold C
    simp [show (7558272 * k + 904858) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 452429) = 11337408 * k + 1357288 := by
    unfold C
    simp [show (3779136 * k + 452429) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1357288) = 5668704 * k + 678644 := by
    unfold C
    simp [show (11337408 * k + 1357288) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 678644) = 2834352 * k + 339322 := by
    unfold C
    simp [show (5668704 * k + 678644) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 339322) = 1417176 * k + 169661 := by
    unfold C
    simp [show (2834352 * k + 339322) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 169661) = 4251528 * k + 508984 := by
    unfold C
    simp [show (1417176 * k + 169661) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 508984) = 2125764 * k + 254492 := by
    unfold C
    simp [show (4251528 * k + 508984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 254492) = 1062882 * k + 127246 := by
    unfold C
    simp [show (2125764 * k + 254492) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 127246) = 531441 * k + 63623 := by
    unfold C
    simp [show (1062882 * k + 127246) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 125531) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 125531)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_125887 : ∀ k : Nat,
    iterate (1048576 * k + 125887) 32 = 531441 * k + 63803 ∧
      531441 * k + 63803 < 1048576 * k + 125887 := by
  intro k
  have h1 : C (1048576 * k + 125887) = 3145728 * k + 377662 := by
    unfold C
    simp [show (1048576 * k + 125887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 377662) = 1572864 * k + 188831 := by
    unfold C
    simp [show (3145728 * k + 377662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 188831) = 4718592 * k + 566494 := by
    unfold C
    simp [show (1572864 * k + 188831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 566494) = 2359296 * k + 283247 := by
    unfold C
    simp [show (4718592 * k + 566494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 283247) = 7077888 * k + 849742 := by
    unfold C
    simp [show (2359296 * k + 283247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 849742) = 3538944 * k + 424871 := by
    unfold C
    simp [show (7077888 * k + 849742) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 424871) = 10616832 * k + 1274614 := by
    unfold C
    simp [show (3538944 * k + 424871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1274614) = 5308416 * k + 637307 := by
    unfold C
    simp [show (10616832 * k + 1274614) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 637307) = 15925248 * k + 1911922 := by
    unfold C
    simp [show (5308416 * k + 637307) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1911922) = 7962624 * k + 955961 := by
    unfold C
    simp [show (15925248 * k + 1911922) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 955961) = 23887872 * k + 2867884 := by
    unfold C
    simp [show (7962624 * k + 955961) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2867884) = 11943936 * k + 1433942 := by
    unfold C
    simp [show (23887872 * k + 2867884) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1433942) = 5971968 * k + 716971 := by
    unfold C
    simp [show (11943936 * k + 1433942) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 716971) = 17915904 * k + 2150914 := by
    unfold C
    simp [show (5971968 * k + 716971) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2150914) = 8957952 * k + 1075457 := by
    unfold C
    simp [show (17915904 * k + 2150914) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1075457) = 26873856 * k + 3226372 := by
    unfold C
    simp [show (8957952 * k + 1075457) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3226372) = 13436928 * k + 1613186 := by
    unfold C
    simp [show (26873856 * k + 3226372) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1613186) = 6718464 * k + 806593 := by
    unfold C
    simp [show (13436928 * k + 1613186) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 806593) = 20155392 * k + 2419780 := by
    unfold C
    simp [show (6718464 * k + 806593) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2419780) = 10077696 * k + 1209890 := by
    unfold C
    simp [show (20155392 * k + 2419780) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1209890) = 5038848 * k + 604945 := by
    unfold C
    simp [show (10077696 * k + 1209890) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 604945) = 15116544 * k + 1814836 := by
    unfold C
    simp [show (5038848 * k + 604945) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1814836) = 7558272 * k + 907418 := by
    unfold C
    simp [show (15116544 * k + 1814836) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 907418) = 3779136 * k + 453709 := by
    unfold C
    simp [show (7558272 * k + 907418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 453709) = 11337408 * k + 1361128 := by
    unfold C
    simp [show (3779136 * k + 453709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1361128) = 5668704 * k + 680564 := by
    unfold C
    simp [show (11337408 * k + 1361128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 680564) = 2834352 * k + 340282 := by
    unfold C
    simp [show (5668704 * k + 680564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 340282) = 1417176 * k + 170141 := by
    unfold C
    simp [show (2834352 * k + 340282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 170141) = 4251528 * k + 510424 := by
    unfold C
    simp [show (1417176 * k + 170141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 510424) = 2125764 * k + 255212 := by
    unfold C
    simp [show (4251528 * k + 510424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 255212) = 1062882 * k + 127606 := by
    unfold C
    simp [show (2125764 * k + 255212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 127606) = 531441 * k + 63803 := by
    unfold C
    simp [show (1062882 * k + 127606) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 125887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 125887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_127023 : ∀ k : Nat,
    iterate (1048576 * k + 127023) 32 = 531441 * k + 64379 ∧
      531441 * k + 64379 < 1048576 * k + 127023 := by
  intro k
  have h1 : C (1048576 * k + 127023) = 3145728 * k + 381070 := by
    unfold C
    simp [show (1048576 * k + 127023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 381070) = 1572864 * k + 190535 := by
    unfold C
    simp [show (3145728 * k + 381070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 190535) = 4718592 * k + 571606 := by
    unfold C
    simp [show (1572864 * k + 190535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 571606) = 2359296 * k + 285803 := by
    unfold C
    simp [show (4718592 * k + 571606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 285803) = 7077888 * k + 857410 := by
    unfold C
    simp [show (2359296 * k + 285803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 857410) = 3538944 * k + 428705 := by
    unfold C
    simp [show (7077888 * k + 857410) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 428705) = 10616832 * k + 1286116 := by
    unfold C
    simp [show (3538944 * k + 428705) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1286116) = 5308416 * k + 643058 := by
    unfold C
    simp [show (10616832 * k + 1286116) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 643058) = 2654208 * k + 321529 := by
    unfold C
    simp [show (5308416 * k + 643058) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 321529) = 7962624 * k + 964588 := by
    unfold C
    simp [show (2654208 * k + 321529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 964588) = 3981312 * k + 482294 := by
    unfold C
    simp [show (7962624 * k + 964588) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 482294) = 1990656 * k + 241147 := by
    unfold C
    simp [show (3981312 * k + 482294) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 241147) = 5971968 * k + 723442 := by
    unfold C
    simp [show (1990656 * k + 241147) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 723442) = 2985984 * k + 361721 := by
    unfold C
    simp [show (5971968 * k + 723442) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 361721) = 8957952 * k + 1085164 := by
    unfold C
    simp [show (2985984 * k + 361721) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1085164) = 4478976 * k + 542582 := by
    unfold C
    simp [show (8957952 * k + 1085164) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 542582) = 2239488 * k + 271291 := by
    unfold C
    simp [show (4478976 * k + 542582) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 271291) = 6718464 * k + 813874 := by
    unfold C
    simp [show (2239488 * k + 271291) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 813874) = 3359232 * k + 406937 := by
    unfold C
    simp [show (6718464 * k + 813874) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 406937) = 10077696 * k + 1220812 := by
    unfold C
    simp [show (3359232 * k + 406937) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1220812) = 5038848 * k + 610406 := by
    unfold C
    simp [show (10077696 * k + 1220812) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 610406) = 2519424 * k + 305203 := by
    unfold C
    simp [show (5038848 * k + 610406) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 305203) = 7558272 * k + 915610 := by
    unfold C
    simp [show (2519424 * k + 305203) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 915610) = 3779136 * k + 457805 := by
    unfold C
    simp [show (7558272 * k + 915610) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 457805) = 11337408 * k + 1373416 := by
    unfold C
    simp [show (3779136 * k + 457805) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1373416) = 5668704 * k + 686708 := by
    unfold C
    simp [show (11337408 * k + 1373416) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 686708) = 2834352 * k + 343354 := by
    unfold C
    simp [show (5668704 * k + 686708) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 343354) = 1417176 * k + 171677 := by
    unfold C
    simp [show (2834352 * k + 343354) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 171677) = 4251528 * k + 515032 := by
    unfold C
    simp [show (1417176 * k + 171677) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 515032) = 2125764 * k + 257516 := by
    unfold C
    simp [show (4251528 * k + 515032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 257516) = 1062882 * k + 128758 := by
    unfold C
    simp [show (2125764 * k + 257516) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 128758) = 531441 * k + 64379 := by
    unfold C
    simp [show (1062882 * k + 128758) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 127023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 127023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_127935 : ∀ k : Nat,
    iterate (1048576 * k + 127935) 32 = 531441 * k + 64841 ∧
      531441 * k + 64841 < 1048576 * k + 127935 := by
  intro k
  have h1 : C (1048576 * k + 127935) = 3145728 * k + 383806 := by
    unfold C
    simp [show (1048576 * k + 127935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 383806) = 1572864 * k + 191903 := by
    unfold C
    simp [show (3145728 * k + 383806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 191903) = 4718592 * k + 575710 := by
    unfold C
    simp [show (1572864 * k + 191903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 575710) = 2359296 * k + 287855 := by
    unfold C
    simp [show (4718592 * k + 575710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 287855) = 7077888 * k + 863566 := by
    unfold C
    simp [show (2359296 * k + 287855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 863566) = 3538944 * k + 431783 := by
    unfold C
    simp [show (7077888 * k + 863566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 431783) = 10616832 * k + 1295350 := by
    unfold C
    simp [show (3538944 * k + 431783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1295350) = 5308416 * k + 647675 := by
    unfold C
    simp [show (10616832 * k + 1295350) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 647675) = 15925248 * k + 1943026 := by
    unfold C
    simp [show (5308416 * k + 647675) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1943026) = 7962624 * k + 971513 := by
    unfold C
    simp [show (15925248 * k + 1943026) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 971513) = 23887872 * k + 2914540 := by
    unfold C
    simp [show (7962624 * k + 971513) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2914540) = 11943936 * k + 1457270 := by
    unfold C
    simp [show (23887872 * k + 2914540) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1457270) = 5971968 * k + 728635 := by
    unfold C
    simp [show (11943936 * k + 1457270) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 728635) = 17915904 * k + 2185906 := by
    unfold C
    simp [show (5971968 * k + 728635) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2185906) = 8957952 * k + 1092953 := by
    unfold C
    simp [show (17915904 * k + 2185906) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1092953) = 26873856 * k + 3278860 := by
    unfold C
    simp [show (8957952 * k + 1092953) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3278860) = 13436928 * k + 1639430 := by
    unfold C
    simp [show (26873856 * k + 3278860) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1639430) = 6718464 * k + 819715 := by
    unfold C
    simp [show (13436928 * k + 1639430) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 819715) = 20155392 * k + 2459146 := by
    unfold C
    simp [show (6718464 * k + 819715) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2459146) = 10077696 * k + 1229573 := by
    unfold C
    simp [show (20155392 * k + 2459146) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1229573) = 30233088 * k + 3688720 := by
    unfold C
    simp [show (10077696 * k + 1229573) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3688720) = 15116544 * k + 1844360 := by
    unfold C
    simp [show (30233088 * k + 3688720) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1844360) = 7558272 * k + 922180 := by
    unfold C
    simp [show (15116544 * k + 1844360) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 922180) = 3779136 * k + 461090 := by
    unfold C
    simp [show (7558272 * k + 922180) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 461090) = 1889568 * k + 230545 := by
    unfold C
    simp [show (3779136 * k + 461090) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 230545) = 5668704 * k + 691636 := by
    unfold C
    simp [show (1889568 * k + 230545) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 691636) = 2834352 * k + 345818 := by
    unfold C
    simp [show (5668704 * k + 691636) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 345818) = 1417176 * k + 172909 := by
    unfold C
    simp [show (2834352 * k + 345818) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 172909) = 4251528 * k + 518728 := by
    unfold C
    simp [show (1417176 * k + 172909) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 518728) = 2125764 * k + 259364 := by
    unfold C
    simp [show (4251528 * k + 518728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 259364) = 1062882 * k + 129682 := by
    unfold C
    simp [show (2125764 * k + 259364) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 129682) = 531441 * k + 64841 := by
    unfold C
    simp [show (1062882 * k + 129682) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 127935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 127935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_128935 : ∀ k : Nat,
    iterate (1048576 * k + 128935) 32 = 531441 * k + 65348 ∧
      531441 * k + 65348 < 1048576 * k + 128935 := by
  intro k
  have h1 : C (1048576 * k + 128935) = 3145728 * k + 386806 := by
    unfold C
    simp [show (1048576 * k + 128935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 386806) = 1572864 * k + 193403 := by
    unfold C
    simp [show (3145728 * k + 386806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 193403) = 4718592 * k + 580210 := by
    unfold C
    simp [show (1572864 * k + 193403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 580210) = 2359296 * k + 290105 := by
    unfold C
    simp [show (4718592 * k + 580210) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 290105) = 7077888 * k + 870316 := by
    unfold C
    simp [show (2359296 * k + 290105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 870316) = 3538944 * k + 435158 := by
    unfold C
    simp [show (7077888 * k + 870316) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 435158) = 1769472 * k + 217579 := by
    unfold C
    simp [show (3538944 * k + 435158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 217579) = 5308416 * k + 652738 := by
    unfold C
    simp [show (1769472 * k + 217579) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 652738) = 2654208 * k + 326369 := by
    unfold C
    simp [show (5308416 * k + 652738) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 326369) = 7962624 * k + 979108 := by
    unfold C
    simp [show (2654208 * k + 326369) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 979108) = 3981312 * k + 489554 := by
    unfold C
    simp [show (7962624 * k + 979108) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 489554) = 1990656 * k + 244777 := by
    unfold C
    simp [show (3981312 * k + 489554) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 244777) = 5971968 * k + 734332 := by
    unfold C
    simp [show (1990656 * k + 244777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 734332) = 2985984 * k + 367166 := by
    unfold C
    simp [show (5971968 * k + 734332) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 367166) = 1492992 * k + 183583 := by
    unfold C
    simp [show (2985984 * k + 367166) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 183583) = 4478976 * k + 550750 := by
    unfold C
    simp [show (1492992 * k + 183583) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 550750) = 2239488 * k + 275375 := by
    unfold C
    simp [show (4478976 * k + 550750) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 275375) = 6718464 * k + 826126 := by
    unfold C
    simp [show (2239488 * k + 275375) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 826126) = 3359232 * k + 413063 := by
    unfold C
    simp [show (6718464 * k + 826126) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 413063) = 10077696 * k + 1239190 := by
    unfold C
    simp [show (3359232 * k + 413063) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1239190) = 5038848 * k + 619595 := by
    unfold C
    simp [show (10077696 * k + 1239190) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 619595) = 15116544 * k + 1858786 := by
    unfold C
    simp [show (5038848 * k + 619595) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1858786) = 7558272 * k + 929393 := by
    unfold C
    simp [show (15116544 * k + 1858786) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 929393) = 22674816 * k + 2788180 := by
    unfold C
    simp [show (7558272 * k + 929393) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2788180) = 11337408 * k + 1394090 := by
    unfold C
    simp [show (22674816 * k + 2788180) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1394090) = 5668704 * k + 697045 := by
    unfold C
    simp [show (11337408 * k + 1394090) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 697045) = 17006112 * k + 2091136 := by
    unfold C
    simp [show (5668704 * k + 697045) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2091136) = 8503056 * k + 1045568 := by
    unfold C
    simp [show (17006112 * k + 2091136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1045568) = 4251528 * k + 522784 := by
    unfold C
    simp [show (8503056 * k + 1045568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 522784) = 2125764 * k + 261392 := by
    unfold C
    simp [show (4251528 * k + 522784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 261392) = 1062882 * k + 130696 := by
    unfold C
    simp [show (2125764 * k + 261392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 130696) = 531441 * k + 65348 := by
    unfold C
    simp [show (1062882 * k + 130696) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 128935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 128935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_129231 : ∀ k : Nat,
    iterate (1048576 * k + 129231) 32 = 531441 * k + 65498 ∧
      531441 * k + 65498 < 1048576 * k + 129231 := by
  intro k
  have h1 : C (1048576 * k + 129231) = 3145728 * k + 387694 := by
    unfold C
    simp [show (1048576 * k + 129231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 387694) = 1572864 * k + 193847 := by
    unfold C
    simp [show (3145728 * k + 387694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 193847) = 4718592 * k + 581542 := by
    unfold C
    simp [show (1572864 * k + 193847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 581542) = 2359296 * k + 290771 := by
    unfold C
    simp [show (4718592 * k + 581542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 290771) = 7077888 * k + 872314 := by
    unfold C
    simp [show (2359296 * k + 290771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 872314) = 3538944 * k + 436157 := by
    unfold C
    simp [show (7077888 * k + 872314) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 436157) = 10616832 * k + 1308472 := by
    unfold C
    simp [show (3538944 * k + 436157) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1308472) = 5308416 * k + 654236 := by
    unfold C
    simp [show (10616832 * k + 1308472) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 654236) = 2654208 * k + 327118 := by
    unfold C
    simp [show (5308416 * k + 654236) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 327118) = 1327104 * k + 163559 := by
    unfold C
    simp [show (2654208 * k + 327118) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 163559) = 3981312 * k + 490678 := by
    unfold C
    simp [show (1327104 * k + 163559) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 490678) = 1990656 * k + 245339 := by
    unfold C
    simp [show (3981312 * k + 490678) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 245339) = 5971968 * k + 736018 := by
    unfold C
    simp [show (1990656 * k + 245339) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 736018) = 2985984 * k + 368009 := by
    unfold C
    simp [show (5971968 * k + 736018) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 368009) = 8957952 * k + 1104028 := by
    unfold C
    simp [show (2985984 * k + 368009) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1104028) = 4478976 * k + 552014 := by
    unfold C
    simp [show (8957952 * k + 1104028) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 552014) = 2239488 * k + 276007 := by
    unfold C
    simp [show (4478976 * k + 552014) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 276007) = 6718464 * k + 828022 := by
    unfold C
    simp [show (2239488 * k + 276007) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 828022) = 3359232 * k + 414011 := by
    unfold C
    simp [show (6718464 * k + 828022) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 414011) = 10077696 * k + 1242034 := by
    unfold C
    simp [show (3359232 * k + 414011) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1242034) = 5038848 * k + 621017 := by
    unfold C
    simp [show (10077696 * k + 1242034) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 621017) = 15116544 * k + 1863052 := by
    unfold C
    simp [show (5038848 * k + 621017) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1863052) = 7558272 * k + 931526 := by
    unfold C
    simp [show (15116544 * k + 1863052) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 931526) = 3779136 * k + 465763 := by
    unfold C
    simp [show (7558272 * k + 931526) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 465763) = 11337408 * k + 1397290 := by
    unfold C
    simp [show (3779136 * k + 465763) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1397290) = 5668704 * k + 698645 := by
    unfold C
    simp [show (11337408 * k + 1397290) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 698645) = 17006112 * k + 2095936 := by
    unfold C
    simp [show (5668704 * k + 698645) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2095936) = 8503056 * k + 1047968 := by
    unfold C
    simp [show (17006112 * k + 2095936) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1047968) = 4251528 * k + 523984 := by
    unfold C
    simp [show (8503056 * k + 1047968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 523984) = 2125764 * k + 261992 := by
    unfold C
    simp [show (4251528 * k + 523984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 261992) = 1062882 * k + 130996 := by
    unfold C
    simp [show (2125764 * k + 261992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 130996) = 531441 * k + 65498 := by
    unfold C
    simp [show (1062882 * k + 130996) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 129231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 129231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_129383 : ∀ k : Nat,
    iterate (1048576 * k + 129383) 32 = 531441 * k + 65575 ∧
      531441 * k + 65575 < 1048576 * k + 129383 := by
  intro k
  have h1 : C (1048576 * k + 129383) = 3145728 * k + 388150 := by
    unfold C
    simp [show (1048576 * k + 129383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 388150) = 1572864 * k + 194075 := by
    unfold C
    simp [show (3145728 * k + 388150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 194075) = 4718592 * k + 582226 := by
    unfold C
    simp [show (1572864 * k + 194075) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 582226) = 2359296 * k + 291113 := by
    unfold C
    simp [show (4718592 * k + 582226) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 291113) = 7077888 * k + 873340 := by
    unfold C
    simp [show (2359296 * k + 291113) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 873340) = 3538944 * k + 436670 := by
    unfold C
    simp [show (7077888 * k + 873340) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 436670) = 1769472 * k + 218335 := by
    unfold C
    simp [show (3538944 * k + 436670) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 218335) = 5308416 * k + 655006 := by
    unfold C
    simp [show (1769472 * k + 218335) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 655006) = 2654208 * k + 327503 := by
    unfold C
    simp [show (5308416 * k + 655006) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 327503) = 7962624 * k + 982510 := by
    unfold C
    simp [show (2654208 * k + 327503) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 982510) = 3981312 * k + 491255 := by
    unfold C
    simp [show (7962624 * k + 982510) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 491255) = 11943936 * k + 1473766 := by
    unfold C
    simp [show (3981312 * k + 491255) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1473766) = 5971968 * k + 736883 := by
    unfold C
    simp [show (11943936 * k + 1473766) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 736883) = 17915904 * k + 2210650 := by
    unfold C
    simp [show (5971968 * k + 736883) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2210650) = 8957952 * k + 1105325 := by
    unfold C
    simp [show (17915904 * k + 2210650) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1105325) = 26873856 * k + 3315976 := by
    unfold C
    simp [show (8957952 * k + 1105325) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3315976) = 13436928 * k + 1657988 := by
    unfold C
    simp [show (26873856 * k + 3315976) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1657988) = 6718464 * k + 828994 := by
    unfold C
    simp [show (13436928 * k + 1657988) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 828994) = 3359232 * k + 414497 := by
    unfold C
    simp [show (6718464 * k + 828994) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 414497) = 10077696 * k + 1243492 := by
    unfold C
    simp [show (3359232 * k + 414497) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1243492) = 5038848 * k + 621746 := by
    unfold C
    simp [show (10077696 * k + 1243492) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 621746) = 2519424 * k + 310873 := by
    unfold C
    simp [show (5038848 * k + 621746) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 310873) = 7558272 * k + 932620 := by
    unfold C
    simp [show (2519424 * k + 310873) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 932620) = 3779136 * k + 466310 := by
    unfold C
    simp [show (7558272 * k + 932620) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 466310) = 1889568 * k + 233155 := by
    unfold C
    simp [show (3779136 * k + 466310) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 233155) = 5668704 * k + 699466 := by
    unfold C
    simp [show (1889568 * k + 233155) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 699466) = 2834352 * k + 349733 := by
    unfold C
    simp [show (5668704 * k + 699466) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 349733) = 8503056 * k + 1049200 := by
    unfold C
    simp [show (2834352 * k + 349733) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1049200) = 4251528 * k + 524600 := by
    unfold C
    simp [show (8503056 * k + 1049200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 524600) = 2125764 * k + 262300 := by
    unfold C
    simp [show (4251528 * k + 524600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 262300) = 1062882 * k + 131150 := by
    unfold C
    simp [show (2125764 * k + 262300) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 131150) = 531441 * k + 65575 := by
    unfold C
    simp [show (1062882 * k + 131150) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 129383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 129383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_129639 : ∀ k : Nat,
    iterate (1048576 * k + 129639) 32 = 531441 * k + 65705 ∧
      531441 * k + 65705 < 1048576 * k + 129639 := by
  intro k
  have h1 : C (1048576 * k + 129639) = 3145728 * k + 388918 := by
    unfold C
    simp [show (1048576 * k + 129639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 388918) = 1572864 * k + 194459 := by
    unfold C
    simp [show (3145728 * k + 388918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 194459) = 4718592 * k + 583378 := by
    unfold C
    simp [show (1572864 * k + 194459) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 583378) = 2359296 * k + 291689 := by
    unfold C
    simp [show (4718592 * k + 583378) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 291689) = 7077888 * k + 875068 := by
    unfold C
    simp [show (2359296 * k + 291689) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 875068) = 3538944 * k + 437534 := by
    unfold C
    simp [show (7077888 * k + 875068) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 437534) = 1769472 * k + 218767 := by
    unfold C
    simp [show (3538944 * k + 437534) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 218767) = 5308416 * k + 656302 := by
    unfold C
    simp [show (1769472 * k + 218767) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 656302) = 2654208 * k + 328151 := by
    unfold C
    simp [show (5308416 * k + 656302) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 328151) = 7962624 * k + 984454 := by
    unfold C
    simp [show (2654208 * k + 328151) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 984454) = 3981312 * k + 492227 := by
    unfold C
    simp [show (7962624 * k + 984454) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 492227) = 11943936 * k + 1476682 := by
    unfold C
    simp [show (3981312 * k + 492227) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1476682) = 5971968 * k + 738341 := by
    unfold C
    simp [show (11943936 * k + 1476682) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 738341) = 17915904 * k + 2215024 := by
    unfold C
    simp [show (5971968 * k + 738341) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2215024) = 8957952 * k + 1107512 := by
    unfold C
    simp [show (17915904 * k + 2215024) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1107512) = 4478976 * k + 553756 := by
    unfold C
    simp [show (8957952 * k + 1107512) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 553756) = 2239488 * k + 276878 := by
    unfold C
    simp [show (4478976 * k + 553756) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 276878) = 1119744 * k + 138439 := by
    unfold C
    simp [show (2239488 * k + 276878) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 138439) = 3359232 * k + 415318 := by
    unfold C
    simp [show (1119744 * k + 138439) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 415318) = 1679616 * k + 207659 := by
    unfold C
    simp [show (3359232 * k + 415318) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 207659) = 5038848 * k + 622978 := by
    unfold C
    simp [show (1679616 * k + 207659) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 622978) = 2519424 * k + 311489 := by
    unfold C
    simp [show (5038848 * k + 622978) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 311489) = 7558272 * k + 934468 := by
    unfold C
    simp [show (2519424 * k + 311489) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 934468) = 3779136 * k + 467234 := by
    unfold C
    simp [show (7558272 * k + 934468) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 467234) = 1889568 * k + 233617 := by
    unfold C
    simp [show (3779136 * k + 467234) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 233617) = 5668704 * k + 700852 := by
    unfold C
    simp [show (1889568 * k + 233617) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 700852) = 2834352 * k + 350426 := by
    unfold C
    simp [show (5668704 * k + 700852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 350426) = 1417176 * k + 175213 := by
    unfold C
    simp [show (2834352 * k + 350426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 175213) = 4251528 * k + 525640 := by
    unfold C
    simp [show (1417176 * k + 175213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 525640) = 2125764 * k + 262820 := by
    unfold C
    simp [show (4251528 * k + 525640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 262820) = 1062882 * k + 131410 := by
    unfold C
    simp [show (2125764 * k + 262820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 131410) = 531441 * k + 65705 := by
    unfold C
    simp [show (1062882 * k + 131410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 129639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 129639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_130527 : ∀ k : Nat,
    iterate (1048576 * k + 130527) 32 = 531441 * k + 66155 ∧
      531441 * k + 66155 < 1048576 * k + 130527 := by
  intro k
  have h1 : C (1048576 * k + 130527) = 3145728 * k + 391582 := by
    unfold C
    simp [show (1048576 * k + 130527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 391582) = 1572864 * k + 195791 := by
    unfold C
    simp [show (3145728 * k + 391582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 195791) = 4718592 * k + 587374 := by
    unfold C
    simp [show (1572864 * k + 195791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 587374) = 2359296 * k + 293687 := by
    unfold C
    simp [show (4718592 * k + 587374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 293687) = 7077888 * k + 881062 := by
    unfold C
    simp [show (2359296 * k + 293687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 881062) = 3538944 * k + 440531 := by
    unfold C
    simp [show (7077888 * k + 881062) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 440531) = 10616832 * k + 1321594 := by
    unfold C
    simp [show (3538944 * k + 440531) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1321594) = 5308416 * k + 660797 := by
    unfold C
    simp [show (10616832 * k + 1321594) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 660797) = 15925248 * k + 1982392 := by
    unfold C
    simp [show (5308416 * k + 660797) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1982392) = 7962624 * k + 991196 := by
    unfold C
    simp [show (15925248 * k + 1982392) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 991196) = 3981312 * k + 495598 := by
    unfold C
    simp [show (7962624 * k + 991196) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 495598) = 1990656 * k + 247799 := by
    unfold C
    simp [show (3981312 * k + 495598) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 247799) = 5971968 * k + 743398 := by
    unfold C
    simp [show (1990656 * k + 247799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 743398) = 2985984 * k + 371699 := by
    unfold C
    simp [show (5971968 * k + 743398) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 371699) = 8957952 * k + 1115098 := by
    unfold C
    simp [show (2985984 * k + 371699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1115098) = 4478976 * k + 557549 := by
    unfold C
    simp [show (8957952 * k + 1115098) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 557549) = 13436928 * k + 1672648 := by
    unfold C
    simp [show (4478976 * k + 557549) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1672648) = 6718464 * k + 836324 := by
    unfold C
    simp [show (13436928 * k + 1672648) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 836324) = 3359232 * k + 418162 := by
    unfold C
    simp [show (6718464 * k + 836324) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 418162) = 1679616 * k + 209081 := by
    unfold C
    simp [show (3359232 * k + 418162) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 209081) = 5038848 * k + 627244 := by
    unfold C
    simp [show (1679616 * k + 209081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 627244) = 2519424 * k + 313622 := by
    unfold C
    simp [show (5038848 * k + 627244) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 313622) = 1259712 * k + 156811 := by
    unfold C
    simp [show (2519424 * k + 313622) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 156811) = 3779136 * k + 470434 := by
    unfold C
    simp [show (1259712 * k + 156811) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 470434) = 1889568 * k + 235217 := by
    unfold C
    simp [show (3779136 * k + 470434) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 235217) = 5668704 * k + 705652 := by
    unfold C
    simp [show (1889568 * k + 235217) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 705652) = 2834352 * k + 352826 := by
    unfold C
    simp [show (5668704 * k + 705652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 352826) = 1417176 * k + 176413 := by
    unfold C
    simp [show (2834352 * k + 352826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 176413) = 4251528 * k + 529240 := by
    unfold C
    simp [show (1417176 * k + 176413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 529240) = 2125764 * k + 264620 := by
    unfold C
    simp [show (4251528 * k + 529240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 264620) = 1062882 * k + 132310 := by
    unfold C
    simp [show (2125764 * k + 264620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 132310) = 531441 * k + 66155 := by
    unfold C
    simp [show (1062882 * k + 132310) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 130527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 130527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_131007 : ∀ k : Nat,
    iterate (1048576 * k + 131007) 32 = 531441 * k + 66398 ∧
      531441 * k + 66398 < 1048576 * k + 131007 := by
  intro k
  have h1 : C (1048576 * k + 131007) = 3145728 * k + 393022 := by
    unfold C
    simp [show (1048576 * k + 131007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 393022) = 1572864 * k + 196511 := by
    unfold C
    simp [show (3145728 * k + 393022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 196511) = 4718592 * k + 589534 := by
    unfold C
    simp [show (1572864 * k + 196511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 589534) = 2359296 * k + 294767 := by
    unfold C
    simp [show (4718592 * k + 589534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 294767) = 7077888 * k + 884302 := by
    unfold C
    simp [show (2359296 * k + 294767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 884302) = 3538944 * k + 442151 := by
    unfold C
    simp [show (7077888 * k + 884302) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 442151) = 10616832 * k + 1326454 := by
    unfold C
    simp [show (3538944 * k + 442151) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1326454) = 5308416 * k + 663227 := by
    unfold C
    simp [show (10616832 * k + 1326454) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 663227) = 15925248 * k + 1989682 := by
    unfold C
    simp [show (5308416 * k + 663227) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1989682) = 7962624 * k + 994841 := by
    unfold C
    simp [show (15925248 * k + 1989682) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 994841) = 23887872 * k + 2984524 := by
    unfold C
    simp [show (7962624 * k + 994841) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2984524) = 11943936 * k + 1492262 := by
    unfold C
    simp [show (23887872 * k + 2984524) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1492262) = 5971968 * k + 746131 := by
    unfold C
    simp [show (11943936 * k + 1492262) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 746131) = 17915904 * k + 2238394 := by
    unfold C
    simp [show (5971968 * k + 746131) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2238394) = 8957952 * k + 1119197 := by
    unfold C
    simp [show (17915904 * k + 2238394) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1119197) = 26873856 * k + 3357592 := by
    unfold C
    simp [show (8957952 * k + 1119197) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3357592) = 13436928 * k + 1678796 := by
    unfold C
    simp [show (26873856 * k + 3357592) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1678796) = 6718464 * k + 839398 := by
    unfold C
    simp [show (13436928 * k + 1678796) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 839398) = 3359232 * k + 419699 := by
    unfold C
    simp [show (6718464 * k + 839398) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 419699) = 10077696 * k + 1259098 := by
    unfold C
    simp [show (3359232 * k + 419699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1259098) = 5038848 * k + 629549 := by
    unfold C
    simp [show (10077696 * k + 1259098) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 629549) = 15116544 * k + 1888648 := by
    unfold C
    simp [show (5038848 * k + 629549) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1888648) = 7558272 * k + 944324 := by
    unfold C
    simp [show (15116544 * k + 1888648) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 944324) = 3779136 * k + 472162 := by
    unfold C
    simp [show (7558272 * k + 944324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 472162) = 1889568 * k + 236081 := by
    unfold C
    simp [show (3779136 * k + 472162) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 236081) = 5668704 * k + 708244 := by
    unfold C
    simp [show (1889568 * k + 236081) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 708244) = 2834352 * k + 354122 := by
    unfold C
    simp [show (5668704 * k + 708244) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 354122) = 1417176 * k + 177061 := by
    unfold C
    simp [show (2834352 * k + 354122) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 177061) = 4251528 * k + 531184 := by
    unfold C
    simp [show (1417176 * k + 177061) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 531184) = 2125764 * k + 265592 := by
    unfold C
    simp [show (4251528 * k + 531184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 265592) = 1062882 * k + 132796 := by
    unfold C
    simp [show (2125764 * k + 265592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 132796) = 531441 * k + 66398 := by
    unfold C
    simp [show (1062882 * k + 132796) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 131007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 131007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_131135 : ∀ k : Nat,
    iterate (1048576 * k + 131135) 32 = 531441 * k + 66463 ∧
      531441 * k + 66463 < 1048576 * k + 131135 := by
  intro k
  have h1 : C (1048576 * k + 131135) = 3145728 * k + 393406 := by
    unfold C
    simp [show (1048576 * k + 131135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 393406) = 1572864 * k + 196703 := by
    unfold C
    simp [show (3145728 * k + 393406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 196703) = 4718592 * k + 590110 := by
    unfold C
    simp [show (1572864 * k + 196703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 590110) = 2359296 * k + 295055 := by
    unfold C
    simp [show (4718592 * k + 590110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 295055) = 7077888 * k + 885166 := by
    unfold C
    simp [show (2359296 * k + 295055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 885166) = 3538944 * k + 442583 := by
    unfold C
    simp [show (7077888 * k + 885166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 442583) = 10616832 * k + 1327750 := by
    unfold C
    simp [show (3538944 * k + 442583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1327750) = 5308416 * k + 663875 := by
    unfold C
    simp [show (10616832 * k + 1327750) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 663875) = 15925248 * k + 1991626 := by
    unfold C
    simp [show (5308416 * k + 663875) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1991626) = 7962624 * k + 995813 := by
    unfold C
    simp [show (15925248 * k + 1991626) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 995813) = 23887872 * k + 2987440 := by
    unfold C
    simp [show (7962624 * k + 995813) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2987440) = 11943936 * k + 1493720 := by
    unfold C
    simp [show (23887872 * k + 2987440) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1493720) = 5971968 * k + 746860 := by
    unfold C
    simp [show (11943936 * k + 1493720) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 746860) = 2985984 * k + 373430 := by
    unfold C
    simp [show (5971968 * k + 746860) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 373430) = 1492992 * k + 186715 := by
    unfold C
    simp [show (2985984 * k + 373430) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 186715) = 4478976 * k + 560146 := by
    unfold C
    simp [show (1492992 * k + 186715) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 560146) = 2239488 * k + 280073 := by
    unfold C
    simp [show (4478976 * k + 560146) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 280073) = 6718464 * k + 840220 := by
    unfold C
    simp [show (2239488 * k + 280073) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 840220) = 3359232 * k + 420110 := by
    unfold C
    simp [show (6718464 * k + 840220) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 420110) = 1679616 * k + 210055 := by
    unfold C
    simp [show (3359232 * k + 420110) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 210055) = 5038848 * k + 630166 := by
    unfold C
    simp [show (1679616 * k + 210055) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 630166) = 2519424 * k + 315083 := by
    unfold C
    simp [show (5038848 * k + 630166) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 315083) = 7558272 * k + 945250 := by
    unfold C
    simp [show (2519424 * k + 315083) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 945250) = 3779136 * k + 472625 := by
    unfold C
    simp [show (7558272 * k + 945250) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 472625) = 11337408 * k + 1417876 := by
    unfold C
    simp [show (3779136 * k + 472625) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1417876) = 5668704 * k + 708938 := by
    unfold C
    simp [show (11337408 * k + 1417876) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 708938) = 2834352 * k + 354469 := by
    unfold C
    simp [show (5668704 * k + 708938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 354469) = 8503056 * k + 1063408 := by
    unfold C
    simp [show (2834352 * k + 354469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1063408) = 4251528 * k + 531704 := by
    unfold C
    simp [show (8503056 * k + 1063408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 531704) = 2125764 * k + 265852 := by
    unfold C
    simp [show (4251528 * k + 531704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 265852) = 1062882 * k + 132926 := by
    unfold C
    simp [show (2125764 * k + 265852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 132926) = 531441 * k + 66463 := by
    unfold C
    simp [show (1062882 * k + 132926) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 131135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 131135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_131295 : ∀ k : Nat,
    iterate (1048576 * k + 131295) 32 = 531441 * k + 66544 ∧
      531441 * k + 66544 < 1048576 * k + 131295 := by
  intro k
  have h1 : C (1048576 * k + 131295) = 3145728 * k + 393886 := by
    unfold C
    simp [show (1048576 * k + 131295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 393886) = 1572864 * k + 196943 := by
    unfold C
    simp [show (3145728 * k + 393886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 196943) = 4718592 * k + 590830 := by
    unfold C
    simp [show (1572864 * k + 196943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 590830) = 2359296 * k + 295415 := by
    unfold C
    simp [show (4718592 * k + 590830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 295415) = 7077888 * k + 886246 := by
    unfold C
    simp [show (2359296 * k + 295415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 886246) = 3538944 * k + 443123 := by
    unfold C
    simp [show (7077888 * k + 886246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 443123) = 10616832 * k + 1329370 := by
    unfold C
    simp [show (3538944 * k + 443123) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1329370) = 5308416 * k + 664685 := by
    unfold C
    simp [show (10616832 * k + 1329370) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 664685) = 15925248 * k + 1994056 := by
    unfold C
    simp [show (5308416 * k + 664685) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1994056) = 7962624 * k + 997028 := by
    unfold C
    simp [show (15925248 * k + 1994056) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 997028) = 3981312 * k + 498514 := by
    unfold C
    simp [show (7962624 * k + 997028) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 498514) = 1990656 * k + 249257 := by
    unfold C
    simp [show (3981312 * k + 498514) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 249257) = 5971968 * k + 747772 := by
    unfold C
    simp [show (1990656 * k + 249257) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 747772) = 2985984 * k + 373886 := by
    unfold C
    simp [show (5971968 * k + 747772) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 373886) = 1492992 * k + 186943 := by
    unfold C
    simp [show (2985984 * k + 373886) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 186943) = 4478976 * k + 560830 := by
    unfold C
    simp [show (1492992 * k + 186943) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 560830) = 2239488 * k + 280415 := by
    unfold C
    simp [show (4478976 * k + 560830) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 280415) = 6718464 * k + 841246 := by
    unfold C
    simp [show (2239488 * k + 280415) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 841246) = 3359232 * k + 420623 := by
    unfold C
    simp [show (6718464 * k + 841246) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 420623) = 10077696 * k + 1261870 := by
    unfold C
    simp [show (3359232 * k + 420623) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1261870) = 5038848 * k + 630935 := by
    unfold C
    simp [show (10077696 * k + 1261870) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 630935) = 15116544 * k + 1892806 := by
    unfold C
    simp [show (5038848 * k + 630935) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1892806) = 7558272 * k + 946403 := by
    unfold C
    simp [show (15116544 * k + 1892806) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 946403) = 22674816 * k + 2839210 := by
    unfold C
    simp [show (7558272 * k + 946403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2839210) = 11337408 * k + 1419605 := by
    unfold C
    simp [show (22674816 * k + 2839210) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1419605) = 34012224 * k + 4258816 := by
    unfold C
    simp [show (11337408 * k + 1419605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 4258816) = 17006112 * k + 2129408 := by
    unfold C
    simp [show (34012224 * k + 4258816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2129408) = 8503056 * k + 1064704 := by
    unfold C
    simp [show (17006112 * k + 2129408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1064704) = 4251528 * k + 532352 := by
    unfold C
    simp [show (8503056 * k + 1064704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 532352) = 2125764 * k + 266176 := by
    unfold C
    simp [show (4251528 * k + 532352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 266176) = 1062882 * k + 133088 := by
    unfold C
    simp [show (2125764 * k + 266176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 133088) = 531441 * k + 66544 := by
    unfold C
    simp [show (1062882 * k + 133088) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 131295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 131295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_131739 : ∀ k : Nat,
    iterate (1048576 * k + 131739) 32 = 531441 * k + 66769 ∧
      531441 * k + 66769 < 1048576 * k + 131739 := by
  intro k
  have h1 : C (1048576 * k + 131739) = 3145728 * k + 395218 := by
    unfold C
    simp [show (1048576 * k + 131739) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 395218) = 1572864 * k + 197609 := by
    unfold C
    simp [show (3145728 * k + 395218) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 197609) = 4718592 * k + 592828 := by
    unfold C
    simp [show (1572864 * k + 197609) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 592828) = 2359296 * k + 296414 := by
    unfold C
    simp [show (4718592 * k + 592828) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 296414) = 1179648 * k + 148207 := by
    unfold C
    simp [show (2359296 * k + 296414) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 148207) = 3538944 * k + 444622 := by
    unfold C
    simp [show (1179648 * k + 148207) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 444622) = 1769472 * k + 222311 := by
    unfold C
    simp [show (3538944 * k + 444622) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 222311) = 5308416 * k + 666934 := by
    unfold C
    simp [show (1769472 * k + 222311) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 666934) = 2654208 * k + 333467 := by
    unfold C
    simp [show (5308416 * k + 666934) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 333467) = 7962624 * k + 1000402 := by
    unfold C
    simp [show (2654208 * k + 333467) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1000402) = 3981312 * k + 500201 := by
    unfold C
    simp [show (7962624 * k + 1000402) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 500201) = 11943936 * k + 1500604 := by
    unfold C
    simp [show (3981312 * k + 500201) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1500604) = 5971968 * k + 750302 := by
    unfold C
    simp [show (11943936 * k + 1500604) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 750302) = 2985984 * k + 375151 := by
    unfold C
    simp [show (5971968 * k + 750302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 375151) = 8957952 * k + 1125454 := by
    unfold C
    simp [show (2985984 * k + 375151) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1125454) = 4478976 * k + 562727 := by
    unfold C
    simp [show (8957952 * k + 1125454) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 562727) = 13436928 * k + 1688182 := by
    unfold C
    simp [show (4478976 * k + 562727) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1688182) = 6718464 * k + 844091 := by
    unfold C
    simp [show (13436928 * k + 1688182) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 844091) = 20155392 * k + 2532274 := by
    unfold C
    simp [show (6718464 * k + 844091) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2532274) = 10077696 * k + 1266137 := by
    unfold C
    simp [show (20155392 * k + 2532274) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1266137) = 30233088 * k + 3798412 := by
    unfold C
    simp [show (10077696 * k + 1266137) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3798412) = 15116544 * k + 1899206 := by
    unfold C
    simp [show (30233088 * k + 3798412) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1899206) = 7558272 * k + 949603 := by
    unfold C
    simp [show (15116544 * k + 1899206) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 949603) = 22674816 * k + 2848810 := by
    unfold C
    simp [show (7558272 * k + 949603) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2848810) = 11337408 * k + 1424405 := by
    unfold C
    simp [show (22674816 * k + 2848810) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1424405) = 34012224 * k + 4273216 := by
    unfold C
    simp [show (11337408 * k + 1424405) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 4273216) = 17006112 * k + 2136608 := by
    unfold C
    simp [show (34012224 * k + 4273216) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2136608) = 8503056 * k + 1068304 := by
    unfold C
    simp [show (17006112 * k + 2136608) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1068304) = 4251528 * k + 534152 := by
    unfold C
    simp [show (8503056 * k + 1068304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 534152) = 2125764 * k + 267076 := by
    unfold C
    simp [show (4251528 * k + 534152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 267076) = 1062882 * k + 133538 := by
    unfold C
    simp [show (2125764 * k + 267076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 133538) = 531441 * k + 66769 := by
    unfold C
    simp [show (1062882 * k + 133538) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 131739) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 131739)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_132455 : ∀ k : Nat,
    iterate (1048576 * k + 132455) 32 = 531441 * k + 67132 ∧
      531441 * k + 67132 < 1048576 * k + 132455 := by
  intro k
  have h1 : C (1048576 * k + 132455) = 3145728 * k + 397366 := by
    unfold C
    simp [show (1048576 * k + 132455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 397366) = 1572864 * k + 198683 := by
    unfold C
    simp [show (3145728 * k + 397366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 198683) = 4718592 * k + 596050 := by
    unfold C
    simp [show (1572864 * k + 198683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 596050) = 2359296 * k + 298025 := by
    unfold C
    simp [show (4718592 * k + 596050) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 298025) = 7077888 * k + 894076 := by
    unfold C
    simp [show (2359296 * k + 298025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 894076) = 3538944 * k + 447038 := by
    unfold C
    simp [show (7077888 * k + 894076) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 447038) = 1769472 * k + 223519 := by
    unfold C
    simp [show (3538944 * k + 447038) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 223519) = 5308416 * k + 670558 := by
    unfold C
    simp [show (1769472 * k + 223519) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 670558) = 2654208 * k + 335279 := by
    unfold C
    simp [show (5308416 * k + 670558) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 335279) = 7962624 * k + 1005838 := by
    unfold C
    simp [show (2654208 * k + 335279) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1005838) = 3981312 * k + 502919 := by
    unfold C
    simp [show (7962624 * k + 1005838) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 502919) = 11943936 * k + 1508758 := by
    unfold C
    simp [show (3981312 * k + 502919) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1508758) = 5971968 * k + 754379 := by
    unfold C
    simp [show (11943936 * k + 1508758) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 754379) = 17915904 * k + 2263138 := by
    unfold C
    simp [show (5971968 * k + 754379) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2263138) = 8957952 * k + 1131569 := by
    unfold C
    simp [show (17915904 * k + 2263138) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1131569) = 26873856 * k + 3394708 := by
    unfold C
    simp [show (8957952 * k + 1131569) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3394708) = 13436928 * k + 1697354 := by
    unfold C
    simp [show (26873856 * k + 3394708) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1697354) = 6718464 * k + 848677 := by
    unfold C
    simp [show (13436928 * k + 1697354) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 848677) = 20155392 * k + 2546032 := by
    unfold C
    simp [show (6718464 * k + 848677) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2546032) = 10077696 * k + 1273016 := by
    unfold C
    simp [show (20155392 * k + 2546032) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1273016) = 5038848 * k + 636508 := by
    unfold C
    simp [show (10077696 * k + 1273016) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 636508) = 2519424 * k + 318254 := by
    unfold C
    simp [show (5038848 * k + 636508) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 318254) = 1259712 * k + 159127 := by
    unfold C
    simp [show (2519424 * k + 318254) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 159127) = 3779136 * k + 477382 := by
    unfold C
    simp [show (1259712 * k + 159127) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 477382) = 1889568 * k + 238691 := by
    unfold C
    simp [show (3779136 * k + 477382) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 238691) = 5668704 * k + 716074 := by
    unfold C
    simp [show (1889568 * k + 238691) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 716074) = 2834352 * k + 358037 := by
    unfold C
    simp [show (5668704 * k + 716074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 358037) = 8503056 * k + 1074112 := by
    unfold C
    simp [show (2834352 * k + 358037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1074112) = 4251528 * k + 537056 := by
    unfold C
    simp [show (8503056 * k + 1074112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 537056) = 2125764 * k + 268528 := by
    unfold C
    simp [show (4251528 * k + 537056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 268528) = 1062882 * k + 134264 := by
    unfold C
    simp [show (2125764 * k + 268528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 134264) = 531441 * k + 67132 := by
    unfold C
    simp [show (1062882 * k + 134264) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 132455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 132455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_133031 : ∀ k : Nat,
    iterate (1048576 * k + 133031) 32 = 531441 * k + 67424 ∧
      531441 * k + 67424 < 1048576 * k + 133031 := by
  intro k
  have h1 : C (1048576 * k + 133031) = 3145728 * k + 399094 := by
    unfold C
    simp [show (1048576 * k + 133031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 399094) = 1572864 * k + 199547 := by
    unfold C
    simp [show (3145728 * k + 399094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 199547) = 4718592 * k + 598642 := by
    unfold C
    simp [show (1572864 * k + 199547) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 598642) = 2359296 * k + 299321 := by
    unfold C
    simp [show (4718592 * k + 598642) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 299321) = 7077888 * k + 897964 := by
    unfold C
    simp [show (2359296 * k + 299321) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 897964) = 3538944 * k + 448982 := by
    unfold C
    simp [show (7077888 * k + 897964) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 448982) = 1769472 * k + 224491 := by
    unfold C
    simp [show (3538944 * k + 448982) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 224491) = 5308416 * k + 673474 := by
    unfold C
    simp [show (1769472 * k + 224491) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 673474) = 2654208 * k + 336737 := by
    unfold C
    simp [show (5308416 * k + 673474) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 336737) = 7962624 * k + 1010212 := by
    unfold C
    simp [show (2654208 * k + 336737) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1010212) = 3981312 * k + 505106 := by
    unfold C
    simp [show (7962624 * k + 1010212) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 505106) = 1990656 * k + 252553 := by
    unfold C
    simp [show (3981312 * k + 505106) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 252553) = 5971968 * k + 757660 := by
    unfold C
    simp [show (1990656 * k + 252553) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 757660) = 2985984 * k + 378830 := by
    unfold C
    simp [show (5971968 * k + 757660) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 378830) = 1492992 * k + 189415 := by
    unfold C
    simp [show (2985984 * k + 378830) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 189415) = 4478976 * k + 568246 := by
    unfold C
    simp [show (1492992 * k + 189415) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 568246) = 2239488 * k + 284123 := by
    unfold C
    simp [show (4478976 * k + 568246) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 284123) = 6718464 * k + 852370 := by
    unfold C
    simp [show (2239488 * k + 284123) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 852370) = 3359232 * k + 426185 := by
    unfold C
    simp [show (6718464 * k + 852370) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 426185) = 10077696 * k + 1278556 := by
    unfold C
    simp [show (3359232 * k + 426185) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1278556) = 5038848 * k + 639278 := by
    unfold C
    simp [show (10077696 * k + 1278556) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 639278) = 2519424 * k + 319639 := by
    unfold C
    simp [show (5038848 * k + 639278) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 319639) = 7558272 * k + 958918 := by
    unfold C
    simp [show (2519424 * k + 319639) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 958918) = 3779136 * k + 479459 := by
    unfold C
    simp [show (7558272 * k + 958918) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 479459) = 11337408 * k + 1438378 := by
    unfold C
    simp [show (3779136 * k + 479459) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1438378) = 5668704 * k + 719189 := by
    unfold C
    simp [show (11337408 * k + 1438378) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 719189) = 17006112 * k + 2157568 := by
    unfold C
    simp [show (5668704 * k + 719189) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2157568) = 8503056 * k + 1078784 := by
    unfold C
    simp [show (17006112 * k + 2157568) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1078784) = 4251528 * k + 539392 := by
    unfold C
    simp [show (8503056 * k + 1078784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 539392) = 2125764 * k + 269696 := by
    unfold C
    simp [show (4251528 * k + 539392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 269696) = 1062882 * k + 134848 := by
    unfold C
    simp [show (2125764 * k + 269696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 134848) = 531441 * k + 67424 := by
    unfold C
    simp [show (1062882 * k + 134848) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 133031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 133031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_133723 : ∀ k : Nat,
    iterate (1048576 * k + 133723) 32 = 531441 * k + 67775 ∧
      531441 * k + 67775 < 1048576 * k + 133723 := by
  intro k
  have h1 : C (1048576 * k + 133723) = 3145728 * k + 401170 := by
    unfold C
    simp [show (1048576 * k + 133723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 401170) = 1572864 * k + 200585 := by
    unfold C
    simp [show (3145728 * k + 401170) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 200585) = 4718592 * k + 601756 := by
    unfold C
    simp [show (1572864 * k + 200585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 601756) = 2359296 * k + 300878 := by
    unfold C
    simp [show (4718592 * k + 601756) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 300878) = 1179648 * k + 150439 := by
    unfold C
    simp [show (2359296 * k + 300878) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 150439) = 3538944 * k + 451318 := by
    unfold C
    simp [show (1179648 * k + 150439) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 451318) = 1769472 * k + 225659 := by
    unfold C
    simp [show (3538944 * k + 451318) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 225659) = 5308416 * k + 676978 := by
    unfold C
    simp [show (1769472 * k + 225659) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 676978) = 2654208 * k + 338489 := by
    unfold C
    simp [show (5308416 * k + 676978) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 338489) = 7962624 * k + 1015468 := by
    unfold C
    simp [show (2654208 * k + 338489) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1015468) = 3981312 * k + 507734 := by
    unfold C
    simp [show (7962624 * k + 1015468) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 507734) = 1990656 * k + 253867 := by
    unfold C
    simp [show (3981312 * k + 507734) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 253867) = 5971968 * k + 761602 := by
    unfold C
    simp [show (1990656 * k + 253867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 761602) = 2985984 * k + 380801 := by
    unfold C
    simp [show (5971968 * k + 761602) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 380801) = 8957952 * k + 1142404 := by
    unfold C
    simp [show (2985984 * k + 380801) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1142404) = 4478976 * k + 571202 := by
    unfold C
    simp [show (8957952 * k + 1142404) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 571202) = 2239488 * k + 285601 := by
    unfold C
    simp [show (4478976 * k + 571202) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 285601) = 6718464 * k + 856804 := by
    unfold C
    simp [show (2239488 * k + 285601) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 856804) = 3359232 * k + 428402 := by
    unfold C
    simp [show (6718464 * k + 856804) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 428402) = 1679616 * k + 214201 := by
    unfold C
    simp [show (3359232 * k + 428402) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 214201) = 5038848 * k + 642604 := by
    unfold C
    simp [show (1679616 * k + 214201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 642604) = 2519424 * k + 321302 := by
    unfold C
    simp [show (5038848 * k + 642604) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 321302) = 1259712 * k + 160651 := by
    unfold C
    simp [show (2519424 * k + 321302) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 160651) = 3779136 * k + 481954 := by
    unfold C
    simp [show (1259712 * k + 160651) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 481954) = 1889568 * k + 240977 := by
    unfold C
    simp [show (3779136 * k + 481954) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 240977) = 5668704 * k + 722932 := by
    unfold C
    simp [show (1889568 * k + 240977) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 722932) = 2834352 * k + 361466 := by
    unfold C
    simp [show (5668704 * k + 722932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 361466) = 1417176 * k + 180733 := by
    unfold C
    simp [show (2834352 * k + 361466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 180733) = 4251528 * k + 542200 := by
    unfold C
    simp [show (1417176 * k + 180733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 542200) = 2125764 * k + 271100 := by
    unfold C
    simp [show (4251528 * k + 542200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 271100) = 1062882 * k + 135550 := by
    unfold C
    simp [show (2125764 * k + 271100) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 135550) = 531441 * k + 67775 := by
    unfold C
    simp [show (1062882 * k + 135550) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 133723) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 133723)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_133883 : ∀ k : Nat,
    iterate (1048576 * k + 133883) 32 = 531441 * k + 67856 ∧
      531441 * k + 67856 < 1048576 * k + 133883 := by
  intro k
  have h1 : C (1048576 * k + 133883) = 3145728 * k + 401650 := by
    unfold C
    simp [show (1048576 * k + 133883) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 401650) = 1572864 * k + 200825 := by
    unfold C
    simp [show (3145728 * k + 401650) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 200825) = 4718592 * k + 602476 := by
    unfold C
    simp [show (1572864 * k + 200825) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 602476) = 2359296 * k + 301238 := by
    unfold C
    simp [show (4718592 * k + 602476) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 301238) = 1179648 * k + 150619 := by
    unfold C
    simp [show (2359296 * k + 301238) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 150619) = 3538944 * k + 451858 := by
    unfold C
    simp [show (1179648 * k + 150619) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 451858) = 1769472 * k + 225929 := by
    unfold C
    simp [show (3538944 * k + 451858) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 225929) = 5308416 * k + 677788 := by
    unfold C
    simp [show (1769472 * k + 225929) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 677788) = 2654208 * k + 338894 := by
    unfold C
    simp [show (5308416 * k + 677788) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 338894) = 1327104 * k + 169447 := by
    unfold C
    simp [show (2654208 * k + 338894) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 169447) = 3981312 * k + 508342 := by
    unfold C
    simp [show (1327104 * k + 169447) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 508342) = 1990656 * k + 254171 := by
    unfold C
    simp [show (3981312 * k + 508342) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 254171) = 5971968 * k + 762514 := by
    unfold C
    simp [show (1990656 * k + 254171) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 762514) = 2985984 * k + 381257 := by
    unfold C
    simp [show (5971968 * k + 762514) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 381257) = 8957952 * k + 1143772 := by
    unfold C
    simp [show (2985984 * k + 381257) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1143772) = 4478976 * k + 571886 := by
    unfold C
    simp [show (8957952 * k + 1143772) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 571886) = 2239488 * k + 285943 := by
    unfold C
    simp [show (4478976 * k + 571886) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 285943) = 6718464 * k + 857830 := by
    unfold C
    simp [show (2239488 * k + 285943) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 857830) = 3359232 * k + 428915 := by
    unfold C
    simp [show (6718464 * k + 857830) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 428915) = 10077696 * k + 1286746 := by
    unfold C
    simp [show (3359232 * k + 428915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1286746) = 5038848 * k + 643373 := by
    unfold C
    simp [show (10077696 * k + 1286746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 643373) = 15116544 * k + 1930120 := by
    unfold C
    simp [show (5038848 * k + 643373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1930120) = 7558272 * k + 965060 := by
    unfold C
    simp [show (15116544 * k + 1930120) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 965060) = 3779136 * k + 482530 := by
    unfold C
    simp [show (7558272 * k + 965060) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 482530) = 1889568 * k + 241265 := by
    unfold C
    simp [show (3779136 * k + 482530) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 241265) = 5668704 * k + 723796 := by
    unfold C
    simp [show (1889568 * k + 241265) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 723796) = 2834352 * k + 361898 := by
    unfold C
    simp [show (5668704 * k + 723796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 361898) = 1417176 * k + 180949 := by
    unfold C
    simp [show (2834352 * k + 361898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 180949) = 4251528 * k + 542848 := by
    unfold C
    simp [show (1417176 * k + 180949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 542848) = 2125764 * k + 271424 := by
    unfold C
    simp [show (4251528 * k + 542848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 271424) = 1062882 * k + 135712 := by
    unfold C
    simp [show (2125764 * k + 271424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 135712) = 531441 * k + 67856 := by
    unfold C
    simp [show (1062882 * k + 135712) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 133883) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 133883)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_134399 : ∀ k : Nat,
    iterate (1048576 * k + 134399) 32 = 531441 * k + 68117 ∧
      531441 * k + 68117 < 1048576 * k + 134399 := by
  intro k
  have h1 : C (1048576 * k + 134399) = 3145728 * k + 403198 := by
    unfold C
    simp [show (1048576 * k + 134399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 403198) = 1572864 * k + 201599 := by
    unfold C
    simp [show (3145728 * k + 403198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 201599) = 4718592 * k + 604798 := by
    unfold C
    simp [show (1572864 * k + 201599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 604798) = 2359296 * k + 302399 := by
    unfold C
    simp [show (4718592 * k + 604798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 302399) = 7077888 * k + 907198 := by
    unfold C
    simp [show (2359296 * k + 302399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 907198) = 3538944 * k + 453599 := by
    unfold C
    simp [show (7077888 * k + 907198) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 453599) = 10616832 * k + 1360798 := by
    unfold C
    simp [show (3538944 * k + 453599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1360798) = 5308416 * k + 680399 := by
    unfold C
    simp [show (10616832 * k + 1360798) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 680399) = 15925248 * k + 2041198 := by
    unfold C
    simp [show (5308416 * k + 680399) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2041198) = 7962624 * k + 1020599 := by
    unfold C
    simp [show (15925248 * k + 2041198) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1020599) = 23887872 * k + 3061798 := by
    unfold C
    simp [show (7962624 * k + 1020599) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3061798) = 11943936 * k + 1530899 := by
    unfold C
    simp [show (23887872 * k + 3061798) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1530899) = 35831808 * k + 4592698 := by
    unfold C
    simp [show (11943936 * k + 1530899) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 4592698) = 17915904 * k + 2296349 := by
    unfold C
    simp [show (35831808 * k + 4592698) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2296349) = 53747712 * k + 6889048 := by
    unfold C
    simp [show (17915904 * k + 2296349) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 6889048) = 26873856 * k + 3444524 := by
    unfold C
    simp [show (53747712 * k + 6889048) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 3444524) = 13436928 * k + 1722262 := by
    unfold C
    simp [show (26873856 * k + 3444524) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1722262) = 6718464 * k + 861131 := by
    unfold C
    simp [show (13436928 * k + 1722262) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 861131) = 20155392 * k + 2583394 := by
    unfold C
    simp [show (6718464 * k + 861131) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2583394) = 10077696 * k + 1291697 := by
    unfold C
    simp [show (20155392 * k + 2583394) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1291697) = 30233088 * k + 3875092 := by
    unfold C
    simp [show (10077696 * k + 1291697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3875092) = 15116544 * k + 1937546 := by
    unfold C
    simp [show (30233088 * k + 3875092) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1937546) = 7558272 * k + 968773 := by
    unfold C
    simp [show (15116544 * k + 1937546) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 968773) = 22674816 * k + 2906320 := by
    unfold C
    simp [show (7558272 * k + 968773) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2906320) = 11337408 * k + 1453160 := by
    unfold C
    simp [show (22674816 * k + 2906320) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1453160) = 5668704 * k + 726580 := by
    unfold C
    simp [show (11337408 * k + 1453160) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 726580) = 2834352 * k + 363290 := by
    unfold C
    simp [show (5668704 * k + 726580) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 363290) = 1417176 * k + 181645 := by
    unfold C
    simp [show (2834352 * k + 363290) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 181645) = 4251528 * k + 544936 := by
    unfold C
    simp [show (1417176 * k + 181645) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 544936) = 2125764 * k + 272468 := by
    unfold C
    simp [show (4251528 * k + 544936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 272468) = 1062882 * k + 136234 := by
    unfold C
    simp [show (2125764 * k + 272468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 136234) = 531441 * k + 68117 := by
    unfold C
    simp [show (1062882 * k + 136234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 134399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 134399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_134811 : ∀ k : Nat,
    iterate (1048576 * k + 134811) 32 = 531441 * k + 68326 ∧
      531441 * k + 68326 < 1048576 * k + 134811 := by
  intro k
  have h1 : C (1048576 * k + 134811) = 3145728 * k + 404434 := by
    unfold C
    simp [show (1048576 * k + 134811) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 404434) = 1572864 * k + 202217 := by
    unfold C
    simp [show (3145728 * k + 404434) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 202217) = 4718592 * k + 606652 := by
    unfold C
    simp [show (1572864 * k + 202217) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 606652) = 2359296 * k + 303326 := by
    unfold C
    simp [show (4718592 * k + 606652) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 303326) = 1179648 * k + 151663 := by
    unfold C
    simp [show (2359296 * k + 303326) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 151663) = 3538944 * k + 454990 := by
    unfold C
    simp [show (1179648 * k + 151663) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 454990) = 1769472 * k + 227495 := by
    unfold C
    simp [show (3538944 * k + 454990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 227495) = 5308416 * k + 682486 := by
    unfold C
    simp [show (1769472 * k + 227495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 682486) = 2654208 * k + 341243 := by
    unfold C
    simp [show (5308416 * k + 682486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 341243) = 7962624 * k + 1023730 := by
    unfold C
    simp [show (2654208 * k + 341243) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1023730) = 3981312 * k + 511865 := by
    unfold C
    simp [show (7962624 * k + 1023730) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 511865) = 11943936 * k + 1535596 := by
    unfold C
    simp [show (3981312 * k + 511865) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1535596) = 5971968 * k + 767798 := by
    unfold C
    simp [show (11943936 * k + 1535596) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 767798) = 2985984 * k + 383899 := by
    unfold C
    simp [show (5971968 * k + 767798) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 383899) = 8957952 * k + 1151698 := by
    unfold C
    simp [show (2985984 * k + 383899) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1151698) = 4478976 * k + 575849 := by
    unfold C
    simp [show (8957952 * k + 1151698) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 575849) = 13436928 * k + 1727548 := by
    unfold C
    simp [show (4478976 * k + 575849) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1727548) = 6718464 * k + 863774 := by
    unfold C
    simp [show (13436928 * k + 1727548) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 863774) = 3359232 * k + 431887 := by
    unfold C
    simp [show (6718464 * k + 863774) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 431887) = 10077696 * k + 1295662 := by
    unfold C
    simp [show (3359232 * k + 431887) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1295662) = 5038848 * k + 647831 := by
    unfold C
    simp [show (10077696 * k + 1295662) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 647831) = 15116544 * k + 1943494 := by
    unfold C
    simp [show (5038848 * k + 647831) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1943494) = 7558272 * k + 971747 := by
    unfold C
    simp [show (15116544 * k + 1943494) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 971747) = 22674816 * k + 2915242 := by
    unfold C
    simp [show (7558272 * k + 971747) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2915242) = 11337408 * k + 1457621 := by
    unfold C
    simp [show (22674816 * k + 2915242) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1457621) = 34012224 * k + 4372864 := by
    unfold C
    simp [show (11337408 * k + 1457621) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 4372864) = 17006112 * k + 2186432 := by
    unfold C
    simp [show (34012224 * k + 4372864) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2186432) = 8503056 * k + 1093216 := by
    unfold C
    simp [show (17006112 * k + 2186432) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1093216) = 4251528 * k + 546608 := by
    unfold C
    simp [show (8503056 * k + 1093216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 546608) = 2125764 * k + 273304 := by
    unfold C
    simp [show (4251528 * k + 546608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 273304) = 1062882 * k + 136652 := by
    unfold C
    simp [show (2125764 * k + 273304) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 136652) = 531441 * k + 68326 := by
    unfold C
    simp [show (1062882 * k + 136652) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 134811) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 134811)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_135215 : ∀ k : Nat,
    iterate (1048576 * k + 135215) 32 = 531441 * k + 68531 ∧
      531441 * k + 68531 < 1048576 * k + 135215 := by
  intro k
  have h1 : C (1048576 * k + 135215) = 3145728 * k + 405646 := by
    unfold C
    simp [show (1048576 * k + 135215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 405646) = 1572864 * k + 202823 := by
    unfold C
    simp [show (3145728 * k + 405646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 202823) = 4718592 * k + 608470 := by
    unfold C
    simp [show (1572864 * k + 202823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 608470) = 2359296 * k + 304235 := by
    unfold C
    simp [show (4718592 * k + 608470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 304235) = 7077888 * k + 912706 := by
    unfold C
    simp [show (2359296 * k + 304235) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 912706) = 3538944 * k + 456353 := by
    unfold C
    simp [show (7077888 * k + 912706) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 456353) = 10616832 * k + 1369060 := by
    unfold C
    simp [show (3538944 * k + 456353) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1369060) = 5308416 * k + 684530 := by
    unfold C
    simp [show (10616832 * k + 1369060) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 684530) = 2654208 * k + 342265 := by
    unfold C
    simp [show (5308416 * k + 684530) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 342265) = 7962624 * k + 1026796 := by
    unfold C
    simp [show (2654208 * k + 342265) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1026796) = 3981312 * k + 513398 := by
    unfold C
    simp [show (7962624 * k + 1026796) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 513398) = 1990656 * k + 256699 := by
    unfold C
    simp [show (3981312 * k + 513398) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 256699) = 5971968 * k + 770098 := by
    unfold C
    simp [show (1990656 * k + 256699) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 770098) = 2985984 * k + 385049 := by
    unfold C
    simp [show (5971968 * k + 770098) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 385049) = 8957952 * k + 1155148 := by
    unfold C
    simp [show (2985984 * k + 385049) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1155148) = 4478976 * k + 577574 := by
    unfold C
    simp [show (8957952 * k + 1155148) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 577574) = 2239488 * k + 288787 := by
    unfold C
    simp [show (4478976 * k + 577574) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 288787) = 6718464 * k + 866362 := by
    unfold C
    simp [show (2239488 * k + 288787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 866362) = 3359232 * k + 433181 := by
    unfold C
    simp [show (6718464 * k + 866362) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 433181) = 10077696 * k + 1299544 := by
    unfold C
    simp [show (3359232 * k + 433181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1299544) = 5038848 * k + 649772 := by
    unfold C
    simp [show (10077696 * k + 1299544) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 649772) = 2519424 * k + 324886 := by
    unfold C
    simp [show (5038848 * k + 649772) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 324886) = 1259712 * k + 162443 := by
    unfold C
    simp [show (2519424 * k + 324886) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 162443) = 3779136 * k + 487330 := by
    unfold C
    simp [show (1259712 * k + 162443) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 487330) = 1889568 * k + 243665 := by
    unfold C
    simp [show (3779136 * k + 487330) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 243665) = 5668704 * k + 730996 := by
    unfold C
    simp [show (1889568 * k + 243665) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 730996) = 2834352 * k + 365498 := by
    unfold C
    simp [show (5668704 * k + 730996) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 365498) = 1417176 * k + 182749 := by
    unfold C
    simp [show (2834352 * k + 365498) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 182749) = 4251528 * k + 548248 := by
    unfold C
    simp [show (1417176 * k + 182749) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 548248) = 2125764 * k + 274124 := by
    unfold C
    simp [show (4251528 * k + 548248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 274124) = 1062882 * k + 137062 := by
    unfold C
    simp [show (2125764 * k + 274124) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 137062) = 531441 * k + 68531 := by
    unfold C
    simp [show (1062882 * k + 137062) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 135215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 135215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard018
