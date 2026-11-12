import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard089

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_684703 : ∀ k : Nat,
    iterate (1048576 * k + 684703) 32 = 531441 * k + 347023 ∧
      531441 * k + 347023 < 1048576 * k + 684703 := by
  intro k
  have h1 : C (1048576 * k + 684703) = 3145728 * k + 2054110 := by
    unfold C
    simp [show (1048576 * k + 684703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2054110) = 1572864 * k + 1027055 := by
    unfold C
    simp [show (3145728 * k + 2054110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1027055) = 4718592 * k + 3081166 := by
    unfold C
    simp [show (1572864 * k + 1027055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3081166) = 2359296 * k + 1540583 := by
    unfold C
    simp [show (4718592 * k + 3081166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1540583) = 7077888 * k + 4621750 := by
    unfold C
    simp [show (2359296 * k + 1540583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4621750) = 3538944 * k + 2310875 := by
    unfold C
    simp [show (7077888 * k + 4621750) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2310875) = 10616832 * k + 6932626 := by
    unfold C
    simp [show (3538944 * k + 2310875) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6932626) = 5308416 * k + 3466313 := by
    unfold C
    simp [show (10616832 * k + 6932626) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3466313) = 15925248 * k + 10398940 := by
    unfold C
    simp [show (5308416 * k + 3466313) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10398940) = 7962624 * k + 5199470 := by
    unfold C
    simp [show (15925248 * k + 10398940) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5199470) = 3981312 * k + 2599735 := by
    unfold C
    simp [show (7962624 * k + 5199470) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2599735) = 11943936 * k + 7799206 := by
    unfold C
    simp [show (3981312 * k + 2599735) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7799206) = 5971968 * k + 3899603 := by
    unfold C
    simp [show (11943936 * k + 7799206) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3899603) = 17915904 * k + 11698810 := by
    unfold C
    simp [show (5971968 * k + 3899603) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11698810) = 8957952 * k + 5849405 := by
    unfold C
    simp [show (17915904 * k + 11698810) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5849405) = 26873856 * k + 17548216 := by
    unfold C
    simp [show (8957952 * k + 5849405) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17548216) = 13436928 * k + 8774108 := by
    unfold C
    simp [show (26873856 * k + 17548216) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8774108) = 6718464 * k + 4387054 := by
    unfold C
    simp [show (13436928 * k + 8774108) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4387054) = 3359232 * k + 2193527 := by
    unfold C
    simp [show (6718464 * k + 4387054) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2193527) = 10077696 * k + 6580582 := by
    unfold C
    simp [show (3359232 * k + 2193527) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6580582) = 5038848 * k + 3290291 := by
    unfold C
    simp [show (10077696 * k + 6580582) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3290291) = 15116544 * k + 9870874 := by
    unfold C
    simp [show (5038848 * k + 3290291) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9870874) = 7558272 * k + 4935437 := by
    unfold C
    simp [show (15116544 * k + 9870874) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4935437) = 22674816 * k + 14806312 := by
    unfold C
    simp [show (7558272 * k + 4935437) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14806312) = 11337408 * k + 7403156 := by
    unfold C
    simp [show (22674816 * k + 14806312) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7403156) = 5668704 * k + 3701578 := by
    unfold C
    simp [show (11337408 * k + 7403156) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3701578) = 2834352 * k + 1850789 := by
    unfold C
    simp [show (5668704 * k + 3701578) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1850789) = 8503056 * k + 5552368 := by
    unfold C
    simp [show (2834352 * k + 1850789) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5552368) = 4251528 * k + 2776184 := by
    unfold C
    simp [show (8503056 * k + 5552368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2776184) = 2125764 * k + 1388092 := by
    unfold C
    simp [show (4251528 * k + 2776184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1388092) = 1062882 * k + 694046 := by
    unfold C
    simp [show (2125764 * k + 1388092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 694046) = 531441 * k + 347023 := by
    unfold C
    simp [show (1062882 * k + 694046) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 684703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 684703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_685415 : ∀ k : Nat,
    iterate (1048576 * k + 685415) 32 = 531441 * k + 347384 ∧
      531441 * k + 347384 < 1048576 * k + 685415 := by
  intro k
  have h1 : C (1048576 * k + 685415) = 3145728 * k + 2056246 := by
    unfold C
    simp [show (1048576 * k + 685415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2056246) = 1572864 * k + 1028123 := by
    unfold C
    simp [show (3145728 * k + 2056246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1028123) = 4718592 * k + 3084370 := by
    unfold C
    simp [show (1572864 * k + 1028123) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3084370) = 2359296 * k + 1542185 := by
    unfold C
    simp [show (4718592 * k + 3084370) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1542185) = 7077888 * k + 4626556 := by
    unfold C
    simp [show (2359296 * k + 1542185) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4626556) = 3538944 * k + 2313278 := by
    unfold C
    simp [show (7077888 * k + 4626556) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2313278) = 1769472 * k + 1156639 := by
    unfold C
    simp [show (3538944 * k + 2313278) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1156639) = 5308416 * k + 3469918 := by
    unfold C
    simp [show (1769472 * k + 1156639) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3469918) = 2654208 * k + 1734959 := by
    unfold C
    simp [show (5308416 * k + 3469918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1734959) = 7962624 * k + 5204878 := by
    unfold C
    simp [show (2654208 * k + 1734959) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5204878) = 3981312 * k + 2602439 := by
    unfold C
    simp [show (7962624 * k + 5204878) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2602439) = 11943936 * k + 7807318 := by
    unfold C
    simp [show (3981312 * k + 2602439) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7807318) = 5971968 * k + 3903659 := by
    unfold C
    simp [show (11943936 * k + 7807318) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3903659) = 17915904 * k + 11710978 := by
    unfold C
    simp [show (5971968 * k + 3903659) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11710978) = 8957952 * k + 5855489 := by
    unfold C
    simp [show (17915904 * k + 11710978) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5855489) = 26873856 * k + 17566468 := by
    unfold C
    simp [show (8957952 * k + 5855489) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17566468) = 13436928 * k + 8783234 := by
    unfold C
    simp [show (26873856 * k + 17566468) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8783234) = 6718464 * k + 4391617 := by
    unfold C
    simp [show (13436928 * k + 8783234) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4391617) = 20155392 * k + 13174852 := by
    unfold C
    simp [show (6718464 * k + 4391617) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13174852) = 10077696 * k + 6587426 := by
    unfold C
    simp [show (20155392 * k + 13174852) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6587426) = 5038848 * k + 3293713 := by
    unfold C
    simp [show (10077696 * k + 6587426) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3293713) = 15116544 * k + 9881140 := by
    unfold C
    simp [show (5038848 * k + 3293713) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9881140) = 7558272 * k + 4940570 := by
    unfold C
    simp [show (15116544 * k + 9881140) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4940570) = 3779136 * k + 2470285 := by
    unfold C
    simp [show (7558272 * k + 4940570) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2470285) = 11337408 * k + 7410856 := by
    unfold C
    simp [show (3779136 * k + 2470285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7410856) = 5668704 * k + 3705428 := by
    unfold C
    simp [show (11337408 * k + 7410856) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3705428) = 2834352 * k + 1852714 := by
    unfold C
    simp [show (5668704 * k + 3705428) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1852714) = 1417176 * k + 926357 := by
    unfold C
    simp [show (2834352 * k + 1852714) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 926357) = 4251528 * k + 2779072 := by
    unfold C
    simp [show (1417176 * k + 926357) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2779072) = 2125764 * k + 1389536 := by
    unfold C
    simp [show (4251528 * k + 2779072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1389536) = 1062882 * k + 694768 := by
    unfold C
    simp [show (2125764 * k + 1389536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 694768) = 531441 * k + 347384 := by
    unfold C
    simp [show (1062882 * k + 694768) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 685415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 685415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_686319 : ∀ k : Nat,
    iterate (1048576 * k + 686319) 32 = 531441 * k + 347842 ∧
      531441 * k + 347842 < 1048576 * k + 686319 := by
  intro k
  have h1 : C (1048576 * k + 686319) = 3145728 * k + 2058958 := by
    unfold C
    simp [show (1048576 * k + 686319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2058958) = 1572864 * k + 1029479 := by
    unfold C
    simp [show (3145728 * k + 2058958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1029479) = 4718592 * k + 3088438 := by
    unfold C
    simp [show (1572864 * k + 1029479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3088438) = 2359296 * k + 1544219 := by
    unfold C
    simp [show (4718592 * k + 3088438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1544219) = 7077888 * k + 4632658 := by
    unfold C
    simp [show (2359296 * k + 1544219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4632658) = 3538944 * k + 2316329 := by
    unfold C
    simp [show (7077888 * k + 4632658) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2316329) = 10616832 * k + 6948988 := by
    unfold C
    simp [show (3538944 * k + 2316329) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6948988) = 5308416 * k + 3474494 := by
    unfold C
    simp [show (10616832 * k + 6948988) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3474494) = 2654208 * k + 1737247 := by
    unfold C
    simp [show (5308416 * k + 3474494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1737247) = 7962624 * k + 5211742 := by
    unfold C
    simp [show (2654208 * k + 1737247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5211742) = 3981312 * k + 2605871 := by
    unfold C
    simp [show (7962624 * k + 5211742) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2605871) = 11943936 * k + 7817614 := by
    unfold C
    simp [show (3981312 * k + 2605871) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7817614) = 5971968 * k + 3908807 := by
    unfold C
    simp [show (11943936 * k + 7817614) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3908807) = 17915904 * k + 11726422 := by
    unfold C
    simp [show (5971968 * k + 3908807) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11726422) = 8957952 * k + 5863211 := by
    unfold C
    simp [show (17915904 * k + 11726422) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5863211) = 26873856 * k + 17589634 := by
    unfold C
    simp [show (8957952 * k + 5863211) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17589634) = 13436928 * k + 8794817 := by
    unfold C
    simp [show (26873856 * k + 17589634) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8794817) = 40310784 * k + 26384452 := by
    unfold C
    simp [show (13436928 * k + 8794817) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 26384452) = 20155392 * k + 13192226 := by
    unfold C
    simp [show (40310784 * k + 26384452) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13192226) = 10077696 * k + 6596113 := by
    unfold C
    simp [show (20155392 * k + 13192226) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6596113) = 30233088 * k + 19788340 := by
    unfold C
    simp [show (10077696 * k + 6596113) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19788340) = 15116544 * k + 9894170 := by
    unfold C
    simp [show (30233088 * k + 19788340) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9894170) = 7558272 * k + 4947085 := by
    unfold C
    simp [show (15116544 * k + 9894170) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4947085) = 22674816 * k + 14841256 := by
    unfold C
    simp [show (7558272 * k + 4947085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14841256) = 11337408 * k + 7420628 := by
    unfold C
    simp [show (22674816 * k + 14841256) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7420628) = 5668704 * k + 3710314 := by
    unfold C
    simp [show (11337408 * k + 7420628) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3710314) = 2834352 * k + 1855157 := by
    unfold C
    simp [show (5668704 * k + 3710314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1855157) = 8503056 * k + 5565472 := by
    unfold C
    simp [show (2834352 * k + 1855157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5565472) = 4251528 * k + 2782736 := by
    unfold C
    simp [show (8503056 * k + 5565472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2782736) = 2125764 * k + 1391368 := by
    unfold C
    simp [show (4251528 * k + 2782736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1391368) = 1062882 * k + 695684 := by
    unfold C
    simp [show (2125764 * k + 1391368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 695684) = 531441 * k + 347842 := by
    unfold C
    simp [show (1062882 * k + 695684) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 686319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 686319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_687099 : ∀ k : Nat,
    iterate (1048576 * k + 687099) 32 = 531441 * k + 348238 ∧
      531441 * k + 348238 < 1048576 * k + 687099 := by
  intro k
  have h1 : C (1048576 * k + 687099) = 3145728 * k + 2061298 := by
    unfold C
    simp [show (1048576 * k + 687099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2061298) = 1572864 * k + 1030649 := by
    unfold C
    simp [show (3145728 * k + 2061298) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1030649) = 4718592 * k + 3091948 := by
    unfold C
    simp [show (1572864 * k + 1030649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3091948) = 2359296 * k + 1545974 := by
    unfold C
    simp [show (4718592 * k + 3091948) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1545974) = 1179648 * k + 772987 := by
    unfold C
    simp [show (2359296 * k + 1545974) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 772987) = 3538944 * k + 2318962 := by
    unfold C
    simp [show (1179648 * k + 772987) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2318962) = 1769472 * k + 1159481 := by
    unfold C
    simp [show (3538944 * k + 2318962) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1159481) = 5308416 * k + 3478444 := by
    unfold C
    simp [show (1769472 * k + 1159481) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3478444) = 2654208 * k + 1739222 := by
    unfold C
    simp [show (5308416 * k + 3478444) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1739222) = 1327104 * k + 869611 := by
    unfold C
    simp [show (2654208 * k + 1739222) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 869611) = 3981312 * k + 2608834 := by
    unfold C
    simp [show (1327104 * k + 869611) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2608834) = 1990656 * k + 1304417 := by
    unfold C
    simp [show (3981312 * k + 2608834) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1304417) = 5971968 * k + 3913252 := by
    unfold C
    simp [show (1990656 * k + 1304417) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3913252) = 2985984 * k + 1956626 := by
    unfold C
    simp [show (5971968 * k + 3913252) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1956626) = 1492992 * k + 978313 := by
    unfold C
    simp [show (2985984 * k + 1956626) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 978313) = 4478976 * k + 2934940 := by
    unfold C
    simp [show (1492992 * k + 978313) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2934940) = 2239488 * k + 1467470 := by
    unfold C
    simp [show (4478976 * k + 2934940) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1467470) = 1119744 * k + 733735 := by
    unfold C
    simp [show (2239488 * k + 1467470) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 733735) = 3359232 * k + 2201206 := by
    unfold C
    simp [show (1119744 * k + 733735) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2201206) = 1679616 * k + 1100603 := by
    unfold C
    simp [show (3359232 * k + 2201206) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1100603) = 5038848 * k + 3301810 := by
    unfold C
    simp [show (1679616 * k + 1100603) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3301810) = 2519424 * k + 1650905 := by
    unfold C
    simp [show (5038848 * k + 3301810) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1650905) = 7558272 * k + 4952716 := by
    unfold C
    simp [show (2519424 * k + 1650905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4952716) = 3779136 * k + 2476358 := by
    unfold C
    simp [show (7558272 * k + 4952716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2476358) = 1889568 * k + 1238179 := by
    unfold C
    simp [show (3779136 * k + 2476358) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1238179) = 5668704 * k + 3714538 := by
    unfold C
    simp [show (1889568 * k + 1238179) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3714538) = 2834352 * k + 1857269 := by
    unfold C
    simp [show (5668704 * k + 3714538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1857269) = 8503056 * k + 5571808 := by
    unfold C
    simp [show (2834352 * k + 1857269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5571808) = 4251528 * k + 2785904 := by
    unfold C
    simp [show (8503056 * k + 5571808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2785904) = 2125764 * k + 1392952 := by
    unfold C
    simp [show (4251528 * k + 2785904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1392952) = 1062882 * k + 696476 := by
    unfold C
    simp [show (2125764 * k + 1392952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 696476) = 531441 * k + 348238 := by
    unfold C
    simp [show (1062882 * k + 696476) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 687099) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 687099)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_687343 : ∀ k : Nat,
    iterate (1048576 * k + 687343) 32 = 531441 * k + 348361 ∧
      531441 * k + 348361 < 1048576 * k + 687343 := by
  intro k
  have h1 : C (1048576 * k + 687343) = 3145728 * k + 2062030 := by
    unfold C
    simp [show (1048576 * k + 687343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2062030) = 1572864 * k + 1031015 := by
    unfold C
    simp [show (3145728 * k + 2062030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1031015) = 4718592 * k + 3093046 := by
    unfold C
    simp [show (1572864 * k + 1031015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3093046) = 2359296 * k + 1546523 := by
    unfold C
    simp [show (4718592 * k + 3093046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1546523) = 7077888 * k + 4639570 := by
    unfold C
    simp [show (2359296 * k + 1546523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4639570) = 3538944 * k + 2319785 := by
    unfold C
    simp [show (7077888 * k + 4639570) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2319785) = 10616832 * k + 6959356 := by
    unfold C
    simp [show (3538944 * k + 2319785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6959356) = 5308416 * k + 3479678 := by
    unfold C
    simp [show (10616832 * k + 6959356) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3479678) = 2654208 * k + 1739839 := by
    unfold C
    simp [show (5308416 * k + 3479678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1739839) = 7962624 * k + 5219518 := by
    unfold C
    simp [show (2654208 * k + 1739839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5219518) = 3981312 * k + 2609759 := by
    unfold C
    simp [show (7962624 * k + 5219518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2609759) = 11943936 * k + 7829278 := by
    unfold C
    simp [show (3981312 * k + 2609759) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7829278) = 5971968 * k + 3914639 := by
    unfold C
    simp [show (11943936 * k + 7829278) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3914639) = 17915904 * k + 11743918 := by
    unfold C
    simp [show (5971968 * k + 3914639) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11743918) = 8957952 * k + 5871959 := by
    unfold C
    simp [show (17915904 * k + 11743918) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5871959) = 26873856 * k + 17615878 := by
    unfold C
    simp [show (8957952 * k + 5871959) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17615878) = 13436928 * k + 8807939 := by
    unfold C
    simp [show (26873856 * k + 17615878) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8807939) = 40310784 * k + 26423818 := by
    unfold C
    simp [show (13436928 * k + 8807939) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 26423818) = 20155392 * k + 13211909 := by
    unfold C
    simp [show (40310784 * k + 26423818) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13211909) = 60466176 * k + 39635728 := by
    unfold C
    simp [show (20155392 * k + 13211909) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 39635728) = 30233088 * k + 19817864 := by
    unfold C
    simp [show (60466176 * k + 39635728) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 19817864) = 15116544 * k + 9908932 := by
    unfold C
    simp [show (30233088 * k + 19817864) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9908932) = 7558272 * k + 4954466 := by
    unfold C
    simp [show (15116544 * k + 9908932) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4954466) = 3779136 * k + 2477233 := by
    unfold C
    simp [show (7558272 * k + 4954466) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2477233) = 11337408 * k + 7431700 := by
    unfold C
    simp [show (3779136 * k + 2477233) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7431700) = 5668704 * k + 3715850 := by
    unfold C
    simp [show (11337408 * k + 7431700) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3715850) = 2834352 * k + 1857925 := by
    unfold C
    simp [show (5668704 * k + 3715850) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1857925) = 8503056 * k + 5573776 := by
    unfold C
    simp [show (2834352 * k + 1857925) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5573776) = 4251528 * k + 2786888 := by
    unfold C
    simp [show (8503056 * k + 5573776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2786888) = 2125764 * k + 1393444 := by
    unfold C
    simp [show (4251528 * k + 2786888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1393444) = 1062882 * k + 696722 := by
    unfold C
    simp [show (2125764 * k + 1393444) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 696722) = 531441 * k + 348361 := by
    unfold C
    simp [show (1062882 * k + 696722) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 687343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 687343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_687463 : ∀ k : Nat,
    iterate (1048576 * k + 687463) 32 = 531441 * k + 348422 ∧
      531441 * k + 348422 < 1048576 * k + 687463 := by
  intro k
  have h1 : C (1048576 * k + 687463) = 3145728 * k + 2062390 := by
    unfold C
    simp [show (1048576 * k + 687463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2062390) = 1572864 * k + 1031195 := by
    unfold C
    simp [show (3145728 * k + 2062390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1031195) = 4718592 * k + 3093586 := by
    unfold C
    simp [show (1572864 * k + 1031195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3093586) = 2359296 * k + 1546793 := by
    unfold C
    simp [show (4718592 * k + 3093586) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1546793) = 7077888 * k + 4640380 := by
    unfold C
    simp [show (2359296 * k + 1546793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4640380) = 3538944 * k + 2320190 := by
    unfold C
    simp [show (7077888 * k + 4640380) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2320190) = 1769472 * k + 1160095 := by
    unfold C
    simp [show (3538944 * k + 2320190) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1160095) = 5308416 * k + 3480286 := by
    unfold C
    simp [show (1769472 * k + 1160095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3480286) = 2654208 * k + 1740143 := by
    unfold C
    simp [show (5308416 * k + 3480286) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1740143) = 7962624 * k + 5220430 := by
    unfold C
    simp [show (2654208 * k + 1740143) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5220430) = 3981312 * k + 2610215 := by
    unfold C
    simp [show (7962624 * k + 5220430) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2610215) = 11943936 * k + 7830646 := by
    unfold C
    simp [show (3981312 * k + 2610215) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7830646) = 5971968 * k + 3915323 := by
    unfold C
    simp [show (11943936 * k + 7830646) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3915323) = 17915904 * k + 11745970 := by
    unfold C
    simp [show (5971968 * k + 3915323) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11745970) = 8957952 * k + 5872985 := by
    unfold C
    simp [show (17915904 * k + 11745970) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5872985) = 26873856 * k + 17618956 := by
    unfold C
    simp [show (8957952 * k + 5872985) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17618956) = 13436928 * k + 8809478 := by
    unfold C
    simp [show (26873856 * k + 17618956) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8809478) = 6718464 * k + 4404739 := by
    unfold C
    simp [show (13436928 * k + 8809478) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4404739) = 20155392 * k + 13214218 := by
    unfold C
    simp [show (6718464 * k + 4404739) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13214218) = 10077696 * k + 6607109 := by
    unfold C
    simp [show (20155392 * k + 13214218) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6607109) = 30233088 * k + 19821328 := by
    unfold C
    simp [show (10077696 * k + 6607109) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19821328) = 15116544 * k + 9910664 := by
    unfold C
    simp [show (30233088 * k + 19821328) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9910664) = 7558272 * k + 4955332 := by
    unfold C
    simp [show (15116544 * k + 9910664) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4955332) = 3779136 * k + 2477666 := by
    unfold C
    simp [show (7558272 * k + 4955332) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2477666) = 1889568 * k + 1238833 := by
    unfold C
    simp [show (3779136 * k + 2477666) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1238833) = 5668704 * k + 3716500 := by
    unfold C
    simp [show (1889568 * k + 1238833) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3716500) = 2834352 * k + 1858250 := by
    unfold C
    simp [show (5668704 * k + 3716500) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1858250) = 1417176 * k + 929125 := by
    unfold C
    simp [show (2834352 * k + 1858250) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 929125) = 4251528 * k + 2787376 := by
    unfold C
    simp [show (1417176 * k + 929125) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2787376) = 2125764 * k + 1393688 := by
    unfold C
    simp [show (4251528 * k + 2787376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1393688) = 1062882 * k + 696844 := by
    unfold C
    simp [show (2125764 * k + 1393688) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 696844) = 531441 * k + 348422 := by
    unfold C
    simp [show (1062882 * k + 696844) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 687463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 687463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_687775 : ∀ k : Nat,
    iterate (1048576 * k + 687775) 32 = 531441 * k + 348580 ∧
      531441 * k + 348580 < 1048576 * k + 687775 := by
  intro k
  have h1 : C (1048576 * k + 687775) = 3145728 * k + 2063326 := by
    unfold C
    simp [show (1048576 * k + 687775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2063326) = 1572864 * k + 1031663 := by
    unfold C
    simp [show (3145728 * k + 2063326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1031663) = 4718592 * k + 3094990 := by
    unfold C
    simp [show (1572864 * k + 1031663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3094990) = 2359296 * k + 1547495 := by
    unfold C
    simp [show (4718592 * k + 3094990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1547495) = 7077888 * k + 4642486 := by
    unfold C
    simp [show (2359296 * k + 1547495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4642486) = 3538944 * k + 2321243 := by
    unfold C
    simp [show (7077888 * k + 4642486) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2321243) = 10616832 * k + 6963730 := by
    unfold C
    simp [show (3538944 * k + 2321243) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6963730) = 5308416 * k + 3481865 := by
    unfold C
    simp [show (10616832 * k + 6963730) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3481865) = 15925248 * k + 10445596 := by
    unfold C
    simp [show (5308416 * k + 3481865) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10445596) = 7962624 * k + 5222798 := by
    unfold C
    simp [show (15925248 * k + 10445596) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5222798) = 3981312 * k + 2611399 := by
    unfold C
    simp [show (7962624 * k + 5222798) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2611399) = 11943936 * k + 7834198 := by
    unfold C
    simp [show (3981312 * k + 2611399) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7834198) = 5971968 * k + 3917099 := by
    unfold C
    simp [show (11943936 * k + 7834198) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3917099) = 17915904 * k + 11751298 := by
    unfold C
    simp [show (5971968 * k + 3917099) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11751298) = 8957952 * k + 5875649 := by
    unfold C
    simp [show (17915904 * k + 11751298) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5875649) = 26873856 * k + 17626948 := by
    unfold C
    simp [show (8957952 * k + 5875649) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17626948) = 13436928 * k + 8813474 := by
    unfold C
    simp [show (26873856 * k + 17626948) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8813474) = 6718464 * k + 4406737 := by
    unfold C
    simp [show (13436928 * k + 8813474) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4406737) = 20155392 * k + 13220212 := by
    unfold C
    simp [show (6718464 * k + 4406737) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13220212) = 10077696 * k + 6610106 := by
    unfold C
    simp [show (20155392 * k + 13220212) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6610106) = 5038848 * k + 3305053 := by
    unfold C
    simp [show (10077696 * k + 6610106) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3305053) = 15116544 * k + 9915160 := by
    unfold C
    simp [show (5038848 * k + 3305053) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9915160) = 7558272 * k + 4957580 := by
    unfold C
    simp [show (15116544 * k + 9915160) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4957580) = 3779136 * k + 2478790 := by
    unfold C
    simp [show (7558272 * k + 4957580) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2478790) = 1889568 * k + 1239395 := by
    unfold C
    simp [show (3779136 * k + 2478790) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1239395) = 5668704 * k + 3718186 := by
    unfold C
    simp [show (1889568 * k + 1239395) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3718186) = 2834352 * k + 1859093 := by
    unfold C
    simp [show (5668704 * k + 3718186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1859093) = 8503056 * k + 5577280 := by
    unfold C
    simp [show (2834352 * k + 1859093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5577280) = 4251528 * k + 2788640 := by
    unfold C
    simp [show (8503056 * k + 5577280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2788640) = 2125764 * k + 1394320 := by
    unfold C
    simp [show (4251528 * k + 2788640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1394320) = 1062882 * k + 697160 := by
    unfold C
    simp [show (2125764 * k + 1394320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 697160) = 531441 * k + 348580 := by
    unfold C
    simp [show (1062882 * k + 697160) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 687775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 687775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_688031 : ∀ k : Nat,
    iterate (1048576 * k + 688031) 32 = 531441 * k + 348710 ∧
      531441 * k + 348710 < 1048576 * k + 688031 := by
  intro k
  have h1 : C (1048576 * k + 688031) = 3145728 * k + 2064094 := by
    unfold C
    simp [show (1048576 * k + 688031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2064094) = 1572864 * k + 1032047 := by
    unfold C
    simp [show (3145728 * k + 2064094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1032047) = 4718592 * k + 3096142 := by
    unfold C
    simp [show (1572864 * k + 1032047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3096142) = 2359296 * k + 1548071 := by
    unfold C
    simp [show (4718592 * k + 3096142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1548071) = 7077888 * k + 4644214 := by
    unfold C
    simp [show (2359296 * k + 1548071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4644214) = 3538944 * k + 2322107 := by
    unfold C
    simp [show (7077888 * k + 4644214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2322107) = 10616832 * k + 6966322 := by
    unfold C
    simp [show (3538944 * k + 2322107) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6966322) = 5308416 * k + 3483161 := by
    unfold C
    simp [show (10616832 * k + 6966322) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3483161) = 15925248 * k + 10449484 := by
    unfold C
    simp [show (5308416 * k + 3483161) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10449484) = 7962624 * k + 5224742 := by
    unfold C
    simp [show (15925248 * k + 10449484) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5224742) = 3981312 * k + 2612371 := by
    unfold C
    simp [show (7962624 * k + 5224742) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2612371) = 11943936 * k + 7837114 := by
    unfold C
    simp [show (3981312 * k + 2612371) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7837114) = 5971968 * k + 3918557 := by
    unfold C
    simp [show (11943936 * k + 7837114) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3918557) = 17915904 * k + 11755672 := by
    unfold C
    simp [show (5971968 * k + 3918557) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11755672) = 8957952 * k + 5877836 := by
    unfold C
    simp [show (17915904 * k + 11755672) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5877836) = 4478976 * k + 2938918 := by
    unfold C
    simp [show (8957952 * k + 5877836) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2938918) = 2239488 * k + 1469459 := by
    unfold C
    simp [show (4478976 * k + 2938918) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1469459) = 6718464 * k + 4408378 := by
    unfold C
    simp [show (2239488 * k + 1469459) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4408378) = 3359232 * k + 2204189 := by
    unfold C
    simp [show (6718464 * k + 4408378) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2204189) = 10077696 * k + 6612568 := by
    unfold C
    simp [show (3359232 * k + 2204189) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6612568) = 5038848 * k + 3306284 := by
    unfold C
    simp [show (10077696 * k + 6612568) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3306284) = 2519424 * k + 1653142 := by
    unfold C
    simp [show (5038848 * k + 3306284) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1653142) = 1259712 * k + 826571 := by
    unfold C
    simp [show (2519424 * k + 1653142) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 826571) = 3779136 * k + 2479714 := by
    unfold C
    simp [show (1259712 * k + 826571) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2479714) = 1889568 * k + 1239857 := by
    unfold C
    simp [show (3779136 * k + 2479714) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1239857) = 5668704 * k + 3719572 := by
    unfold C
    simp [show (1889568 * k + 1239857) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3719572) = 2834352 * k + 1859786 := by
    unfold C
    simp [show (5668704 * k + 3719572) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1859786) = 1417176 * k + 929893 := by
    unfold C
    simp [show (2834352 * k + 1859786) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 929893) = 4251528 * k + 2789680 := by
    unfold C
    simp [show (1417176 * k + 929893) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2789680) = 2125764 * k + 1394840 := by
    unfold C
    simp [show (4251528 * k + 2789680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1394840) = 1062882 * k + 697420 := by
    unfold C
    simp [show (2125764 * k + 1394840) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 697420) = 531441 * k + 348710 := by
    unfold C
    simp [show (1062882 * k + 697420) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 688031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 688031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_688191 : ∀ k : Nat,
    iterate (1048576 * k + 688191) 32 = 531441 * k + 348791 ∧
      531441 * k + 348791 < 1048576 * k + 688191 := by
  intro k
  have h1 : C (1048576 * k + 688191) = 3145728 * k + 2064574 := by
    unfold C
    simp [show (1048576 * k + 688191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2064574) = 1572864 * k + 1032287 := by
    unfold C
    simp [show (3145728 * k + 2064574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1032287) = 4718592 * k + 3096862 := by
    unfold C
    simp [show (1572864 * k + 1032287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3096862) = 2359296 * k + 1548431 := by
    unfold C
    simp [show (4718592 * k + 3096862) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1548431) = 7077888 * k + 4645294 := by
    unfold C
    simp [show (2359296 * k + 1548431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4645294) = 3538944 * k + 2322647 := by
    unfold C
    simp [show (7077888 * k + 4645294) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2322647) = 10616832 * k + 6967942 := by
    unfold C
    simp [show (3538944 * k + 2322647) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6967942) = 5308416 * k + 3483971 := by
    unfold C
    simp [show (10616832 * k + 6967942) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3483971) = 15925248 * k + 10451914 := by
    unfold C
    simp [show (5308416 * k + 3483971) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10451914) = 7962624 * k + 5225957 := by
    unfold C
    simp [show (15925248 * k + 10451914) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5225957) = 23887872 * k + 15677872 := by
    unfold C
    simp [show (7962624 * k + 5225957) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15677872) = 11943936 * k + 7838936 := by
    unfold C
    simp [show (23887872 * k + 15677872) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7838936) = 5971968 * k + 3919468 := by
    unfold C
    simp [show (11943936 * k + 7838936) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3919468) = 2985984 * k + 1959734 := by
    unfold C
    simp [show (5971968 * k + 3919468) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1959734) = 1492992 * k + 979867 := by
    unfold C
    simp [show (2985984 * k + 1959734) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 979867) = 4478976 * k + 2939602 := by
    unfold C
    simp [show (1492992 * k + 979867) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2939602) = 2239488 * k + 1469801 := by
    unfold C
    simp [show (4478976 * k + 2939602) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1469801) = 6718464 * k + 4409404 := by
    unfold C
    simp [show (2239488 * k + 1469801) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4409404) = 3359232 * k + 2204702 := by
    unfold C
    simp [show (6718464 * k + 4409404) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2204702) = 1679616 * k + 1102351 := by
    unfold C
    simp [show (3359232 * k + 2204702) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1102351) = 5038848 * k + 3307054 := by
    unfold C
    simp [show (1679616 * k + 1102351) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3307054) = 2519424 * k + 1653527 := by
    unfold C
    simp [show (5038848 * k + 3307054) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1653527) = 7558272 * k + 4960582 := by
    unfold C
    simp [show (2519424 * k + 1653527) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4960582) = 3779136 * k + 2480291 := by
    unfold C
    simp [show (7558272 * k + 4960582) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2480291) = 11337408 * k + 7440874 := by
    unfold C
    simp [show (3779136 * k + 2480291) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7440874) = 5668704 * k + 3720437 := by
    unfold C
    simp [show (11337408 * k + 7440874) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3720437) = 17006112 * k + 11161312 := by
    unfold C
    simp [show (5668704 * k + 3720437) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11161312) = 8503056 * k + 5580656 := by
    unfold C
    simp [show (17006112 * k + 11161312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5580656) = 4251528 * k + 2790328 := by
    unfold C
    simp [show (8503056 * k + 5580656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2790328) = 2125764 * k + 1395164 := by
    unfold C
    simp [show (4251528 * k + 2790328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1395164) = 1062882 * k + 697582 := by
    unfold C
    simp [show (2125764 * k + 1395164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 697582) = 531441 * k + 348791 := by
    unfold C
    simp [show (1062882 * k + 697582) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 688191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 688191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_688799 : ∀ k : Nat,
    iterate (1048576 * k + 688799) 32 = 531441 * k + 349099 ∧
      531441 * k + 349099 < 1048576 * k + 688799 := by
  intro k
  have h1 : C (1048576 * k + 688799) = 3145728 * k + 2066398 := by
    unfold C
    simp [show (1048576 * k + 688799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2066398) = 1572864 * k + 1033199 := by
    unfold C
    simp [show (3145728 * k + 2066398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1033199) = 4718592 * k + 3099598 := by
    unfold C
    simp [show (1572864 * k + 1033199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3099598) = 2359296 * k + 1549799 := by
    unfold C
    simp [show (4718592 * k + 3099598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1549799) = 7077888 * k + 4649398 := by
    unfold C
    simp [show (2359296 * k + 1549799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4649398) = 3538944 * k + 2324699 := by
    unfold C
    simp [show (7077888 * k + 4649398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2324699) = 10616832 * k + 6974098 := by
    unfold C
    simp [show (3538944 * k + 2324699) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6974098) = 5308416 * k + 3487049 := by
    unfold C
    simp [show (10616832 * k + 6974098) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3487049) = 15925248 * k + 10461148 := by
    unfold C
    simp [show (5308416 * k + 3487049) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10461148) = 7962624 * k + 5230574 := by
    unfold C
    simp [show (15925248 * k + 10461148) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5230574) = 3981312 * k + 2615287 := by
    unfold C
    simp [show (7962624 * k + 5230574) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2615287) = 11943936 * k + 7845862 := by
    unfold C
    simp [show (3981312 * k + 2615287) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7845862) = 5971968 * k + 3922931 := by
    unfold C
    simp [show (11943936 * k + 7845862) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3922931) = 17915904 * k + 11768794 := by
    unfold C
    simp [show (5971968 * k + 3922931) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11768794) = 8957952 * k + 5884397 := by
    unfold C
    simp [show (17915904 * k + 11768794) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5884397) = 26873856 * k + 17653192 := by
    unfold C
    simp [show (8957952 * k + 5884397) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17653192) = 13436928 * k + 8826596 := by
    unfold C
    simp [show (26873856 * k + 17653192) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8826596) = 6718464 * k + 4413298 := by
    unfold C
    simp [show (13436928 * k + 8826596) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4413298) = 3359232 * k + 2206649 := by
    unfold C
    simp [show (6718464 * k + 4413298) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2206649) = 10077696 * k + 6619948 := by
    unfold C
    simp [show (3359232 * k + 2206649) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6619948) = 5038848 * k + 3309974 := by
    unfold C
    simp [show (10077696 * k + 6619948) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3309974) = 2519424 * k + 1654987 := by
    unfold C
    simp [show (5038848 * k + 3309974) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1654987) = 7558272 * k + 4964962 := by
    unfold C
    simp [show (2519424 * k + 1654987) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4964962) = 3779136 * k + 2482481 := by
    unfold C
    simp [show (7558272 * k + 4964962) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2482481) = 11337408 * k + 7447444 := by
    unfold C
    simp [show (3779136 * k + 2482481) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7447444) = 5668704 * k + 3723722 := by
    unfold C
    simp [show (11337408 * k + 7447444) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3723722) = 2834352 * k + 1861861 := by
    unfold C
    simp [show (5668704 * k + 3723722) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1861861) = 8503056 * k + 5585584 := by
    unfold C
    simp [show (2834352 * k + 1861861) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5585584) = 4251528 * k + 2792792 := by
    unfold C
    simp [show (8503056 * k + 5585584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2792792) = 2125764 * k + 1396396 := by
    unfold C
    simp [show (4251528 * k + 2792792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1396396) = 1062882 * k + 698198 := by
    unfold C
    simp [show (2125764 * k + 1396396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 698198) = 531441 * k + 349099 := by
    unfold C
    simp [show (1062882 * k + 698198) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 688799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 688799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_689055 : ∀ k : Nat,
    iterate (1048576 * k + 689055) 32 = 531441 * k + 349229 ∧
      531441 * k + 349229 < 1048576 * k + 689055 := by
  intro k
  have h1 : C (1048576 * k + 689055) = 3145728 * k + 2067166 := by
    unfold C
    simp [show (1048576 * k + 689055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2067166) = 1572864 * k + 1033583 := by
    unfold C
    simp [show (3145728 * k + 2067166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1033583) = 4718592 * k + 3100750 := by
    unfold C
    simp [show (1572864 * k + 1033583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3100750) = 2359296 * k + 1550375 := by
    unfold C
    simp [show (4718592 * k + 3100750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1550375) = 7077888 * k + 4651126 := by
    unfold C
    simp [show (2359296 * k + 1550375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4651126) = 3538944 * k + 2325563 := by
    unfold C
    simp [show (7077888 * k + 4651126) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2325563) = 10616832 * k + 6976690 := by
    unfold C
    simp [show (3538944 * k + 2325563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6976690) = 5308416 * k + 3488345 := by
    unfold C
    simp [show (10616832 * k + 6976690) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3488345) = 15925248 * k + 10465036 := by
    unfold C
    simp [show (5308416 * k + 3488345) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10465036) = 7962624 * k + 5232518 := by
    unfold C
    simp [show (15925248 * k + 10465036) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5232518) = 3981312 * k + 2616259 := by
    unfold C
    simp [show (7962624 * k + 5232518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2616259) = 11943936 * k + 7848778 := by
    unfold C
    simp [show (3981312 * k + 2616259) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7848778) = 5971968 * k + 3924389 := by
    unfold C
    simp [show (11943936 * k + 7848778) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3924389) = 17915904 * k + 11773168 := by
    unfold C
    simp [show (5971968 * k + 3924389) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11773168) = 8957952 * k + 5886584 := by
    unfold C
    simp [show (17915904 * k + 11773168) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5886584) = 4478976 * k + 2943292 := by
    unfold C
    simp [show (8957952 * k + 5886584) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2943292) = 2239488 * k + 1471646 := by
    unfold C
    simp [show (4478976 * k + 2943292) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1471646) = 1119744 * k + 735823 := by
    unfold C
    simp [show (2239488 * k + 1471646) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 735823) = 3359232 * k + 2207470 := by
    unfold C
    simp [show (1119744 * k + 735823) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2207470) = 1679616 * k + 1103735 := by
    unfold C
    simp [show (3359232 * k + 2207470) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1103735) = 5038848 * k + 3311206 := by
    unfold C
    simp [show (1679616 * k + 1103735) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3311206) = 2519424 * k + 1655603 := by
    unfold C
    simp [show (5038848 * k + 3311206) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1655603) = 7558272 * k + 4966810 := by
    unfold C
    simp [show (2519424 * k + 1655603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4966810) = 3779136 * k + 2483405 := by
    unfold C
    simp [show (7558272 * k + 4966810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2483405) = 11337408 * k + 7450216 := by
    unfold C
    simp [show (3779136 * k + 2483405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7450216) = 5668704 * k + 3725108 := by
    unfold C
    simp [show (11337408 * k + 7450216) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3725108) = 2834352 * k + 1862554 := by
    unfold C
    simp [show (5668704 * k + 3725108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1862554) = 1417176 * k + 931277 := by
    unfold C
    simp [show (2834352 * k + 1862554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 931277) = 4251528 * k + 2793832 := by
    unfold C
    simp [show (1417176 * k + 931277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2793832) = 2125764 * k + 1396916 := by
    unfold C
    simp [show (4251528 * k + 2793832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1396916) = 1062882 * k + 698458 := by
    unfold C
    simp [show (2125764 * k + 1396916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 698458) = 531441 * k + 349229 := by
    unfold C
    simp [show (1062882 * k + 698458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 689055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 689055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_689479 : ∀ k : Nat,
    iterate (1048576 * k + 689479) 32 = 531441 * k + 349444 ∧
      531441 * k + 349444 < 1048576 * k + 689479 := by
  intro k
  have h1 : C (1048576 * k + 689479) = 3145728 * k + 2068438 := by
    unfold C
    simp [show (1048576 * k + 689479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2068438) = 1572864 * k + 1034219 := by
    unfold C
    simp [show (3145728 * k + 2068438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1034219) = 4718592 * k + 3102658 := by
    unfold C
    simp [show (1572864 * k + 1034219) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3102658) = 2359296 * k + 1551329 := by
    unfold C
    simp [show (4718592 * k + 3102658) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1551329) = 7077888 * k + 4653988 := by
    unfold C
    simp [show (2359296 * k + 1551329) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4653988) = 3538944 * k + 2326994 := by
    unfold C
    simp [show (7077888 * k + 4653988) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2326994) = 1769472 * k + 1163497 := by
    unfold C
    simp [show (3538944 * k + 2326994) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1163497) = 5308416 * k + 3490492 := by
    unfold C
    simp [show (1769472 * k + 1163497) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3490492) = 2654208 * k + 1745246 := by
    unfold C
    simp [show (5308416 * k + 3490492) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1745246) = 1327104 * k + 872623 := by
    unfold C
    simp [show (2654208 * k + 1745246) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 872623) = 3981312 * k + 2617870 := by
    unfold C
    simp [show (1327104 * k + 872623) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2617870) = 1990656 * k + 1308935 := by
    unfold C
    simp [show (3981312 * k + 2617870) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1308935) = 5971968 * k + 3926806 := by
    unfold C
    simp [show (1990656 * k + 1308935) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3926806) = 2985984 * k + 1963403 := by
    unfold C
    simp [show (5971968 * k + 3926806) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1963403) = 8957952 * k + 5890210 := by
    unfold C
    simp [show (2985984 * k + 1963403) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5890210) = 4478976 * k + 2945105 := by
    unfold C
    simp [show (8957952 * k + 5890210) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2945105) = 13436928 * k + 8835316 := by
    unfold C
    simp [show (4478976 * k + 2945105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8835316) = 6718464 * k + 4417658 := by
    unfold C
    simp [show (13436928 * k + 8835316) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4417658) = 3359232 * k + 2208829 := by
    unfold C
    simp [show (6718464 * k + 4417658) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2208829) = 10077696 * k + 6626488 := by
    unfold C
    simp [show (3359232 * k + 2208829) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6626488) = 5038848 * k + 3313244 := by
    unfold C
    simp [show (10077696 * k + 6626488) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3313244) = 2519424 * k + 1656622 := by
    unfold C
    simp [show (5038848 * k + 3313244) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1656622) = 1259712 * k + 828311 := by
    unfold C
    simp [show (2519424 * k + 1656622) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 828311) = 3779136 * k + 2484934 := by
    unfold C
    simp [show (1259712 * k + 828311) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2484934) = 1889568 * k + 1242467 := by
    unfold C
    simp [show (3779136 * k + 2484934) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1242467) = 5668704 * k + 3727402 := by
    unfold C
    simp [show (1889568 * k + 1242467) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3727402) = 2834352 * k + 1863701 := by
    unfold C
    simp [show (5668704 * k + 3727402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1863701) = 8503056 * k + 5591104 := by
    unfold C
    simp [show (2834352 * k + 1863701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5591104) = 4251528 * k + 2795552 := by
    unfold C
    simp [show (8503056 * k + 5591104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2795552) = 2125764 * k + 1397776 := by
    unfold C
    simp [show (4251528 * k + 2795552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1397776) = 1062882 * k + 698888 := by
    unfold C
    simp [show (2125764 * k + 1397776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 698888) = 531441 * k + 349444 := by
    unfold C
    simp [show (1062882 * k + 698888) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 689479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 689479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_689647 : ∀ k : Nat,
    iterate (1048576 * k + 689647) 32 = 531441 * k + 349529 ∧
      531441 * k + 349529 < 1048576 * k + 689647 := by
  intro k
  have h1 : C (1048576 * k + 689647) = 3145728 * k + 2068942 := by
    unfold C
    simp [show (1048576 * k + 689647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2068942) = 1572864 * k + 1034471 := by
    unfold C
    simp [show (3145728 * k + 2068942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1034471) = 4718592 * k + 3103414 := by
    unfold C
    simp [show (1572864 * k + 1034471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3103414) = 2359296 * k + 1551707 := by
    unfold C
    simp [show (4718592 * k + 3103414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1551707) = 7077888 * k + 4655122 := by
    unfold C
    simp [show (2359296 * k + 1551707) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4655122) = 3538944 * k + 2327561 := by
    unfold C
    simp [show (7077888 * k + 4655122) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2327561) = 10616832 * k + 6982684 := by
    unfold C
    simp [show (3538944 * k + 2327561) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6982684) = 5308416 * k + 3491342 := by
    unfold C
    simp [show (10616832 * k + 6982684) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3491342) = 2654208 * k + 1745671 := by
    unfold C
    simp [show (5308416 * k + 3491342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1745671) = 7962624 * k + 5237014 := by
    unfold C
    simp [show (2654208 * k + 1745671) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5237014) = 3981312 * k + 2618507 := by
    unfold C
    simp [show (7962624 * k + 5237014) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2618507) = 11943936 * k + 7855522 := by
    unfold C
    simp [show (3981312 * k + 2618507) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7855522) = 5971968 * k + 3927761 := by
    unfold C
    simp [show (11943936 * k + 7855522) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3927761) = 17915904 * k + 11783284 := by
    unfold C
    simp [show (5971968 * k + 3927761) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11783284) = 8957952 * k + 5891642 := by
    unfold C
    simp [show (17915904 * k + 11783284) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5891642) = 4478976 * k + 2945821 := by
    unfold C
    simp [show (8957952 * k + 5891642) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2945821) = 13436928 * k + 8837464 := by
    unfold C
    simp [show (4478976 * k + 2945821) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8837464) = 6718464 * k + 4418732 := by
    unfold C
    simp [show (13436928 * k + 8837464) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4418732) = 3359232 * k + 2209366 := by
    unfold C
    simp [show (6718464 * k + 4418732) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2209366) = 1679616 * k + 1104683 := by
    unfold C
    simp [show (3359232 * k + 2209366) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1104683) = 5038848 * k + 3314050 := by
    unfold C
    simp [show (1679616 * k + 1104683) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3314050) = 2519424 * k + 1657025 := by
    unfold C
    simp [show (5038848 * k + 3314050) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1657025) = 7558272 * k + 4971076 := by
    unfold C
    simp [show (2519424 * k + 1657025) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4971076) = 3779136 * k + 2485538 := by
    unfold C
    simp [show (7558272 * k + 4971076) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2485538) = 1889568 * k + 1242769 := by
    unfold C
    simp [show (3779136 * k + 2485538) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1242769) = 5668704 * k + 3728308 := by
    unfold C
    simp [show (1889568 * k + 1242769) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3728308) = 2834352 * k + 1864154 := by
    unfold C
    simp [show (5668704 * k + 3728308) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1864154) = 1417176 * k + 932077 := by
    unfold C
    simp [show (2834352 * k + 1864154) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 932077) = 4251528 * k + 2796232 := by
    unfold C
    simp [show (1417176 * k + 932077) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2796232) = 2125764 * k + 1398116 := by
    unfold C
    simp [show (4251528 * k + 2796232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1398116) = 1062882 * k + 699058 := by
    unfold C
    simp [show (2125764 * k + 1398116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 699058) = 531441 * k + 349529 := by
    unfold C
    simp [show (1062882 * k + 699058) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 689647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 689647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_690535 : ∀ k : Nat,
    iterate (1048576 * k + 690535) 32 = 531441 * k + 349979 ∧
      531441 * k + 349979 < 1048576 * k + 690535 := by
  intro k
  have h1 : C (1048576 * k + 690535) = 3145728 * k + 2071606 := by
    unfold C
    simp [show (1048576 * k + 690535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2071606) = 1572864 * k + 1035803 := by
    unfold C
    simp [show (3145728 * k + 2071606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1035803) = 4718592 * k + 3107410 := by
    unfold C
    simp [show (1572864 * k + 1035803) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3107410) = 2359296 * k + 1553705 := by
    unfold C
    simp [show (4718592 * k + 3107410) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1553705) = 7077888 * k + 4661116 := by
    unfold C
    simp [show (2359296 * k + 1553705) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4661116) = 3538944 * k + 2330558 := by
    unfold C
    simp [show (7077888 * k + 4661116) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2330558) = 1769472 * k + 1165279 := by
    unfold C
    simp [show (3538944 * k + 2330558) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1165279) = 5308416 * k + 3495838 := by
    unfold C
    simp [show (1769472 * k + 1165279) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3495838) = 2654208 * k + 1747919 := by
    unfold C
    simp [show (5308416 * k + 3495838) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1747919) = 7962624 * k + 5243758 := by
    unfold C
    simp [show (2654208 * k + 1747919) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5243758) = 3981312 * k + 2621879 := by
    unfold C
    simp [show (7962624 * k + 5243758) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2621879) = 11943936 * k + 7865638 := by
    unfold C
    simp [show (3981312 * k + 2621879) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7865638) = 5971968 * k + 3932819 := by
    unfold C
    simp [show (11943936 * k + 7865638) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3932819) = 17915904 * k + 11798458 := by
    unfold C
    simp [show (5971968 * k + 3932819) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11798458) = 8957952 * k + 5899229 := by
    unfold C
    simp [show (17915904 * k + 11798458) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5899229) = 26873856 * k + 17697688 := by
    unfold C
    simp [show (8957952 * k + 5899229) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17697688) = 13436928 * k + 8848844 := by
    unfold C
    simp [show (26873856 * k + 17697688) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8848844) = 6718464 * k + 4424422 := by
    unfold C
    simp [show (13436928 * k + 8848844) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4424422) = 3359232 * k + 2212211 := by
    unfold C
    simp [show (6718464 * k + 4424422) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2212211) = 10077696 * k + 6636634 := by
    unfold C
    simp [show (3359232 * k + 2212211) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6636634) = 5038848 * k + 3318317 := by
    unfold C
    simp [show (10077696 * k + 6636634) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3318317) = 15116544 * k + 9954952 := by
    unfold C
    simp [show (5038848 * k + 3318317) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9954952) = 7558272 * k + 4977476 := by
    unfold C
    simp [show (15116544 * k + 9954952) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4977476) = 3779136 * k + 2488738 := by
    unfold C
    simp [show (7558272 * k + 4977476) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2488738) = 1889568 * k + 1244369 := by
    unfold C
    simp [show (3779136 * k + 2488738) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1244369) = 5668704 * k + 3733108 := by
    unfold C
    simp [show (1889568 * k + 1244369) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3733108) = 2834352 * k + 1866554 := by
    unfold C
    simp [show (5668704 * k + 3733108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1866554) = 1417176 * k + 933277 := by
    unfold C
    simp [show (2834352 * k + 1866554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 933277) = 4251528 * k + 2799832 := by
    unfold C
    simp [show (1417176 * k + 933277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2799832) = 2125764 * k + 1399916 := by
    unfold C
    simp [show (4251528 * k + 2799832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1399916) = 1062882 * k + 699958 := by
    unfold C
    simp [show (2125764 * k + 1399916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 699958) = 531441 * k + 349979 := by
    unfold C
    simp [show (1062882 * k + 699958) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 690535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 690535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_690663 : ∀ k : Nat,
    iterate (1048576 * k + 690663) 32 = 531441 * k + 350044 ∧
      531441 * k + 350044 < 1048576 * k + 690663 := by
  intro k
  have h1 : C (1048576 * k + 690663) = 3145728 * k + 2071990 := by
    unfold C
    simp [show (1048576 * k + 690663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2071990) = 1572864 * k + 1035995 := by
    unfold C
    simp [show (3145728 * k + 2071990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1035995) = 4718592 * k + 3107986 := by
    unfold C
    simp [show (1572864 * k + 1035995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3107986) = 2359296 * k + 1553993 := by
    unfold C
    simp [show (4718592 * k + 3107986) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1553993) = 7077888 * k + 4661980 := by
    unfold C
    simp [show (2359296 * k + 1553993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4661980) = 3538944 * k + 2330990 := by
    unfold C
    simp [show (7077888 * k + 4661980) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2330990) = 1769472 * k + 1165495 := by
    unfold C
    simp [show (3538944 * k + 2330990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1165495) = 5308416 * k + 3496486 := by
    unfold C
    simp [show (1769472 * k + 1165495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3496486) = 2654208 * k + 1748243 := by
    unfold C
    simp [show (5308416 * k + 3496486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1748243) = 7962624 * k + 5244730 := by
    unfold C
    simp [show (2654208 * k + 1748243) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5244730) = 3981312 * k + 2622365 := by
    unfold C
    simp [show (7962624 * k + 5244730) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2622365) = 11943936 * k + 7867096 := by
    unfold C
    simp [show (3981312 * k + 2622365) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7867096) = 5971968 * k + 3933548 := by
    unfold C
    simp [show (11943936 * k + 7867096) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3933548) = 2985984 * k + 1966774 := by
    unfold C
    simp [show (5971968 * k + 3933548) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1966774) = 1492992 * k + 983387 := by
    unfold C
    simp [show (2985984 * k + 1966774) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 983387) = 4478976 * k + 2950162 := by
    unfold C
    simp [show (1492992 * k + 983387) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2950162) = 2239488 * k + 1475081 := by
    unfold C
    simp [show (4478976 * k + 2950162) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1475081) = 6718464 * k + 4425244 := by
    unfold C
    simp [show (2239488 * k + 1475081) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4425244) = 3359232 * k + 2212622 := by
    unfold C
    simp [show (6718464 * k + 4425244) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2212622) = 1679616 * k + 1106311 := by
    unfold C
    simp [show (3359232 * k + 2212622) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1106311) = 5038848 * k + 3318934 := by
    unfold C
    simp [show (1679616 * k + 1106311) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3318934) = 2519424 * k + 1659467 := by
    unfold C
    simp [show (5038848 * k + 3318934) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1659467) = 7558272 * k + 4978402 := by
    unfold C
    simp [show (2519424 * k + 1659467) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4978402) = 3779136 * k + 2489201 := by
    unfold C
    simp [show (7558272 * k + 4978402) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2489201) = 11337408 * k + 7467604 := by
    unfold C
    simp [show (3779136 * k + 2489201) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7467604) = 5668704 * k + 3733802 := by
    unfold C
    simp [show (11337408 * k + 7467604) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3733802) = 2834352 * k + 1866901 := by
    unfold C
    simp [show (5668704 * k + 3733802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1866901) = 8503056 * k + 5600704 := by
    unfold C
    simp [show (2834352 * k + 1866901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5600704) = 4251528 * k + 2800352 := by
    unfold C
    simp [show (8503056 * k + 5600704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2800352) = 2125764 * k + 1400176 := by
    unfold C
    simp [show (4251528 * k + 2800352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1400176) = 1062882 * k + 700088 := by
    unfold C
    simp [show (2125764 * k + 1400176) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 700088) = 531441 * k + 350044 := by
    unfold C
    simp [show (1062882 * k + 700088) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 690663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 690663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_691663 : ∀ k : Nat,
    iterate (1048576 * k + 691663) 32 = 531441 * k + 350551 ∧
      531441 * k + 350551 < 1048576 * k + 691663 := by
  intro k
  have h1 : C (1048576 * k + 691663) = 3145728 * k + 2074990 := by
    unfold C
    simp [show (1048576 * k + 691663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2074990) = 1572864 * k + 1037495 := by
    unfold C
    simp [show (3145728 * k + 2074990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1037495) = 4718592 * k + 3112486 := by
    unfold C
    simp [show (1572864 * k + 1037495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3112486) = 2359296 * k + 1556243 := by
    unfold C
    simp [show (4718592 * k + 3112486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1556243) = 7077888 * k + 4668730 := by
    unfold C
    simp [show (2359296 * k + 1556243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4668730) = 3538944 * k + 2334365 := by
    unfold C
    simp [show (7077888 * k + 4668730) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2334365) = 10616832 * k + 7003096 := by
    unfold C
    simp [show (3538944 * k + 2334365) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7003096) = 5308416 * k + 3501548 := by
    unfold C
    simp [show (10616832 * k + 7003096) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3501548) = 2654208 * k + 1750774 := by
    unfold C
    simp [show (5308416 * k + 3501548) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1750774) = 1327104 * k + 875387 := by
    unfold C
    simp [show (2654208 * k + 1750774) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 875387) = 3981312 * k + 2626162 := by
    unfold C
    simp [show (1327104 * k + 875387) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2626162) = 1990656 * k + 1313081 := by
    unfold C
    simp [show (3981312 * k + 2626162) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1313081) = 5971968 * k + 3939244 := by
    unfold C
    simp [show (1990656 * k + 1313081) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3939244) = 2985984 * k + 1969622 := by
    unfold C
    simp [show (5971968 * k + 3939244) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1969622) = 1492992 * k + 984811 := by
    unfold C
    simp [show (2985984 * k + 1969622) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 984811) = 4478976 * k + 2954434 := by
    unfold C
    simp [show (1492992 * k + 984811) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2954434) = 2239488 * k + 1477217 := by
    unfold C
    simp [show (4478976 * k + 2954434) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1477217) = 6718464 * k + 4431652 := by
    unfold C
    simp [show (2239488 * k + 1477217) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4431652) = 3359232 * k + 2215826 := by
    unfold C
    simp [show (6718464 * k + 4431652) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2215826) = 1679616 * k + 1107913 := by
    unfold C
    simp [show (3359232 * k + 2215826) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1107913) = 5038848 * k + 3323740 := by
    unfold C
    simp [show (1679616 * k + 1107913) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3323740) = 2519424 * k + 1661870 := by
    unfold C
    simp [show (5038848 * k + 3323740) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1661870) = 1259712 * k + 830935 := by
    unfold C
    simp [show (2519424 * k + 1661870) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 830935) = 3779136 * k + 2492806 := by
    unfold C
    simp [show (1259712 * k + 830935) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2492806) = 1889568 * k + 1246403 := by
    unfold C
    simp [show (3779136 * k + 2492806) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1246403) = 5668704 * k + 3739210 := by
    unfold C
    simp [show (1889568 * k + 1246403) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3739210) = 2834352 * k + 1869605 := by
    unfold C
    simp [show (5668704 * k + 3739210) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1869605) = 8503056 * k + 5608816 := by
    unfold C
    simp [show (2834352 * k + 1869605) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5608816) = 4251528 * k + 2804408 := by
    unfold C
    simp [show (8503056 * k + 5608816) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2804408) = 2125764 * k + 1402204 := by
    unfold C
    simp [show (4251528 * k + 2804408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1402204) = 1062882 * k + 701102 := by
    unfold C
    simp [show (2125764 * k + 1402204) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 701102) = 531441 * k + 350551 := by
    unfold C
    simp [show (1062882 * k + 701102) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 691663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 691663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_691823 : ∀ k : Nat,
    iterate (1048576 * k + 691823) 32 = 531441 * k + 350632 ∧
      531441 * k + 350632 < 1048576 * k + 691823 := by
  intro k
  have h1 : C (1048576 * k + 691823) = 3145728 * k + 2075470 := by
    unfold C
    simp [show (1048576 * k + 691823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2075470) = 1572864 * k + 1037735 := by
    unfold C
    simp [show (3145728 * k + 2075470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1037735) = 4718592 * k + 3113206 := by
    unfold C
    simp [show (1572864 * k + 1037735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3113206) = 2359296 * k + 1556603 := by
    unfold C
    simp [show (4718592 * k + 3113206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1556603) = 7077888 * k + 4669810 := by
    unfold C
    simp [show (2359296 * k + 1556603) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4669810) = 3538944 * k + 2334905 := by
    unfold C
    simp [show (7077888 * k + 4669810) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2334905) = 10616832 * k + 7004716 := by
    unfold C
    simp [show (3538944 * k + 2334905) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7004716) = 5308416 * k + 3502358 := by
    unfold C
    simp [show (10616832 * k + 7004716) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3502358) = 2654208 * k + 1751179 := by
    unfold C
    simp [show (5308416 * k + 3502358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1751179) = 7962624 * k + 5253538 := by
    unfold C
    simp [show (2654208 * k + 1751179) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5253538) = 3981312 * k + 2626769 := by
    unfold C
    simp [show (7962624 * k + 5253538) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2626769) = 11943936 * k + 7880308 := by
    unfold C
    simp [show (3981312 * k + 2626769) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7880308) = 5971968 * k + 3940154 := by
    unfold C
    simp [show (11943936 * k + 7880308) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3940154) = 2985984 * k + 1970077 := by
    unfold C
    simp [show (5971968 * k + 3940154) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1970077) = 8957952 * k + 5910232 := by
    unfold C
    simp [show (2985984 * k + 1970077) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5910232) = 4478976 * k + 2955116 := by
    unfold C
    simp [show (8957952 * k + 5910232) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2955116) = 2239488 * k + 1477558 := by
    unfold C
    simp [show (4478976 * k + 2955116) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1477558) = 1119744 * k + 738779 := by
    unfold C
    simp [show (2239488 * k + 1477558) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 738779) = 3359232 * k + 2216338 := by
    unfold C
    simp [show (1119744 * k + 738779) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2216338) = 1679616 * k + 1108169 := by
    unfold C
    simp [show (3359232 * k + 2216338) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1108169) = 5038848 * k + 3324508 := by
    unfold C
    simp [show (1679616 * k + 1108169) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3324508) = 2519424 * k + 1662254 := by
    unfold C
    simp [show (5038848 * k + 3324508) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1662254) = 1259712 * k + 831127 := by
    unfold C
    simp [show (2519424 * k + 1662254) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 831127) = 3779136 * k + 2493382 := by
    unfold C
    simp [show (1259712 * k + 831127) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2493382) = 1889568 * k + 1246691 := by
    unfold C
    simp [show (3779136 * k + 2493382) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1246691) = 5668704 * k + 3740074 := by
    unfold C
    simp [show (1889568 * k + 1246691) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3740074) = 2834352 * k + 1870037 := by
    unfold C
    simp [show (5668704 * k + 3740074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1870037) = 8503056 * k + 5610112 := by
    unfold C
    simp [show (2834352 * k + 1870037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5610112) = 4251528 * k + 2805056 := by
    unfold C
    simp [show (8503056 * k + 5610112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2805056) = 2125764 * k + 1402528 := by
    unfold C
    simp [show (4251528 * k + 2805056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1402528) = 1062882 * k + 701264 := by
    unfold C
    simp [show (2125764 * k + 1402528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 701264) = 531441 * k + 350632 := by
    unfold C
    simp [show (1062882 * k + 701264) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 691823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 691823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_692463 : ∀ k : Nat,
    iterate (1048576 * k + 692463) 32 = 531441 * k + 350956 ∧
      531441 * k + 350956 < 1048576 * k + 692463 := by
  intro k
  have h1 : C (1048576 * k + 692463) = 3145728 * k + 2077390 := by
    unfold C
    simp [show (1048576 * k + 692463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2077390) = 1572864 * k + 1038695 := by
    unfold C
    simp [show (3145728 * k + 2077390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1038695) = 4718592 * k + 3116086 := by
    unfold C
    simp [show (1572864 * k + 1038695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3116086) = 2359296 * k + 1558043 := by
    unfold C
    simp [show (4718592 * k + 3116086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1558043) = 7077888 * k + 4674130 := by
    unfold C
    simp [show (2359296 * k + 1558043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4674130) = 3538944 * k + 2337065 := by
    unfold C
    simp [show (7077888 * k + 4674130) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2337065) = 10616832 * k + 7011196 := by
    unfold C
    simp [show (3538944 * k + 2337065) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7011196) = 5308416 * k + 3505598 := by
    unfold C
    simp [show (10616832 * k + 7011196) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3505598) = 2654208 * k + 1752799 := by
    unfold C
    simp [show (5308416 * k + 3505598) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1752799) = 7962624 * k + 5258398 := by
    unfold C
    simp [show (2654208 * k + 1752799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5258398) = 3981312 * k + 2629199 := by
    unfold C
    simp [show (7962624 * k + 5258398) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2629199) = 11943936 * k + 7887598 := by
    unfold C
    simp [show (3981312 * k + 2629199) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7887598) = 5971968 * k + 3943799 := by
    unfold C
    simp [show (11943936 * k + 7887598) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3943799) = 17915904 * k + 11831398 := by
    unfold C
    simp [show (5971968 * k + 3943799) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11831398) = 8957952 * k + 5915699 := by
    unfold C
    simp [show (17915904 * k + 11831398) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5915699) = 26873856 * k + 17747098 := by
    unfold C
    simp [show (8957952 * k + 5915699) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17747098) = 13436928 * k + 8873549 := by
    unfold C
    simp [show (26873856 * k + 17747098) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8873549) = 40310784 * k + 26620648 := by
    unfold C
    simp [show (13436928 * k + 8873549) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 26620648) = 20155392 * k + 13310324 := by
    unfold C
    simp [show (40310784 * k + 26620648) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13310324) = 10077696 * k + 6655162 := by
    unfold C
    simp [show (20155392 * k + 13310324) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6655162) = 5038848 * k + 3327581 := by
    unfold C
    simp [show (10077696 * k + 6655162) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3327581) = 15116544 * k + 9982744 := by
    unfold C
    simp [show (5038848 * k + 3327581) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9982744) = 7558272 * k + 4991372 := by
    unfold C
    simp [show (15116544 * k + 9982744) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4991372) = 3779136 * k + 2495686 := by
    unfold C
    simp [show (7558272 * k + 4991372) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2495686) = 1889568 * k + 1247843 := by
    unfold C
    simp [show (3779136 * k + 2495686) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1247843) = 5668704 * k + 3743530 := by
    unfold C
    simp [show (1889568 * k + 1247843) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3743530) = 2834352 * k + 1871765 := by
    unfold C
    simp [show (5668704 * k + 3743530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1871765) = 8503056 * k + 5615296 := by
    unfold C
    simp [show (2834352 * k + 1871765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5615296) = 4251528 * k + 2807648 := by
    unfold C
    simp [show (8503056 * k + 5615296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2807648) = 2125764 * k + 1403824 := by
    unfold C
    simp [show (4251528 * k + 2807648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1403824) = 1062882 * k + 701912 := by
    unfold C
    simp [show (2125764 * k + 1403824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 701912) = 531441 * k + 350956 := by
    unfold C
    simp [show (1062882 * k + 701912) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 692463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 692463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_694335 : ∀ k : Nat,
    iterate (1048576 * k + 694335) 32 = 531441 * k + 351905 ∧
      531441 * k + 351905 < 1048576 * k + 694335 := by
  intro k
  have h1 : C (1048576 * k + 694335) = 3145728 * k + 2083006 := by
    unfold C
    simp [show (1048576 * k + 694335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2083006) = 1572864 * k + 1041503 := by
    unfold C
    simp [show (3145728 * k + 2083006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1041503) = 4718592 * k + 3124510 := by
    unfold C
    simp [show (1572864 * k + 1041503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3124510) = 2359296 * k + 1562255 := by
    unfold C
    simp [show (4718592 * k + 3124510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1562255) = 7077888 * k + 4686766 := by
    unfold C
    simp [show (2359296 * k + 1562255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4686766) = 3538944 * k + 2343383 := by
    unfold C
    simp [show (7077888 * k + 4686766) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2343383) = 10616832 * k + 7030150 := by
    unfold C
    simp [show (3538944 * k + 2343383) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7030150) = 5308416 * k + 3515075 := by
    unfold C
    simp [show (10616832 * k + 7030150) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3515075) = 15925248 * k + 10545226 := by
    unfold C
    simp [show (5308416 * k + 3515075) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10545226) = 7962624 * k + 5272613 := by
    unfold C
    simp [show (15925248 * k + 10545226) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5272613) = 23887872 * k + 15817840 := by
    unfold C
    simp [show (7962624 * k + 5272613) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15817840) = 11943936 * k + 7908920 := by
    unfold C
    simp [show (23887872 * k + 15817840) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7908920) = 5971968 * k + 3954460 := by
    unfold C
    simp [show (11943936 * k + 7908920) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3954460) = 2985984 * k + 1977230 := by
    unfold C
    simp [show (5971968 * k + 3954460) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1977230) = 1492992 * k + 988615 := by
    unfold C
    simp [show (2985984 * k + 1977230) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 988615) = 4478976 * k + 2965846 := by
    unfold C
    simp [show (1492992 * k + 988615) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2965846) = 2239488 * k + 1482923 := by
    unfold C
    simp [show (4478976 * k + 2965846) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1482923) = 6718464 * k + 4448770 := by
    unfold C
    simp [show (2239488 * k + 1482923) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4448770) = 3359232 * k + 2224385 := by
    unfold C
    simp [show (6718464 * k + 4448770) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2224385) = 10077696 * k + 6673156 := by
    unfold C
    simp [show (3359232 * k + 2224385) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6673156) = 5038848 * k + 3336578 := by
    unfold C
    simp [show (10077696 * k + 6673156) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3336578) = 2519424 * k + 1668289 := by
    unfold C
    simp [show (5038848 * k + 3336578) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1668289) = 7558272 * k + 5004868 := by
    unfold C
    simp [show (2519424 * k + 1668289) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5004868) = 3779136 * k + 2502434 := by
    unfold C
    simp [show (7558272 * k + 5004868) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2502434) = 1889568 * k + 1251217 := by
    unfold C
    simp [show (3779136 * k + 2502434) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1251217) = 5668704 * k + 3753652 := by
    unfold C
    simp [show (1889568 * k + 1251217) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3753652) = 2834352 * k + 1876826 := by
    unfold C
    simp [show (5668704 * k + 3753652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1876826) = 1417176 * k + 938413 := by
    unfold C
    simp [show (2834352 * k + 1876826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 938413) = 4251528 * k + 2815240 := by
    unfold C
    simp [show (1417176 * k + 938413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2815240) = 2125764 * k + 1407620 := by
    unfold C
    simp [show (4251528 * k + 2815240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1407620) = 1062882 * k + 703810 := by
    unfold C
    simp [show (2125764 * k + 1407620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 703810) = 531441 * k + 351905 := by
    unfold C
    simp [show (1062882 * k + 703810) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 694335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 694335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_694939 : ∀ k : Nat,
    iterate (1048576 * k + 694939) 32 = 531441 * k + 352211 ∧
      531441 * k + 352211 < 1048576 * k + 694939 := by
  intro k
  have h1 : C (1048576 * k + 694939) = 3145728 * k + 2084818 := by
    unfold C
    simp [show (1048576 * k + 694939) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2084818) = 1572864 * k + 1042409 := by
    unfold C
    simp [show (3145728 * k + 2084818) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1042409) = 4718592 * k + 3127228 := by
    unfold C
    simp [show (1572864 * k + 1042409) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3127228) = 2359296 * k + 1563614 := by
    unfold C
    simp [show (4718592 * k + 3127228) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1563614) = 1179648 * k + 781807 := by
    unfold C
    simp [show (2359296 * k + 1563614) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 781807) = 3538944 * k + 2345422 := by
    unfold C
    simp [show (1179648 * k + 781807) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2345422) = 1769472 * k + 1172711 := by
    unfold C
    simp [show (3538944 * k + 2345422) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1172711) = 5308416 * k + 3518134 := by
    unfold C
    simp [show (1769472 * k + 1172711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3518134) = 2654208 * k + 1759067 := by
    unfold C
    simp [show (5308416 * k + 3518134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1759067) = 7962624 * k + 5277202 := by
    unfold C
    simp [show (2654208 * k + 1759067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5277202) = 3981312 * k + 2638601 := by
    unfold C
    simp [show (7962624 * k + 5277202) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2638601) = 11943936 * k + 7915804 := by
    unfold C
    simp [show (3981312 * k + 2638601) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7915804) = 5971968 * k + 3957902 := by
    unfold C
    simp [show (11943936 * k + 7915804) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3957902) = 2985984 * k + 1978951 := by
    unfold C
    simp [show (5971968 * k + 3957902) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1978951) = 8957952 * k + 5936854 := by
    unfold C
    simp [show (2985984 * k + 1978951) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5936854) = 4478976 * k + 2968427 := by
    unfold C
    simp [show (8957952 * k + 5936854) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2968427) = 13436928 * k + 8905282 := by
    unfold C
    simp [show (4478976 * k + 2968427) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8905282) = 6718464 * k + 4452641 := by
    unfold C
    simp [show (13436928 * k + 8905282) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4452641) = 20155392 * k + 13357924 := by
    unfold C
    simp [show (6718464 * k + 4452641) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13357924) = 10077696 * k + 6678962 := by
    unfold C
    simp [show (20155392 * k + 13357924) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6678962) = 5038848 * k + 3339481 := by
    unfold C
    simp [show (10077696 * k + 6678962) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3339481) = 15116544 * k + 10018444 := by
    unfold C
    simp [show (5038848 * k + 3339481) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10018444) = 7558272 * k + 5009222 := by
    unfold C
    simp [show (15116544 * k + 10018444) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5009222) = 3779136 * k + 2504611 := by
    unfold C
    simp [show (7558272 * k + 5009222) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2504611) = 11337408 * k + 7513834 := by
    unfold C
    simp [show (3779136 * k + 2504611) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7513834) = 5668704 * k + 3756917 := by
    unfold C
    simp [show (11337408 * k + 7513834) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3756917) = 17006112 * k + 11270752 := by
    unfold C
    simp [show (5668704 * k + 3756917) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11270752) = 8503056 * k + 5635376 := by
    unfold C
    simp [show (17006112 * k + 11270752) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5635376) = 4251528 * k + 2817688 := by
    unfold C
    simp [show (8503056 * k + 5635376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2817688) = 2125764 * k + 1408844 := by
    unfold C
    simp [show (4251528 * k + 2817688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1408844) = 1062882 * k + 704422 := by
    unfold C
    simp [show (2125764 * k + 1408844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 704422) = 531441 * k + 352211 := by
    unfold C
    simp [show (1062882 * k + 704422) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 694939) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 694939)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard089
