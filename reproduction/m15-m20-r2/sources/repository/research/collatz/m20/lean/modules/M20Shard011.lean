import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard011

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_69631 : ∀ k : Nat,
    iterate (1048576 * k + 69631) 32 = 531441 * k + 35291 ∧
      531441 * k + 35291 < 1048576 * k + 69631 := by
  intro k
  have h1 : C (1048576 * k + 69631) = 3145728 * k + 208894 := by
    unfold C
    simp [show (1048576 * k + 69631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 208894) = 1572864 * k + 104447 := by
    unfold C
    simp [show (3145728 * k + 208894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 104447) = 4718592 * k + 313342 := by
    unfold C
    simp [show (1572864 * k + 104447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 313342) = 2359296 * k + 156671 := by
    unfold C
    simp [show (4718592 * k + 313342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 156671) = 7077888 * k + 470014 := by
    unfold C
    simp [show (2359296 * k + 156671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 470014) = 3538944 * k + 235007 := by
    unfold C
    simp [show (7077888 * k + 470014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 235007) = 10616832 * k + 705022 := by
    unfold C
    simp [show (3538944 * k + 235007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 705022) = 5308416 * k + 352511 := by
    unfold C
    simp [show (10616832 * k + 705022) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 352511) = 15925248 * k + 1057534 := by
    unfold C
    simp [show (5308416 * k + 352511) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1057534) = 7962624 * k + 528767 := by
    unfold C
    simp [show (15925248 * k + 1057534) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 528767) = 23887872 * k + 1586302 := by
    unfold C
    simp [show (7962624 * k + 528767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1586302) = 11943936 * k + 793151 := by
    unfold C
    simp [show (23887872 * k + 1586302) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 793151) = 35831808 * k + 2379454 := by
    unfold C
    simp [show (11943936 * k + 793151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2379454) = 17915904 * k + 1189727 := by
    unfold C
    simp [show (35831808 * k + 2379454) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1189727) = 53747712 * k + 3569182 := by
    unfold C
    simp [show (17915904 * k + 1189727) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 3569182) = 26873856 * k + 1784591 := by
    unfold C
    simp [show (53747712 * k + 3569182) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1784591) = 80621568 * k + 5353774 := by
    unfold C
    simp [show (26873856 * k + 1784591) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 5353774) = 40310784 * k + 2676887 := by
    unfold C
    simp [show (80621568 * k + 5353774) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 2676887) = 120932352 * k + 8030662 := by
    unfold C
    simp [show (40310784 * k + 2676887) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 8030662) = 60466176 * k + 4015331 := by
    unfold C
    simp [show (120932352 * k + 8030662) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 4015331) = 181398528 * k + 12045994 := by
    unfold C
    simp [show (60466176 * k + 4015331) % 2 ≠ 0 by omega]
    omega
  have h22 : C (181398528 * k + 12045994) = 90699264 * k + 6022997 := by
    unfold C
    simp [show (181398528 * k + 12045994) % 2 = 0 by omega]
    omega
  have h23 : C (90699264 * k + 6022997) = 272097792 * k + 18068992 := by
    unfold C
    simp [show (90699264 * k + 6022997) % 2 ≠ 0 by omega]
    omega
  have h24 : C (272097792 * k + 18068992) = 136048896 * k + 9034496 := by
    unfold C
    simp [show (272097792 * k + 18068992) % 2 = 0 by omega]
    omega
  have h25 : C (136048896 * k + 9034496) = 68024448 * k + 4517248 := by
    unfold C
    simp [show (136048896 * k + 9034496) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 4517248) = 34012224 * k + 2258624 := by
    unfold C
    simp [show (68024448 * k + 4517248) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 2258624) = 17006112 * k + 1129312 := by
    unfold C
    simp [show (34012224 * k + 2258624) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1129312) = 8503056 * k + 564656 := by
    unfold C
    simp [show (17006112 * k + 1129312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 564656) = 4251528 * k + 282328 := by
    unfold C
    simp [show (8503056 * k + 564656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 282328) = 2125764 * k + 141164 := by
    unfold C
    simp [show (4251528 * k + 282328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 141164) = 1062882 * k + 70582 := by
    unfold C
    simp [show (2125764 * k + 141164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 70582) = 531441 * k + 35291 := by
    unfold C
    simp [show (1062882 * k + 70582) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 69631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 69631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_69743 : ∀ k : Nat,
    iterate (1048576 * k + 69743) 32 = 531441 * k + 35348 ∧
      531441 * k + 35348 < 1048576 * k + 69743 := by
  intro k
  have h1 : C (1048576 * k + 69743) = 3145728 * k + 209230 := by
    unfold C
    simp [show (1048576 * k + 69743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 209230) = 1572864 * k + 104615 := by
    unfold C
    simp [show (3145728 * k + 209230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 104615) = 4718592 * k + 313846 := by
    unfold C
    simp [show (1572864 * k + 104615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 313846) = 2359296 * k + 156923 := by
    unfold C
    simp [show (4718592 * k + 313846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 156923) = 7077888 * k + 470770 := by
    unfold C
    simp [show (2359296 * k + 156923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 470770) = 3538944 * k + 235385 := by
    unfold C
    simp [show (7077888 * k + 470770) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 235385) = 10616832 * k + 706156 := by
    unfold C
    simp [show (3538944 * k + 235385) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 706156) = 5308416 * k + 353078 := by
    unfold C
    simp [show (10616832 * k + 706156) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 353078) = 2654208 * k + 176539 := by
    unfold C
    simp [show (5308416 * k + 353078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 176539) = 7962624 * k + 529618 := by
    unfold C
    simp [show (2654208 * k + 176539) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 529618) = 3981312 * k + 264809 := by
    unfold C
    simp [show (7962624 * k + 529618) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 264809) = 11943936 * k + 794428 := by
    unfold C
    simp [show (3981312 * k + 264809) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 794428) = 5971968 * k + 397214 := by
    unfold C
    simp [show (11943936 * k + 794428) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 397214) = 2985984 * k + 198607 := by
    unfold C
    simp [show (5971968 * k + 397214) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 198607) = 8957952 * k + 595822 := by
    unfold C
    simp [show (2985984 * k + 198607) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 595822) = 4478976 * k + 297911 := by
    unfold C
    simp [show (8957952 * k + 595822) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 297911) = 13436928 * k + 893734 := by
    unfold C
    simp [show (4478976 * k + 297911) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 893734) = 6718464 * k + 446867 := by
    unfold C
    simp [show (13436928 * k + 893734) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 446867) = 20155392 * k + 1340602 := by
    unfold C
    simp [show (6718464 * k + 446867) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1340602) = 10077696 * k + 670301 := by
    unfold C
    simp [show (20155392 * k + 1340602) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 670301) = 30233088 * k + 2010904 := by
    unfold C
    simp [show (10077696 * k + 670301) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2010904) = 15116544 * k + 1005452 := by
    unfold C
    simp [show (30233088 * k + 2010904) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1005452) = 7558272 * k + 502726 := by
    unfold C
    simp [show (15116544 * k + 1005452) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 502726) = 3779136 * k + 251363 := by
    unfold C
    simp [show (7558272 * k + 502726) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 251363) = 11337408 * k + 754090 := by
    unfold C
    simp [show (3779136 * k + 251363) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 754090) = 5668704 * k + 377045 := by
    unfold C
    simp [show (11337408 * k + 754090) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 377045) = 17006112 * k + 1131136 := by
    unfold C
    simp [show (5668704 * k + 377045) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1131136) = 8503056 * k + 565568 := by
    unfold C
    simp [show (17006112 * k + 1131136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 565568) = 4251528 * k + 282784 := by
    unfold C
    simp [show (8503056 * k + 565568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 282784) = 2125764 * k + 141392 := by
    unfold C
    simp [show (4251528 * k + 282784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 141392) = 1062882 * k + 70696 := by
    unfold C
    simp [show (2125764 * k + 141392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 70696) = 531441 * k + 35348 := by
    unfold C
    simp [show (1062882 * k + 70696) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 69743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 69743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_70655 : ∀ k : Nat,
    iterate (1048576 * k + 70655) 32 = 531441 * k + 35810 ∧
      531441 * k + 35810 < 1048576 * k + 70655 := by
  intro k
  have h1 : C (1048576 * k + 70655) = 3145728 * k + 211966 := by
    unfold C
    simp [show (1048576 * k + 70655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 211966) = 1572864 * k + 105983 := by
    unfold C
    simp [show (3145728 * k + 211966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 105983) = 4718592 * k + 317950 := by
    unfold C
    simp [show (1572864 * k + 105983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 317950) = 2359296 * k + 158975 := by
    unfold C
    simp [show (4718592 * k + 317950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 158975) = 7077888 * k + 476926 := by
    unfold C
    simp [show (2359296 * k + 158975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 476926) = 3538944 * k + 238463 := by
    unfold C
    simp [show (7077888 * k + 476926) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 238463) = 10616832 * k + 715390 := by
    unfold C
    simp [show (3538944 * k + 238463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 715390) = 5308416 * k + 357695 := by
    unfold C
    simp [show (10616832 * k + 715390) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 357695) = 15925248 * k + 1073086 := by
    unfold C
    simp [show (5308416 * k + 357695) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1073086) = 7962624 * k + 536543 := by
    unfold C
    simp [show (15925248 * k + 1073086) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 536543) = 23887872 * k + 1609630 := by
    unfold C
    simp [show (7962624 * k + 536543) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1609630) = 11943936 * k + 804815 := by
    unfold C
    simp [show (23887872 * k + 1609630) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 804815) = 35831808 * k + 2414446 := by
    unfold C
    simp [show (11943936 * k + 804815) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2414446) = 17915904 * k + 1207223 := by
    unfold C
    simp [show (35831808 * k + 2414446) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1207223) = 53747712 * k + 3621670 := by
    unfold C
    simp [show (17915904 * k + 1207223) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 3621670) = 26873856 * k + 1810835 := by
    unfold C
    simp [show (53747712 * k + 3621670) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1810835) = 80621568 * k + 5432506 := by
    unfold C
    simp [show (26873856 * k + 1810835) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 5432506) = 40310784 * k + 2716253 := by
    unfold C
    simp [show (80621568 * k + 5432506) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 2716253) = 120932352 * k + 8148760 := by
    unfold C
    simp [show (40310784 * k + 2716253) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 8148760) = 60466176 * k + 4074380 := by
    unfold C
    simp [show (120932352 * k + 8148760) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 4074380) = 30233088 * k + 2037190 := by
    unfold C
    simp [show (60466176 * k + 4074380) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 2037190) = 15116544 * k + 1018595 := by
    unfold C
    simp [show (30233088 * k + 2037190) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1018595) = 45349632 * k + 3055786 := by
    unfold C
    simp [show (15116544 * k + 1018595) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 3055786) = 22674816 * k + 1527893 := by
    unfold C
    simp [show (45349632 * k + 3055786) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1527893) = 68024448 * k + 4583680 := by
    unfold C
    simp [show (22674816 * k + 1527893) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 4583680) = 34012224 * k + 2291840 := by
    unfold C
    simp [show (68024448 * k + 4583680) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 2291840) = 17006112 * k + 1145920 := by
    unfold C
    simp [show (34012224 * k + 2291840) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1145920) = 8503056 * k + 572960 := by
    unfold C
    simp [show (17006112 * k + 1145920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 572960) = 4251528 * k + 286480 := by
    unfold C
    simp [show (8503056 * k + 572960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 286480) = 2125764 * k + 143240 := by
    unfold C
    simp [show (4251528 * k + 286480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 143240) = 1062882 * k + 71620 := by
    unfold C
    simp [show (2125764 * k + 143240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 71620) = 531441 * k + 35810 := by
    unfold C
    simp [show (1062882 * k + 71620) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 70655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 70655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_70759 : ∀ k : Nat,
    iterate (1048576 * k + 70759) 32 = 531441 * k + 35863 ∧
      531441 * k + 35863 < 1048576 * k + 70759 := by
  intro k
  have h1 : C (1048576 * k + 70759) = 3145728 * k + 212278 := by
    unfold C
    simp [show (1048576 * k + 70759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 212278) = 1572864 * k + 106139 := by
    unfold C
    simp [show (3145728 * k + 212278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 106139) = 4718592 * k + 318418 := by
    unfold C
    simp [show (1572864 * k + 106139) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 318418) = 2359296 * k + 159209 := by
    unfold C
    simp [show (4718592 * k + 318418) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 159209) = 7077888 * k + 477628 := by
    unfold C
    simp [show (2359296 * k + 159209) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 477628) = 3538944 * k + 238814 := by
    unfold C
    simp [show (7077888 * k + 477628) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 238814) = 1769472 * k + 119407 := by
    unfold C
    simp [show (3538944 * k + 238814) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 119407) = 5308416 * k + 358222 := by
    unfold C
    simp [show (1769472 * k + 119407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 358222) = 2654208 * k + 179111 := by
    unfold C
    simp [show (5308416 * k + 358222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 179111) = 7962624 * k + 537334 := by
    unfold C
    simp [show (2654208 * k + 179111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 537334) = 3981312 * k + 268667 := by
    unfold C
    simp [show (7962624 * k + 537334) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 268667) = 11943936 * k + 806002 := by
    unfold C
    simp [show (3981312 * k + 268667) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 806002) = 5971968 * k + 403001 := by
    unfold C
    simp [show (11943936 * k + 806002) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 403001) = 17915904 * k + 1209004 := by
    unfold C
    simp [show (5971968 * k + 403001) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1209004) = 8957952 * k + 604502 := by
    unfold C
    simp [show (17915904 * k + 1209004) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 604502) = 4478976 * k + 302251 := by
    unfold C
    simp [show (8957952 * k + 604502) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 302251) = 13436928 * k + 906754 := by
    unfold C
    simp [show (4478976 * k + 302251) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 906754) = 6718464 * k + 453377 := by
    unfold C
    simp [show (13436928 * k + 906754) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 453377) = 20155392 * k + 1360132 := by
    unfold C
    simp [show (6718464 * k + 453377) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1360132) = 10077696 * k + 680066 := by
    unfold C
    simp [show (20155392 * k + 1360132) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 680066) = 5038848 * k + 340033 := by
    unfold C
    simp [show (10077696 * k + 680066) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 340033) = 15116544 * k + 1020100 := by
    unfold C
    simp [show (5038848 * k + 340033) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1020100) = 7558272 * k + 510050 := by
    unfold C
    simp [show (15116544 * k + 1020100) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 510050) = 3779136 * k + 255025 := by
    unfold C
    simp [show (7558272 * k + 510050) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 255025) = 11337408 * k + 765076 := by
    unfold C
    simp [show (3779136 * k + 255025) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 765076) = 5668704 * k + 382538 := by
    unfold C
    simp [show (11337408 * k + 765076) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 382538) = 2834352 * k + 191269 := by
    unfold C
    simp [show (5668704 * k + 382538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 191269) = 8503056 * k + 573808 := by
    unfold C
    simp [show (2834352 * k + 191269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 573808) = 4251528 * k + 286904 := by
    unfold C
    simp [show (8503056 * k + 573808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 286904) = 2125764 * k + 143452 := by
    unfold C
    simp [show (4251528 * k + 286904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 143452) = 1062882 * k + 71726 := by
    unfold C
    simp [show (2125764 * k + 143452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 71726) = 531441 * k + 35863 := by
    unfold C
    simp [show (1062882 * k + 71726) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 70759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 70759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_70783 : ∀ k : Nat,
    iterate (1048576 * k + 70783) 32 = 531441 * k + 35875 ∧
      531441 * k + 35875 < 1048576 * k + 70783 := by
  intro k
  have h1 : C (1048576 * k + 70783) = 3145728 * k + 212350 := by
    unfold C
    simp [show (1048576 * k + 70783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 212350) = 1572864 * k + 106175 := by
    unfold C
    simp [show (3145728 * k + 212350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 106175) = 4718592 * k + 318526 := by
    unfold C
    simp [show (1572864 * k + 106175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 318526) = 2359296 * k + 159263 := by
    unfold C
    simp [show (4718592 * k + 318526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 159263) = 7077888 * k + 477790 := by
    unfold C
    simp [show (2359296 * k + 159263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 477790) = 3538944 * k + 238895 := by
    unfold C
    simp [show (7077888 * k + 477790) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 238895) = 10616832 * k + 716686 := by
    unfold C
    simp [show (3538944 * k + 238895) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 716686) = 5308416 * k + 358343 := by
    unfold C
    simp [show (10616832 * k + 716686) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 358343) = 15925248 * k + 1075030 := by
    unfold C
    simp [show (5308416 * k + 358343) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1075030) = 7962624 * k + 537515 := by
    unfold C
    simp [show (15925248 * k + 1075030) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 537515) = 23887872 * k + 1612546 := by
    unfold C
    simp [show (7962624 * k + 537515) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1612546) = 11943936 * k + 806273 := by
    unfold C
    simp [show (23887872 * k + 1612546) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 806273) = 35831808 * k + 2418820 := by
    unfold C
    simp [show (11943936 * k + 806273) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2418820) = 17915904 * k + 1209410 := by
    unfold C
    simp [show (35831808 * k + 2418820) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1209410) = 8957952 * k + 604705 := by
    unfold C
    simp [show (17915904 * k + 1209410) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 604705) = 26873856 * k + 1814116 := by
    unfold C
    simp [show (8957952 * k + 604705) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1814116) = 13436928 * k + 907058 := by
    unfold C
    simp [show (26873856 * k + 1814116) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 907058) = 6718464 * k + 453529 := by
    unfold C
    simp [show (13436928 * k + 907058) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 453529) = 20155392 * k + 1360588 := by
    unfold C
    simp [show (6718464 * k + 453529) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1360588) = 10077696 * k + 680294 := by
    unfold C
    simp [show (20155392 * k + 1360588) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 680294) = 5038848 * k + 340147 := by
    unfold C
    simp [show (10077696 * k + 680294) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 340147) = 15116544 * k + 1020442 := by
    unfold C
    simp [show (5038848 * k + 340147) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1020442) = 7558272 * k + 510221 := by
    unfold C
    simp [show (15116544 * k + 1020442) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 510221) = 22674816 * k + 1530664 := by
    unfold C
    simp [show (7558272 * k + 510221) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1530664) = 11337408 * k + 765332 := by
    unfold C
    simp [show (22674816 * k + 1530664) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 765332) = 5668704 * k + 382666 := by
    unfold C
    simp [show (11337408 * k + 765332) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 382666) = 2834352 * k + 191333 := by
    unfold C
    simp [show (5668704 * k + 382666) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 191333) = 8503056 * k + 574000 := by
    unfold C
    simp [show (2834352 * k + 191333) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 574000) = 4251528 * k + 287000 := by
    unfold C
    simp [show (8503056 * k + 574000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 287000) = 2125764 * k + 143500 := by
    unfold C
    simp [show (4251528 * k + 287000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 143500) = 1062882 * k + 71750 := by
    unfold C
    simp [show (2125764 * k + 143500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 71750) = 531441 * k + 35875 := by
    unfold C
    simp [show (1062882 * k + 71750) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 70783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 70783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_71039 : ∀ k : Nat,
    iterate (1048576 * k + 71039) 32 = 531441 * k + 36005 ∧
      531441 * k + 36005 < 1048576 * k + 71039 := by
  intro k
  have h1 : C (1048576 * k + 71039) = 3145728 * k + 213118 := by
    unfold C
    simp [show (1048576 * k + 71039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 213118) = 1572864 * k + 106559 := by
    unfold C
    simp [show (3145728 * k + 213118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 106559) = 4718592 * k + 319678 := by
    unfold C
    simp [show (1572864 * k + 106559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 319678) = 2359296 * k + 159839 := by
    unfold C
    simp [show (4718592 * k + 319678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 159839) = 7077888 * k + 479518 := by
    unfold C
    simp [show (2359296 * k + 159839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 479518) = 3538944 * k + 239759 := by
    unfold C
    simp [show (7077888 * k + 479518) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 239759) = 10616832 * k + 719278 := by
    unfold C
    simp [show (3538944 * k + 239759) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 719278) = 5308416 * k + 359639 := by
    unfold C
    simp [show (10616832 * k + 719278) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 359639) = 15925248 * k + 1078918 := by
    unfold C
    simp [show (5308416 * k + 359639) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1078918) = 7962624 * k + 539459 := by
    unfold C
    simp [show (15925248 * k + 1078918) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 539459) = 23887872 * k + 1618378 := by
    unfold C
    simp [show (7962624 * k + 539459) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1618378) = 11943936 * k + 809189 := by
    unfold C
    simp [show (23887872 * k + 1618378) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 809189) = 35831808 * k + 2427568 := by
    unfold C
    simp [show (11943936 * k + 809189) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2427568) = 17915904 * k + 1213784 := by
    unfold C
    simp [show (35831808 * k + 2427568) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1213784) = 8957952 * k + 606892 := by
    unfold C
    simp [show (17915904 * k + 1213784) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 606892) = 4478976 * k + 303446 := by
    unfold C
    simp [show (8957952 * k + 606892) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 303446) = 2239488 * k + 151723 := by
    unfold C
    simp [show (4478976 * k + 303446) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 151723) = 6718464 * k + 455170 := by
    unfold C
    simp [show (2239488 * k + 151723) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 455170) = 3359232 * k + 227585 := by
    unfold C
    simp [show (6718464 * k + 455170) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 227585) = 10077696 * k + 682756 := by
    unfold C
    simp [show (3359232 * k + 227585) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 682756) = 5038848 * k + 341378 := by
    unfold C
    simp [show (10077696 * k + 682756) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 341378) = 2519424 * k + 170689 := by
    unfold C
    simp [show (5038848 * k + 341378) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 170689) = 7558272 * k + 512068 := by
    unfold C
    simp [show (2519424 * k + 170689) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 512068) = 3779136 * k + 256034 := by
    unfold C
    simp [show (7558272 * k + 512068) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 256034) = 1889568 * k + 128017 := by
    unfold C
    simp [show (3779136 * k + 256034) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 128017) = 5668704 * k + 384052 := by
    unfold C
    simp [show (1889568 * k + 128017) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 384052) = 2834352 * k + 192026 := by
    unfold C
    simp [show (5668704 * k + 384052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 192026) = 1417176 * k + 96013 := by
    unfold C
    simp [show (2834352 * k + 192026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 96013) = 4251528 * k + 288040 := by
    unfold C
    simp [show (1417176 * k + 96013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 288040) = 2125764 * k + 144020 := by
    unfold C
    simp [show (4251528 * k + 288040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 144020) = 1062882 * k + 72010 := by
    unfold C
    simp [show (2125764 * k + 144020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 72010) = 531441 * k + 36005 := by
    unfold C
    simp [show (1062882 * k + 72010) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 71039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 71039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_71679 : ∀ k : Nat,
    iterate (1048576 * k + 71679) 32 = 531441 * k + 36329 ∧
      531441 * k + 36329 < 1048576 * k + 71679 := by
  intro k
  have h1 : C (1048576 * k + 71679) = 3145728 * k + 215038 := by
    unfold C
    simp [show (1048576 * k + 71679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 215038) = 1572864 * k + 107519 := by
    unfold C
    simp [show (3145728 * k + 215038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 107519) = 4718592 * k + 322558 := by
    unfold C
    simp [show (1572864 * k + 107519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 322558) = 2359296 * k + 161279 := by
    unfold C
    simp [show (4718592 * k + 322558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 161279) = 7077888 * k + 483838 := by
    unfold C
    simp [show (2359296 * k + 161279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 483838) = 3538944 * k + 241919 := by
    unfold C
    simp [show (7077888 * k + 483838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 241919) = 10616832 * k + 725758 := by
    unfold C
    simp [show (3538944 * k + 241919) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 725758) = 5308416 * k + 362879 := by
    unfold C
    simp [show (10616832 * k + 725758) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 362879) = 15925248 * k + 1088638 := by
    unfold C
    simp [show (5308416 * k + 362879) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1088638) = 7962624 * k + 544319 := by
    unfold C
    simp [show (15925248 * k + 1088638) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 544319) = 23887872 * k + 1632958 := by
    unfold C
    simp [show (7962624 * k + 544319) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1632958) = 11943936 * k + 816479 := by
    unfold C
    simp [show (23887872 * k + 1632958) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 816479) = 35831808 * k + 2449438 := by
    unfold C
    simp [show (11943936 * k + 816479) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2449438) = 17915904 * k + 1224719 := by
    unfold C
    simp [show (35831808 * k + 2449438) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1224719) = 53747712 * k + 3674158 := by
    unfold C
    simp [show (17915904 * k + 1224719) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 3674158) = 26873856 * k + 1837079 := by
    unfold C
    simp [show (53747712 * k + 3674158) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1837079) = 80621568 * k + 5511238 := by
    unfold C
    simp [show (26873856 * k + 1837079) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 5511238) = 40310784 * k + 2755619 := by
    unfold C
    simp [show (80621568 * k + 5511238) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 2755619) = 120932352 * k + 8266858 := by
    unfold C
    simp [show (40310784 * k + 2755619) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 8266858) = 60466176 * k + 4133429 := by
    unfold C
    simp [show (120932352 * k + 8266858) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 4133429) = 181398528 * k + 12400288 := by
    unfold C
    simp [show (60466176 * k + 4133429) % 2 ≠ 0 by omega]
    omega
  have h22 : C (181398528 * k + 12400288) = 90699264 * k + 6200144 := by
    unfold C
    simp [show (181398528 * k + 12400288) % 2 = 0 by omega]
    omega
  have h23 : C (90699264 * k + 6200144) = 45349632 * k + 3100072 := by
    unfold C
    simp [show (90699264 * k + 6200144) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 3100072) = 22674816 * k + 1550036 := by
    unfold C
    simp [show (45349632 * k + 3100072) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1550036) = 11337408 * k + 775018 := by
    unfold C
    simp [show (22674816 * k + 1550036) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 775018) = 5668704 * k + 387509 := by
    unfold C
    simp [show (11337408 * k + 775018) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 387509) = 17006112 * k + 1162528 := by
    unfold C
    simp [show (5668704 * k + 387509) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1162528) = 8503056 * k + 581264 := by
    unfold C
    simp [show (17006112 * k + 1162528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 581264) = 4251528 * k + 290632 := by
    unfold C
    simp [show (8503056 * k + 581264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 290632) = 2125764 * k + 145316 := by
    unfold C
    simp [show (4251528 * k + 290632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 145316) = 1062882 * k + 72658 := by
    unfold C
    simp [show (2125764 * k + 145316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 72658) = 531441 * k + 36329 := by
    unfold C
    simp [show (1062882 * k + 72658) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 71679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 71679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_71771 : ∀ k : Nat,
    iterate (1048576 * k + 71771) 32 = 531441 * k + 36376 ∧
      531441 * k + 36376 < 1048576 * k + 71771 := by
  intro k
  have h1 : C (1048576 * k + 71771) = 3145728 * k + 215314 := by
    unfold C
    simp [show (1048576 * k + 71771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 215314) = 1572864 * k + 107657 := by
    unfold C
    simp [show (3145728 * k + 215314) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 107657) = 4718592 * k + 322972 := by
    unfold C
    simp [show (1572864 * k + 107657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 322972) = 2359296 * k + 161486 := by
    unfold C
    simp [show (4718592 * k + 322972) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 161486) = 1179648 * k + 80743 := by
    unfold C
    simp [show (2359296 * k + 161486) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 80743) = 3538944 * k + 242230 := by
    unfold C
    simp [show (1179648 * k + 80743) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 242230) = 1769472 * k + 121115 := by
    unfold C
    simp [show (3538944 * k + 242230) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 121115) = 5308416 * k + 363346 := by
    unfold C
    simp [show (1769472 * k + 121115) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 363346) = 2654208 * k + 181673 := by
    unfold C
    simp [show (5308416 * k + 363346) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 181673) = 7962624 * k + 545020 := by
    unfold C
    simp [show (2654208 * k + 181673) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 545020) = 3981312 * k + 272510 := by
    unfold C
    simp [show (7962624 * k + 545020) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 272510) = 1990656 * k + 136255 := by
    unfold C
    simp [show (3981312 * k + 272510) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 136255) = 5971968 * k + 408766 := by
    unfold C
    simp [show (1990656 * k + 136255) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 408766) = 2985984 * k + 204383 := by
    unfold C
    simp [show (5971968 * k + 408766) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 204383) = 8957952 * k + 613150 := by
    unfold C
    simp [show (2985984 * k + 204383) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 613150) = 4478976 * k + 306575 := by
    unfold C
    simp [show (8957952 * k + 613150) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 306575) = 13436928 * k + 919726 := by
    unfold C
    simp [show (4478976 * k + 306575) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 919726) = 6718464 * k + 459863 := by
    unfold C
    simp [show (13436928 * k + 919726) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 459863) = 20155392 * k + 1379590 := by
    unfold C
    simp [show (6718464 * k + 459863) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1379590) = 10077696 * k + 689795 := by
    unfold C
    simp [show (20155392 * k + 1379590) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 689795) = 30233088 * k + 2069386 := by
    unfold C
    simp [show (10077696 * k + 689795) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2069386) = 15116544 * k + 1034693 := by
    unfold C
    simp [show (30233088 * k + 2069386) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1034693) = 45349632 * k + 3104080 := by
    unfold C
    simp [show (15116544 * k + 1034693) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 3104080) = 22674816 * k + 1552040 := by
    unfold C
    simp [show (45349632 * k + 3104080) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1552040) = 11337408 * k + 776020 := by
    unfold C
    simp [show (22674816 * k + 1552040) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 776020) = 5668704 * k + 388010 := by
    unfold C
    simp [show (11337408 * k + 776020) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 388010) = 2834352 * k + 194005 := by
    unfold C
    simp [show (5668704 * k + 388010) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 194005) = 8503056 * k + 582016 := by
    unfold C
    simp [show (2834352 * k + 194005) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 582016) = 4251528 * k + 291008 := by
    unfold C
    simp [show (8503056 * k + 582016) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 291008) = 2125764 * k + 145504 := by
    unfold C
    simp [show (4251528 * k + 291008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 145504) = 1062882 * k + 72752 := by
    unfold C
    simp [show (2125764 * k + 145504) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 72752) = 531441 * k + 36376 := by
    unfold C
    simp [show (1062882 * k + 72752) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 71771) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 71771)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_72347 : ∀ k : Nat,
    iterate (1048576 * k + 72347) 32 = 531441 * k + 36668 ∧
      531441 * k + 36668 < 1048576 * k + 72347 := by
  intro k
  have h1 : C (1048576 * k + 72347) = 3145728 * k + 217042 := by
    unfold C
    simp [show (1048576 * k + 72347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 217042) = 1572864 * k + 108521 := by
    unfold C
    simp [show (3145728 * k + 217042) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 108521) = 4718592 * k + 325564 := by
    unfold C
    simp [show (1572864 * k + 108521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 325564) = 2359296 * k + 162782 := by
    unfold C
    simp [show (4718592 * k + 325564) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 162782) = 1179648 * k + 81391 := by
    unfold C
    simp [show (2359296 * k + 162782) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 81391) = 3538944 * k + 244174 := by
    unfold C
    simp [show (1179648 * k + 81391) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 244174) = 1769472 * k + 122087 := by
    unfold C
    simp [show (3538944 * k + 244174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 122087) = 5308416 * k + 366262 := by
    unfold C
    simp [show (1769472 * k + 122087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 366262) = 2654208 * k + 183131 := by
    unfold C
    simp [show (5308416 * k + 366262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 183131) = 7962624 * k + 549394 := by
    unfold C
    simp [show (2654208 * k + 183131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 549394) = 3981312 * k + 274697 := by
    unfold C
    simp [show (7962624 * k + 549394) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 274697) = 11943936 * k + 824092 := by
    unfold C
    simp [show (3981312 * k + 274697) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 824092) = 5971968 * k + 412046 := by
    unfold C
    simp [show (11943936 * k + 824092) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 412046) = 2985984 * k + 206023 := by
    unfold C
    simp [show (5971968 * k + 412046) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 206023) = 8957952 * k + 618070 := by
    unfold C
    simp [show (2985984 * k + 206023) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 618070) = 4478976 * k + 309035 := by
    unfold C
    simp [show (8957952 * k + 618070) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 309035) = 13436928 * k + 927106 := by
    unfold C
    simp [show (4478976 * k + 309035) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 927106) = 6718464 * k + 463553 := by
    unfold C
    simp [show (13436928 * k + 927106) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 463553) = 20155392 * k + 1390660 := by
    unfold C
    simp [show (6718464 * k + 463553) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1390660) = 10077696 * k + 695330 := by
    unfold C
    simp [show (20155392 * k + 1390660) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 695330) = 5038848 * k + 347665 := by
    unfold C
    simp [show (10077696 * k + 695330) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 347665) = 15116544 * k + 1042996 := by
    unfold C
    simp [show (5038848 * k + 347665) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1042996) = 7558272 * k + 521498 := by
    unfold C
    simp [show (15116544 * k + 1042996) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 521498) = 3779136 * k + 260749 := by
    unfold C
    simp [show (7558272 * k + 521498) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 260749) = 11337408 * k + 782248 := by
    unfold C
    simp [show (3779136 * k + 260749) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 782248) = 5668704 * k + 391124 := by
    unfold C
    simp [show (11337408 * k + 782248) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 391124) = 2834352 * k + 195562 := by
    unfold C
    simp [show (5668704 * k + 391124) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 195562) = 1417176 * k + 97781 := by
    unfold C
    simp [show (2834352 * k + 195562) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 97781) = 4251528 * k + 293344 := by
    unfold C
    simp [show (1417176 * k + 97781) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 293344) = 2125764 * k + 146672 := by
    unfold C
    simp [show (4251528 * k + 293344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 146672) = 1062882 * k + 73336 := by
    unfold C
    simp [show (2125764 * k + 146672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 73336) = 531441 * k + 36668 := by
    unfold C
    simp [show (1062882 * k + 73336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 72347) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 72347)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_72359 : ∀ k : Nat,
    iterate (1048576 * k + 72359) 32 = 531441 * k + 36674 ∧
      531441 * k + 36674 < 1048576 * k + 72359 := by
  intro k
  have h1 : C (1048576 * k + 72359) = 3145728 * k + 217078 := by
    unfold C
    simp [show (1048576 * k + 72359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 217078) = 1572864 * k + 108539 := by
    unfold C
    simp [show (3145728 * k + 217078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 108539) = 4718592 * k + 325618 := by
    unfold C
    simp [show (1572864 * k + 108539) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 325618) = 2359296 * k + 162809 := by
    unfold C
    simp [show (4718592 * k + 325618) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 162809) = 7077888 * k + 488428 := by
    unfold C
    simp [show (2359296 * k + 162809) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 488428) = 3538944 * k + 244214 := by
    unfold C
    simp [show (7077888 * k + 488428) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 244214) = 1769472 * k + 122107 := by
    unfold C
    simp [show (3538944 * k + 244214) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 122107) = 5308416 * k + 366322 := by
    unfold C
    simp [show (1769472 * k + 122107) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 366322) = 2654208 * k + 183161 := by
    unfold C
    simp [show (5308416 * k + 366322) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 183161) = 7962624 * k + 549484 := by
    unfold C
    simp [show (2654208 * k + 183161) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 549484) = 3981312 * k + 274742 := by
    unfold C
    simp [show (7962624 * k + 549484) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 274742) = 1990656 * k + 137371 := by
    unfold C
    simp [show (3981312 * k + 274742) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 137371) = 5971968 * k + 412114 := by
    unfold C
    simp [show (1990656 * k + 137371) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 412114) = 2985984 * k + 206057 := by
    unfold C
    simp [show (5971968 * k + 412114) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 206057) = 8957952 * k + 618172 := by
    unfold C
    simp [show (2985984 * k + 206057) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 618172) = 4478976 * k + 309086 := by
    unfold C
    simp [show (8957952 * k + 618172) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 309086) = 2239488 * k + 154543 := by
    unfold C
    simp [show (4478976 * k + 309086) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 154543) = 6718464 * k + 463630 := by
    unfold C
    simp [show (2239488 * k + 154543) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 463630) = 3359232 * k + 231815 := by
    unfold C
    simp [show (6718464 * k + 463630) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 231815) = 10077696 * k + 695446 := by
    unfold C
    simp [show (3359232 * k + 231815) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 695446) = 5038848 * k + 347723 := by
    unfold C
    simp [show (10077696 * k + 695446) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 347723) = 15116544 * k + 1043170 := by
    unfold C
    simp [show (5038848 * k + 347723) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1043170) = 7558272 * k + 521585 := by
    unfold C
    simp [show (15116544 * k + 1043170) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 521585) = 22674816 * k + 1564756 := by
    unfold C
    simp [show (7558272 * k + 521585) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1564756) = 11337408 * k + 782378 := by
    unfold C
    simp [show (22674816 * k + 1564756) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 782378) = 5668704 * k + 391189 := by
    unfold C
    simp [show (11337408 * k + 782378) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 391189) = 17006112 * k + 1173568 := by
    unfold C
    simp [show (5668704 * k + 391189) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1173568) = 8503056 * k + 586784 := by
    unfold C
    simp [show (17006112 * k + 1173568) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 586784) = 4251528 * k + 293392 := by
    unfold C
    simp [show (8503056 * k + 586784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 293392) = 2125764 * k + 146696 := by
    unfold C
    simp [show (4251528 * k + 293392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 146696) = 1062882 * k + 73348 := by
    unfold C
    simp [show (2125764 * k + 146696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 73348) = 531441 * k + 36674 := by
    unfold C
    simp [show (1062882 * k + 73348) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 72359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 72359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_72807 : ∀ k : Nat,
    iterate (1048576 * k + 72807) 32 = 531441 * k + 36901 ∧
      531441 * k + 36901 < 1048576 * k + 72807 := by
  intro k
  have h1 : C (1048576 * k + 72807) = 3145728 * k + 218422 := by
    unfold C
    simp [show (1048576 * k + 72807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 218422) = 1572864 * k + 109211 := by
    unfold C
    simp [show (3145728 * k + 218422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 109211) = 4718592 * k + 327634 := by
    unfold C
    simp [show (1572864 * k + 109211) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 327634) = 2359296 * k + 163817 := by
    unfold C
    simp [show (4718592 * k + 327634) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 163817) = 7077888 * k + 491452 := by
    unfold C
    simp [show (2359296 * k + 163817) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 491452) = 3538944 * k + 245726 := by
    unfold C
    simp [show (7077888 * k + 491452) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 245726) = 1769472 * k + 122863 := by
    unfold C
    simp [show (3538944 * k + 245726) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 122863) = 5308416 * k + 368590 := by
    unfold C
    simp [show (1769472 * k + 122863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 368590) = 2654208 * k + 184295 := by
    unfold C
    simp [show (5308416 * k + 368590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 184295) = 7962624 * k + 552886 := by
    unfold C
    simp [show (2654208 * k + 184295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 552886) = 3981312 * k + 276443 := by
    unfold C
    simp [show (7962624 * k + 552886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 276443) = 11943936 * k + 829330 := by
    unfold C
    simp [show (3981312 * k + 276443) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 829330) = 5971968 * k + 414665 := by
    unfold C
    simp [show (11943936 * k + 829330) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 414665) = 17915904 * k + 1243996 := by
    unfold C
    simp [show (5971968 * k + 414665) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1243996) = 8957952 * k + 621998 := by
    unfold C
    simp [show (17915904 * k + 1243996) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 621998) = 4478976 * k + 310999 := by
    unfold C
    simp [show (8957952 * k + 621998) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 310999) = 13436928 * k + 932998 := by
    unfold C
    simp [show (4478976 * k + 310999) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 932998) = 6718464 * k + 466499 := by
    unfold C
    simp [show (13436928 * k + 932998) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 466499) = 20155392 * k + 1399498 := by
    unfold C
    simp [show (6718464 * k + 466499) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1399498) = 10077696 * k + 699749 := by
    unfold C
    simp [show (20155392 * k + 1399498) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 699749) = 30233088 * k + 2099248 := by
    unfold C
    simp [show (10077696 * k + 699749) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2099248) = 15116544 * k + 1049624 := by
    unfold C
    simp [show (30233088 * k + 2099248) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1049624) = 7558272 * k + 524812 := by
    unfold C
    simp [show (15116544 * k + 1049624) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 524812) = 3779136 * k + 262406 := by
    unfold C
    simp [show (7558272 * k + 524812) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 262406) = 1889568 * k + 131203 := by
    unfold C
    simp [show (3779136 * k + 262406) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 131203) = 5668704 * k + 393610 := by
    unfold C
    simp [show (1889568 * k + 131203) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 393610) = 2834352 * k + 196805 := by
    unfold C
    simp [show (5668704 * k + 393610) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 196805) = 8503056 * k + 590416 := by
    unfold C
    simp [show (2834352 * k + 196805) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 590416) = 4251528 * k + 295208 := by
    unfold C
    simp [show (8503056 * k + 590416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 295208) = 2125764 * k + 147604 := by
    unfold C
    simp [show (4251528 * k + 295208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 147604) = 1062882 * k + 73802 := by
    unfold C
    simp [show (2125764 * k + 147604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 73802) = 531441 * k + 36901 := by
    unfold C
    simp [show (1062882 * k + 73802) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 72807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 72807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_72815 : ∀ k : Nat,
    iterate (1048576 * k + 72815) 32 = 531441 * k + 36905 ∧
      531441 * k + 36905 < 1048576 * k + 72815 := by
  intro k
  have h1 : C (1048576 * k + 72815) = 3145728 * k + 218446 := by
    unfold C
    simp [show (1048576 * k + 72815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 218446) = 1572864 * k + 109223 := by
    unfold C
    simp [show (3145728 * k + 218446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 109223) = 4718592 * k + 327670 := by
    unfold C
    simp [show (1572864 * k + 109223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 327670) = 2359296 * k + 163835 := by
    unfold C
    simp [show (4718592 * k + 327670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 163835) = 7077888 * k + 491506 := by
    unfold C
    simp [show (2359296 * k + 163835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 491506) = 3538944 * k + 245753 := by
    unfold C
    simp [show (7077888 * k + 491506) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 245753) = 10616832 * k + 737260 := by
    unfold C
    simp [show (3538944 * k + 245753) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 737260) = 5308416 * k + 368630 := by
    unfold C
    simp [show (10616832 * k + 737260) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 368630) = 2654208 * k + 184315 := by
    unfold C
    simp [show (5308416 * k + 368630) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 184315) = 7962624 * k + 552946 := by
    unfold C
    simp [show (2654208 * k + 184315) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 552946) = 3981312 * k + 276473 := by
    unfold C
    simp [show (7962624 * k + 552946) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 276473) = 11943936 * k + 829420 := by
    unfold C
    simp [show (3981312 * k + 276473) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 829420) = 5971968 * k + 414710 := by
    unfold C
    simp [show (11943936 * k + 829420) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 414710) = 2985984 * k + 207355 := by
    unfold C
    simp [show (5971968 * k + 414710) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 207355) = 8957952 * k + 622066 := by
    unfold C
    simp [show (2985984 * k + 207355) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 622066) = 4478976 * k + 311033 := by
    unfold C
    simp [show (8957952 * k + 622066) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 311033) = 13436928 * k + 933100 := by
    unfold C
    simp [show (4478976 * k + 311033) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 933100) = 6718464 * k + 466550 := by
    unfold C
    simp [show (13436928 * k + 933100) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 466550) = 3359232 * k + 233275 := by
    unfold C
    simp [show (6718464 * k + 466550) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 233275) = 10077696 * k + 699826 := by
    unfold C
    simp [show (3359232 * k + 233275) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 699826) = 5038848 * k + 349913 := by
    unfold C
    simp [show (10077696 * k + 699826) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 349913) = 15116544 * k + 1049740 := by
    unfold C
    simp [show (5038848 * k + 349913) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1049740) = 7558272 * k + 524870 := by
    unfold C
    simp [show (15116544 * k + 1049740) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 524870) = 3779136 * k + 262435 := by
    unfold C
    simp [show (7558272 * k + 524870) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 262435) = 11337408 * k + 787306 := by
    unfold C
    simp [show (3779136 * k + 262435) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 787306) = 5668704 * k + 393653 := by
    unfold C
    simp [show (11337408 * k + 787306) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 393653) = 17006112 * k + 1180960 := by
    unfold C
    simp [show (5668704 * k + 393653) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1180960) = 8503056 * k + 590480 := by
    unfold C
    simp [show (17006112 * k + 1180960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 590480) = 4251528 * k + 295240 := by
    unfold C
    simp [show (8503056 * k + 590480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 295240) = 2125764 * k + 147620 := by
    unfold C
    simp [show (4251528 * k + 295240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 147620) = 1062882 * k + 73810 := by
    unfold C
    simp [show (2125764 * k + 147620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 73810) = 531441 * k + 36905 := by
    unfold C
    simp [show (1062882 * k + 73810) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 72815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 72815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_73791 : ∀ k : Nat,
    iterate (1048576 * k + 73791) 32 = 531441 * k + 37400 ∧
      531441 * k + 37400 < 1048576 * k + 73791 := by
  intro k
  have h1 : C (1048576 * k + 73791) = 3145728 * k + 221374 := by
    unfold C
    simp [show (1048576 * k + 73791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 221374) = 1572864 * k + 110687 := by
    unfold C
    simp [show (3145728 * k + 221374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 110687) = 4718592 * k + 332062 := by
    unfold C
    simp [show (1572864 * k + 110687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 332062) = 2359296 * k + 166031 := by
    unfold C
    simp [show (4718592 * k + 332062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 166031) = 7077888 * k + 498094 := by
    unfold C
    simp [show (2359296 * k + 166031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 498094) = 3538944 * k + 249047 := by
    unfold C
    simp [show (7077888 * k + 498094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 249047) = 10616832 * k + 747142 := by
    unfold C
    simp [show (3538944 * k + 249047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 747142) = 5308416 * k + 373571 := by
    unfold C
    simp [show (10616832 * k + 747142) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 373571) = 15925248 * k + 1120714 := by
    unfold C
    simp [show (5308416 * k + 373571) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1120714) = 7962624 * k + 560357 := by
    unfold C
    simp [show (15925248 * k + 1120714) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 560357) = 23887872 * k + 1681072 := by
    unfold C
    simp [show (7962624 * k + 560357) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1681072) = 11943936 * k + 840536 := by
    unfold C
    simp [show (23887872 * k + 1681072) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 840536) = 5971968 * k + 420268 := by
    unfold C
    simp [show (11943936 * k + 840536) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 420268) = 2985984 * k + 210134 := by
    unfold C
    simp [show (5971968 * k + 420268) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 210134) = 1492992 * k + 105067 := by
    unfold C
    simp [show (2985984 * k + 210134) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 105067) = 4478976 * k + 315202 := by
    unfold C
    simp [show (1492992 * k + 105067) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 315202) = 2239488 * k + 157601 := by
    unfold C
    simp [show (4478976 * k + 315202) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 157601) = 6718464 * k + 472804 := by
    unfold C
    simp [show (2239488 * k + 157601) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 472804) = 3359232 * k + 236402 := by
    unfold C
    simp [show (6718464 * k + 472804) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 236402) = 1679616 * k + 118201 := by
    unfold C
    simp [show (3359232 * k + 236402) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 118201) = 5038848 * k + 354604 := by
    unfold C
    simp [show (1679616 * k + 118201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 354604) = 2519424 * k + 177302 := by
    unfold C
    simp [show (5038848 * k + 354604) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 177302) = 1259712 * k + 88651 := by
    unfold C
    simp [show (2519424 * k + 177302) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 88651) = 3779136 * k + 265954 := by
    unfold C
    simp [show (1259712 * k + 88651) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 265954) = 1889568 * k + 132977 := by
    unfold C
    simp [show (3779136 * k + 265954) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 132977) = 5668704 * k + 398932 := by
    unfold C
    simp [show (1889568 * k + 132977) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 398932) = 2834352 * k + 199466 := by
    unfold C
    simp [show (5668704 * k + 398932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 199466) = 1417176 * k + 99733 := by
    unfold C
    simp [show (2834352 * k + 199466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 99733) = 4251528 * k + 299200 := by
    unfold C
    simp [show (1417176 * k + 99733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 299200) = 2125764 * k + 149600 := by
    unfold C
    simp [show (4251528 * k + 299200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 149600) = 1062882 * k + 74800 := by
    unfold C
    simp [show (2125764 * k + 149600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 74800) = 531441 * k + 37400 := by
    unfold C
    simp [show (1062882 * k + 74800) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 73791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 73791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_73819 : ∀ k : Nat,
    iterate (1048576 * k + 73819) 32 = 531441 * k + 37414 ∧
      531441 * k + 37414 < 1048576 * k + 73819 := by
  intro k
  have h1 : C (1048576 * k + 73819) = 3145728 * k + 221458 := by
    unfold C
    simp [show (1048576 * k + 73819) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 221458) = 1572864 * k + 110729 := by
    unfold C
    simp [show (3145728 * k + 221458) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 110729) = 4718592 * k + 332188 := by
    unfold C
    simp [show (1572864 * k + 110729) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 332188) = 2359296 * k + 166094 := by
    unfold C
    simp [show (4718592 * k + 332188) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 166094) = 1179648 * k + 83047 := by
    unfold C
    simp [show (2359296 * k + 166094) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 83047) = 3538944 * k + 249142 := by
    unfold C
    simp [show (1179648 * k + 83047) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 249142) = 1769472 * k + 124571 := by
    unfold C
    simp [show (3538944 * k + 249142) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 124571) = 5308416 * k + 373714 := by
    unfold C
    simp [show (1769472 * k + 124571) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 373714) = 2654208 * k + 186857 := by
    unfold C
    simp [show (5308416 * k + 373714) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 186857) = 7962624 * k + 560572 := by
    unfold C
    simp [show (2654208 * k + 186857) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 560572) = 3981312 * k + 280286 := by
    unfold C
    simp [show (7962624 * k + 560572) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 280286) = 1990656 * k + 140143 := by
    unfold C
    simp [show (3981312 * k + 280286) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 140143) = 5971968 * k + 420430 := by
    unfold C
    simp [show (1990656 * k + 140143) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 420430) = 2985984 * k + 210215 := by
    unfold C
    simp [show (5971968 * k + 420430) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 210215) = 8957952 * k + 630646 := by
    unfold C
    simp [show (2985984 * k + 210215) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 630646) = 4478976 * k + 315323 := by
    unfold C
    simp [show (8957952 * k + 630646) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 315323) = 13436928 * k + 945970 := by
    unfold C
    simp [show (4478976 * k + 315323) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 945970) = 6718464 * k + 472985 := by
    unfold C
    simp [show (13436928 * k + 945970) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 472985) = 20155392 * k + 1418956 := by
    unfold C
    simp [show (6718464 * k + 472985) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1418956) = 10077696 * k + 709478 := by
    unfold C
    simp [show (20155392 * k + 1418956) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 709478) = 5038848 * k + 354739 := by
    unfold C
    simp [show (10077696 * k + 709478) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 354739) = 15116544 * k + 1064218 := by
    unfold C
    simp [show (5038848 * k + 354739) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1064218) = 7558272 * k + 532109 := by
    unfold C
    simp [show (15116544 * k + 1064218) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 532109) = 22674816 * k + 1596328 := by
    unfold C
    simp [show (7558272 * k + 532109) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1596328) = 11337408 * k + 798164 := by
    unfold C
    simp [show (22674816 * k + 1596328) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 798164) = 5668704 * k + 399082 := by
    unfold C
    simp [show (11337408 * k + 798164) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 399082) = 2834352 * k + 199541 := by
    unfold C
    simp [show (5668704 * k + 399082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 199541) = 8503056 * k + 598624 := by
    unfold C
    simp [show (2834352 * k + 199541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 598624) = 4251528 * k + 299312 := by
    unfold C
    simp [show (8503056 * k + 598624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 299312) = 2125764 * k + 149656 := by
    unfold C
    simp [show (4251528 * k + 299312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 149656) = 1062882 * k + 74828 := by
    unfold C
    simp [show (2125764 * k + 149656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 74828) = 531441 * k + 37414 := by
    unfold C
    simp [show (1062882 * k + 74828) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 73819) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 73819)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_73839 : ∀ k : Nat,
    iterate (1048576 * k + 73839) 32 = 531441 * k + 37424 ∧
      531441 * k + 37424 < 1048576 * k + 73839 := by
  intro k
  have h1 : C (1048576 * k + 73839) = 3145728 * k + 221518 := by
    unfold C
    simp [show (1048576 * k + 73839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 221518) = 1572864 * k + 110759 := by
    unfold C
    simp [show (3145728 * k + 221518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 110759) = 4718592 * k + 332278 := by
    unfold C
    simp [show (1572864 * k + 110759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 332278) = 2359296 * k + 166139 := by
    unfold C
    simp [show (4718592 * k + 332278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 166139) = 7077888 * k + 498418 := by
    unfold C
    simp [show (2359296 * k + 166139) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 498418) = 3538944 * k + 249209 := by
    unfold C
    simp [show (7077888 * k + 498418) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 249209) = 10616832 * k + 747628 := by
    unfold C
    simp [show (3538944 * k + 249209) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 747628) = 5308416 * k + 373814 := by
    unfold C
    simp [show (10616832 * k + 747628) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 373814) = 2654208 * k + 186907 := by
    unfold C
    simp [show (5308416 * k + 373814) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 186907) = 7962624 * k + 560722 := by
    unfold C
    simp [show (2654208 * k + 186907) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 560722) = 3981312 * k + 280361 := by
    unfold C
    simp [show (7962624 * k + 560722) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 280361) = 11943936 * k + 841084 := by
    unfold C
    simp [show (3981312 * k + 280361) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 841084) = 5971968 * k + 420542 := by
    unfold C
    simp [show (11943936 * k + 841084) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 420542) = 2985984 * k + 210271 := by
    unfold C
    simp [show (5971968 * k + 420542) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 210271) = 8957952 * k + 630814 := by
    unfold C
    simp [show (2985984 * k + 210271) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 630814) = 4478976 * k + 315407 := by
    unfold C
    simp [show (8957952 * k + 630814) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 315407) = 13436928 * k + 946222 := by
    unfold C
    simp [show (4478976 * k + 315407) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 946222) = 6718464 * k + 473111 := by
    unfold C
    simp [show (13436928 * k + 946222) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 473111) = 20155392 * k + 1419334 := by
    unfold C
    simp [show (6718464 * k + 473111) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1419334) = 10077696 * k + 709667 := by
    unfold C
    simp [show (20155392 * k + 1419334) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 709667) = 30233088 * k + 2129002 := by
    unfold C
    simp [show (10077696 * k + 709667) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2129002) = 15116544 * k + 1064501 := by
    unfold C
    simp [show (30233088 * k + 2129002) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1064501) = 45349632 * k + 3193504 := by
    unfold C
    simp [show (15116544 * k + 1064501) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 3193504) = 22674816 * k + 1596752 := by
    unfold C
    simp [show (45349632 * k + 3193504) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1596752) = 11337408 * k + 798376 := by
    unfold C
    simp [show (22674816 * k + 1596752) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 798376) = 5668704 * k + 399188 := by
    unfold C
    simp [show (11337408 * k + 798376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 399188) = 2834352 * k + 199594 := by
    unfold C
    simp [show (5668704 * k + 399188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 199594) = 1417176 * k + 99797 := by
    unfold C
    simp [show (2834352 * k + 199594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 99797) = 4251528 * k + 299392 := by
    unfold C
    simp [show (1417176 * k + 99797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 299392) = 2125764 * k + 149696 := by
    unfold C
    simp [show (4251528 * k + 299392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 149696) = 1062882 * k + 74848 := by
    unfold C
    simp [show (2125764 * k + 149696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 74848) = 531441 * k + 37424 := by
    unfold C
    simp [show (1062882 * k + 74848) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 73839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 73839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_73951 : ∀ k : Nat,
    iterate (1048576 * k + 73951) 32 = 531441 * k + 37481 ∧
      531441 * k + 37481 < 1048576 * k + 73951 := by
  intro k
  have h1 : C (1048576 * k + 73951) = 3145728 * k + 221854 := by
    unfold C
    simp [show (1048576 * k + 73951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 221854) = 1572864 * k + 110927 := by
    unfold C
    simp [show (3145728 * k + 221854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 110927) = 4718592 * k + 332782 := by
    unfold C
    simp [show (1572864 * k + 110927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 332782) = 2359296 * k + 166391 := by
    unfold C
    simp [show (4718592 * k + 332782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 166391) = 7077888 * k + 499174 := by
    unfold C
    simp [show (2359296 * k + 166391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 499174) = 3538944 * k + 249587 := by
    unfold C
    simp [show (7077888 * k + 499174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 249587) = 10616832 * k + 748762 := by
    unfold C
    simp [show (3538944 * k + 249587) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 748762) = 5308416 * k + 374381 := by
    unfold C
    simp [show (10616832 * k + 748762) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 374381) = 15925248 * k + 1123144 := by
    unfold C
    simp [show (5308416 * k + 374381) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1123144) = 7962624 * k + 561572 := by
    unfold C
    simp [show (15925248 * k + 1123144) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 561572) = 3981312 * k + 280786 := by
    unfold C
    simp [show (7962624 * k + 561572) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 280786) = 1990656 * k + 140393 := by
    unfold C
    simp [show (3981312 * k + 280786) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 140393) = 5971968 * k + 421180 := by
    unfold C
    simp [show (1990656 * k + 140393) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 421180) = 2985984 * k + 210590 := by
    unfold C
    simp [show (5971968 * k + 421180) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 210590) = 1492992 * k + 105295 := by
    unfold C
    simp [show (2985984 * k + 210590) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 105295) = 4478976 * k + 315886 := by
    unfold C
    simp [show (1492992 * k + 105295) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 315886) = 2239488 * k + 157943 := by
    unfold C
    simp [show (4478976 * k + 315886) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 157943) = 6718464 * k + 473830 := by
    unfold C
    simp [show (2239488 * k + 157943) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 473830) = 3359232 * k + 236915 := by
    unfold C
    simp [show (6718464 * k + 473830) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 236915) = 10077696 * k + 710746 := by
    unfold C
    simp [show (3359232 * k + 236915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 710746) = 5038848 * k + 355373 := by
    unfold C
    simp [show (10077696 * k + 710746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 355373) = 15116544 * k + 1066120 := by
    unfold C
    simp [show (5038848 * k + 355373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1066120) = 7558272 * k + 533060 := by
    unfold C
    simp [show (15116544 * k + 1066120) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 533060) = 3779136 * k + 266530 := by
    unfold C
    simp [show (7558272 * k + 533060) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 266530) = 1889568 * k + 133265 := by
    unfold C
    simp [show (3779136 * k + 266530) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 133265) = 5668704 * k + 399796 := by
    unfold C
    simp [show (1889568 * k + 133265) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 399796) = 2834352 * k + 199898 := by
    unfold C
    simp [show (5668704 * k + 399796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 199898) = 1417176 * k + 99949 := by
    unfold C
    simp [show (2834352 * k + 199898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 99949) = 4251528 * k + 299848 := by
    unfold C
    simp [show (1417176 * k + 99949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 299848) = 2125764 * k + 149924 := by
    unfold C
    simp [show (4251528 * k + 299848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 149924) = 1062882 * k + 74962 := by
    unfold C
    simp [show (2125764 * k + 149924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 74962) = 531441 * k + 37481 := by
    unfold C
    simp [show (1062882 * k + 74962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 73951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 73951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_74395 : ∀ k : Nat,
    iterate (1048576 * k + 74395) 32 = 531441 * k + 37706 ∧
      531441 * k + 37706 < 1048576 * k + 74395 := by
  intro k
  have h1 : C (1048576 * k + 74395) = 3145728 * k + 223186 := by
    unfold C
    simp [show (1048576 * k + 74395) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 223186) = 1572864 * k + 111593 := by
    unfold C
    simp [show (3145728 * k + 223186) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 111593) = 4718592 * k + 334780 := by
    unfold C
    simp [show (1572864 * k + 111593) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 334780) = 2359296 * k + 167390 := by
    unfold C
    simp [show (4718592 * k + 334780) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 167390) = 1179648 * k + 83695 := by
    unfold C
    simp [show (2359296 * k + 167390) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 83695) = 3538944 * k + 251086 := by
    unfold C
    simp [show (1179648 * k + 83695) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 251086) = 1769472 * k + 125543 := by
    unfold C
    simp [show (3538944 * k + 251086) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 125543) = 5308416 * k + 376630 := by
    unfold C
    simp [show (1769472 * k + 125543) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 376630) = 2654208 * k + 188315 := by
    unfold C
    simp [show (5308416 * k + 376630) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 188315) = 7962624 * k + 564946 := by
    unfold C
    simp [show (2654208 * k + 188315) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 564946) = 3981312 * k + 282473 := by
    unfold C
    simp [show (7962624 * k + 564946) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 282473) = 11943936 * k + 847420 := by
    unfold C
    simp [show (3981312 * k + 282473) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 847420) = 5971968 * k + 423710 := by
    unfold C
    simp [show (11943936 * k + 847420) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 423710) = 2985984 * k + 211855 := by
    unfold C
    simp [show (5971968 * k + 423710) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 211855) = 8957952 * k + 635566 := by
    unfold C
    simp [show (2985984 * k + 211855) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 635566) = 4478976 * k + 317783 := by
    unfold C
    simp [show (8957952 * k + 635566) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 317783) = 13436928 * k + 953350 := by
    unfold C
    simp [show (4478976 * k + 317783) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 953350) = 6718464 * k + 476675 := by
    unfold C
    simp [show (13436928 * k + 953350) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 476675) = 20155392 * k + 1430026 := by
    unfold C
    simp [show (6718464 * k + 476675) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1430026) = 10077696 * k + 715013 := by
    unfold C
    simp [show (20155392 * k + 1430026) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 715013) = 30233088 * k + 2145040 := by
    unfold C
    simp [show (10077696 * k + 715013) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2145040) = 15116544 * k + 1072520 := by
    unfold C
    simp [show (30233088 * k + 2145040) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1072520) = 7558272 * k + 536260 := by
    unfold C
    simp [show (15116544 * k + 1072520) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 536260) = 3779136 * k + 268130 := by
    unfold C
    simp [show (7558272 * k + 536260) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 268130) = 1889568 * k + 134065 := by
    unfold C
    simp [show (3779136 * k + 268130) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 134065) = 5668704 * k + 402196 := by
    unfold C
    simp [show (1889568 * k + 134065) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 402196) = 2834352 * k + 201098 := by
    unfold C
    simp [show (5668704 * k + 402196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 201098) = 1417176 * k + 100549 := by
    unfold C
    simp [show (2834352 * k + 201098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 100549) = 4251528 * k + 301648 := by
    unfold C
    simp [show (1417176 * k + 100549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 301648) = 2125764 * k + 150824 := by
    unfold C
    simp [show (4251528 * k + 301648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 150824) = 1062882 * k + 75412 := by
    unfold C
    simp [show (2125764 * k + 150824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 75412) = 531441 * k + 37706 := by
    unfold C
    simp [show (1062882 * k + 75412) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 74395) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 74395)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_74559 : ∀ k : Nat,
    iterate (1048576 * k + 74559) 32 = 531441 * k + 37789 ∧
      531441 * k + 37789 < 1048576 * k + 74559 := by
  intro k
  have h1 : C (1048576 * k + 74559) = 3145728 * k + 223678 := by
    unfold C
    simp [show (1048576 * k + 74559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 223678) = 1572864 * k + 111839 := by
    unfold C
    simp [show (3145728 * k + 223678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 111839) = 4718592 * k + 335518 := by
    unfold C
    simp [show (1572864 * k + 111839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 335518) = 2359296 * k + 167759 := by
    unfold C
    simp [show (4718592 * k + 335518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 167759) = 7077888 * k + 503278 := by
    unfold C
    simp [show (2359296 * k + 167759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 503278) = 3538944 * k + 251639 := by
    unfold C
    simp [show (7077888 * k + 503278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 251639) = 10616832 * k + 754918 := by
    unfold C
    simp [show (3538944 * k + 251639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 754918) = 5308416 * k + 377459 := by
    unfold C
    simp [show (10616832 * k + 754918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 377459) = 15925248 * k + 1132378 := by
    unfold C
    simp [show (5308416 * k + 377459) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1132378) = 7962624 * k + 566189 := by
    unfold C
    simp [show (15925248 * k + 1132378) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 566189) = 23887872 * k + 1698568 := by
    unfold C
    simp [show (7962624 * k + 566189) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1698568) = 11943936 * k + 849284 := by
    unfold C
    simp [show (23887872 * k + 1698568) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 849284) = 5971968 * k + 424642 := by
    unfold C
    simp [show (11943936 * k + 849284) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 424642) = 2985984 * k + 212321 := by
    unfold C
    simp [show (5971968 * k + 424642) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 212321) = 8957952 * k + 636964 := by
    unfold C
    simp [show (2985984 * k + 212321) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 636964) = 4478976 * k + 318482 := by
    unfold C
    simp [show (8957952 * k + 636964) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 318482) = 2239488 * k + 159241 := by
    unfold C
    simp [show (4478976 * k + 318482) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 159241) = 6718464 * k + 477724 := by
    unfold C
    simp [show (2239488 * k + 159241) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 477724) = 3359232 * k + 238862 := by
    unfold C
    simp [show (6718464 * k + 477724) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 238862) = 1679616 * k + 119431 := by
    unfold C
    simp [show (3359232 * k + 238862) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 119431) = 5038848 * k + 358294 := by
    unfold C
    simp [show (1679616 * k + 119431) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 358294) = 2519424 * k + 179147 := by
    unfold C
    simp [show (5038848 * k + 358294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 179147) = 7558272 * k + 537442 := by
    unfold C
    simp [show (2519424 * k + 179147) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 537442) = 3779136 * k + 268721 := by
    unfold C
    simp [show (7558272 * k + 537442) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 268721) = 11337408 * k + 806164 := by
    unfold C
    simp [show (3779136 * k + 268721) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 806164) = 5668704 * k + 403082 := by
    unfold C
    simp [show (11337408 * k + 806164) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 403082) = 2834352 * k + 201541 := by
    unfold C
    simp [show (5668704 * k + 403082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 201541) = 8503056 * k + 604624 := by
    unfold C
    simp [show (2834352 * k + 201541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 604624) = 4251528 * k + 302312 := by
    unfold C
    simp [show (8503056 * k + 604624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 302312) = 2125764 * k + 151156 := by
    unfold C
    simp [show (4251528 * k + 302312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 151156) = 1062882 * k + 75578 := by
    unfold C
    simp [show (2125764 * k + 151156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 75578) = 531441 * k + 37789 := by
    unfold C
    simp [show (1062882 * k + 75578) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 74559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 74559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_74719 : ∀ k : Nat,
    iterate (1048576 * k + 74719) 32 = 531441 * k + 37870 ∧
      531441 * k + 37870 < 1048576 * k + 74719 := by
  intro k
  have h1 : C (1048576 * k + 74719) = 3145728 * k + 224158 := by
    unfold C
    simp [show (1048576 * k + 74719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 224158) = 1572864 * k + 112079 := by
    unfold C
    simp [show (3145728 * k + 224158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 112079) = 4718592 * k + 336238 := by
    unfold C
    simp [show (1572864 * k + 112079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 336238) = 2359296 * k + 168119 := by
    unfold C
    simp [show (4718592 * k + 336238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 168119) = 7077888 * k + 504358 := by
    unfold C
    simp [show (2359296 * k + 168119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 504358) = 3538944 * k + 252179 := by
    unfold C
    simp [show (7077888 * k + 504358) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 252179) = 10616832 * k + 756538 := by
    unfold C
    simp [show (3538944 * k + 252179) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 756538) = 5308416 * k + 378269 := by
    unfold C
    simp [show (10616832 * k + 756538) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 378269) = 15925248 * k + 1134808 := by
    unfold C
    simp [show (5308416 * k + 378269) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1134808) = 7962624 * k + 567404 := by
    unfold C
    simp [show (15925248 * k + 1134808) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 567404) = 3981312 * k + 283702 := by
    unfold C
    simp [show (7962624 * k + 567404) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 283702) = 1990656 * k + 141851 := by
    unfold C
    simp [show (3981312 * k + 283702) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 141851) = 5971968 * k + 425554 := by
    unfold C
    simp [show (1990656 * k + 141851) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 425554) = 2985984 * k + 212777 := by
    unfold C
    simp [show (5971968 * k + 425554) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 212777) = 8957952 * k + 638332 := by
    unfold C
    simp [show (2985984 * k + 212777) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 638332) = 4478976 * k + 319166 := by
    unfold C
    simp [show (8957952 * k + 638332) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 319166) = 2239488 * k + 159583 := by
    unfold C
    simp [show (4478976 * k + 319166) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 159583) = 6718464 * k + 478750 := by
    unfold C
    simp [show (2239488 * k + 159583) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 478750) = 3359232 * k + 239375 := by
    unfold C
    simp [show (6718464 * k + 478750) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 239375) = 10077696 * k + 718126 := by
    unfold C
    simp [show (3359232 * k + 239375) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 718126) = 5038848 * k + 359063 := by
    unfold C
    simp [show (10077696 * k + 718126) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 359063) = 15116544 * k + 1077190 := by
    unfold C
    simp [show (5038848 * k + 359063) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1077190) = 7558272 * k + 538595 := by
    unfold C
    simp [show (15116544 * k + 1077190) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 538595) = 22674816 * k + 1615786 := by
    unfold C
    simp [show (7558272 * k + 538595) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1615786) = 11337408 * k + 807893 := by
    unfold C
    simp [show (22674816 * k + 1615786) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 807893) = 34012224 * k + 2423680 := by
    unfold C
    simp [show (11337408 * k + 807893) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 2423680) = 17006112 * k + 1211840 := by
    unfold C
    simp [show (34012224 * k + 2423680) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1211840) = 8503056 * k + 605920 := by
    unfold C
    simp [show (17006112 * k + 1211840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 605920) = 4251528 * k + 302960 := by
    unfold C
    simp [show (8503056 * k + 605920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 302960) = 2125764 * k + 151480 := by
    unfold C
    simp [show (4251528 * k + 302960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 151480) = 1062882 * k + 75740 := by
    unfold C
    simp [show (2125764 * k + 151480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 75740) = 531441 * k + 37870 := by
    unfold C
    simp [show (1062882 * k + 75740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 74719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 74719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_74751 : ∀ k : Nat,
    iterate (1048576 * k + 74751) 32 = 531441 * k + 37886 ∧
      531441 * k + 37886 < 1048576 * k + 74751 := by
  intro k
  have h1 : C (1048576 * k + 74751) = 3145728 * k + 224254 := by
    unfold C
    simp [show (1048576 * k + 74751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 224254) = 1572864 * k + 112127 := by
    unfold C
    simp [show (3145728 * k + 224254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 112127) = 4718592 * k + 336382 := by
    unfold C
    simp [show (1572864 * k + 112127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 336382) = 2359296 * k + 168191 := by
    unfold C
    simp [show (4718592 * k + 336382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 168191) = 7077888 * k + 504574 := by
    unfold C
    simp [show (2359296 * k + 168191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 504574) = 3538944 * k + 252287 := by
    unfold C
    simp [show (7077888 * k + 504574) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 252287) = 10616832 * k + 756862 := by
    unfold C
    simp [show (3538944 * k + 252287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 756862) = 5308416 * k + 378431 := by
    unfold C
    simp [show (10616832 * k + 756862) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 378431) = 15925248 * k + 1135294 := by
    unfold C
    simp [show (5308416 * k + 378431) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1135294) = 7962624 * k + 567647 := by
    unfold C
    simp [show (15925248 * k + 1135294) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 567647) = 23887872 * k + 1702942 := by
    unfold C
    simp [show (7962624 * k + 567647) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1702942) = 11943936 * k + 851471 := by
    unfold C
    simp [show (23887872 * k + 1702942) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 851471) = 35831808 * k + 2554414 := by
    unfold C
    simp [show (11943936 * k + 851471) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2554414) = 17915904 * k + 1277207 := by
    unfold C
    simp [show (35831808 * k + 2554414) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1277207) = 53747712 * k + 3831622 := by
    unfold C
    simp [show (17915904 * k + 1277207) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 3831622) = 26873856 * k + 1915811 := by
    unfold C
    simp [show (53747712 * k + 3831622) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1915811) = 80621568 * k + 5747434 := by
    unfold C
    simp [show (26873856 * k + 1915811) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 5747434) = 40310784 * k + 2873717 := by
    unfold C
    simp [show (80621568 * k + 5747434) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 2873717) = 120932352 * k + 8621152 := by
    unfold C
    simp [show (40310784 * k + 2873717) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 8621152) = 60466176 * k + 4310576 := by
    unfold C
    simp [show (120932352 * k + 8621152) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 4310576) = 30233088 * k + 2155288 := by
    unfold C
    simp [show (60466176 * k + 4310576) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 2155288) = 15116544 * k + 1077644 := by
    unfold C
    simp [show (30233088 * k + 2155288) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1077644) = 7558272 * k + 538822 := by
    unfold C
    simp [show (15116544 * k + 1077644) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 538822) = 3779136 * k + 269411 := by
    unfold C
    simp [show (7558272 * k + 538822) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 269411) = 11337408 * k + 808234 := by
    unfold C
    simp [show (3779136 * k + 269411) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 808234) = 5668704 * k + 404117 := by
    unfold C
    simp [show (11337408 * k + 808234) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 404117) = 17006112 * k + 1212352 := by
    unfold C
    simp [show (5668704 * k + 404117) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1212352) = 8503056 * k + 606176 := by
    unfold C
    simp [show (17006112 * k + 1212352) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 606176) = 4251528 * k + 303088 := by
    unfold C
    simp [show (8503056 * k + 606176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 303088) = 2125764 * k + 151544 := by
    unfold C
    simp [show (4251528 * k + 303088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 151544) = 1062882 * k + 75772 := by
    unfold C
    simp [show (2125764 * k + 151544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 75772) = 531441 * k + 37886 := by
    unfold C
    simp [show (1062882 * k + 75772) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 74751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 74751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard011
