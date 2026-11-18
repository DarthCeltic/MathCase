import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardL

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_16123 : ∀ k : Nat, iterate (32768 * k + 16123) 24 = 19683 * k + 9686 ∧ 19683 * k + 9686 < 32768 * k + 16123 := by
  intro k
  have h1 : C (32768 * k + 16123) = 98304 * k + 48370 := by
    unfold C
    simp [show (32768 * k + 16123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 48370) = 49152 * k + 24185 := by
    unfold C
    simp [show (98304 * k + 48370) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 24185) = 147456 * k + 72556 := by
    unfold C
    simp [show (49152 * k + 24185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 72556) = 73728 * k + 36278 := by
    unfold C
    simp [show (147456 * k + 72556) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 36278) = 36864 * k + 18139 := by
    unfold C
    simp [show (73728 * k + 36278) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 18139) = 110592 * k + 54418 := by
    unfold C
    simp [show (36864 * k + 18139) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 54418) = 55296 * k + 27209 := by
    unfold C
    simp [show (110592 * k + 54418) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 27209) = 165888 * k + 81628 := by
    unfold C
    simp [show (55296 * k + 27209) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 81628) = 82944 * k + 40814 := by
    unfold C
    simp [show (165888 * k + 81628) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 40814) = 41472 * k + 20407 := by
    unfold C
    simp [show (82944 * k + 40814) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 20407) = 124416 * k + 61222 := by
    unfold C
    simp [show (41472 * k + 20407) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 61222) = 62208 * k + 30611 := by
    unfold C
    simp [show (124416 * k + 61222) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 30611) = 186624 * k + 91834 := by
    unfold C
    simp [show (62208 * k + 30611) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 91834) = 93312 * k + 45917 := by
    unfold C
    simp [show (186624 * k + 91834) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 45917) = 279936 * k + 137752 := by
    unfold C
    simp [show (93312 * k + 45917) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 137752) = 139968 * k + 68876 := by
    unfold C
    simp [show (279936 * k + 137752) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 68876) = 69984 * k + 34438 := by
    unfold C
    simp [show (139968 * k + 68876) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 34438) = 34992 * k + 17219 := by
    unfold C
    simp [show (69984 * k + 34438) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 17219) = 104976 * k + 51658 := by
    unfold C
    simp [show (34992 * k + 17219) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 51658) = 52488 * k + 25829 := by
    unfold C
    simp [show (104976 * k + 51658) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 25829) = 157464 * k + 77488 := by
    unfold C
    simp [show (52488 * k + 25829) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 77488) = 78732 * k + 38744 := by
    unfold C
    simp [show (157464 * k + 77488) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 38744) = 39366 * k + 19372 := by
    unfold C
    simp [show (78732 * k + 38744) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 19372) = 19683 * k + 9686 := by
    unfold C
    simp [show (39366 * k + 19372) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 16123) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 16123)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_16287 : ∀ k : Nat, iterate (32768 * k + 16287) 24 = 19683 * k + 9784 ∧ 19683 * k + 9784 < 32768 * k + 16287 := by
  intro k
  have h1 : C (32768 * k + 16287) = 98304 * k + 48862 := by
    unfold C
    simp [show (32768 * k + 16287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 48862) = 49152 * k + 24431 := by
    unfold C
    simp [show (98304 * k + 48862) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 24431) = 147456 * k + 73294 := by
    unfold C
    simp [show (49152 * k + 24431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 73294) = 73728 * k + 36647 := by
    unfold C
    simp [show (147456 * k + 73294) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 36647) = 221184 * k + 109942 := by
    unfold C
    simp [show (73728 * k + 36647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 109942) = 110592 * k + 54971 := by
    unfold C
    simp [show (221184 * k + 109942) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 54971) = 331776 * k + 164914 := by
    unfold C
    simp [show (110592 * k + 54971) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 164914) = 165888 * k + 82457 := by
    unfold C
    simp [show (331776 * k + 164914) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 82457) = 497664 * k + 247372 := by
    unfold C
    simp [show (165888 * k + 82457) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 247372) = 248832 * k + 123686 := by
    unfold C
    simp [show (497664 * k + 247372) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 123686) = 124416 * k + 61843 := by
    unfold C
    simp [show (248832 * k + 123686) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 61843) = 373248 * k + 185530 := by
    unfold C
    simp [show (124416 * k + 61843) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 185530) = 186624 * k + 92765 := by
    unfold C
    simp [show (373248 * k + 185530) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 92765) = 559872 * k + 278296 := by
    unfold C
    simp [show (186624 * k + 92765) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 278296) = 279936 * k + 139148 := by
    unfold C
    simp [show (559872 * k + 278296) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 139148) = 139968 * k + 69574 := by
    unfold C
    simp [show (279936 * k + 139148) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 69574) = 69984 * k + 34787 := by
    unfold C
    simp [show (139968 * k + 69574) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 34787) = 209952 * k + 104362 := by
    unfold C
    simp [show (69984 * k + 34787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 104362) = 104976 * k + 52181 := by
    unfold C
    simp [show (209952 * k + 104362) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 52181) = 314928 * k + 156544 := by
    unfold C
    simp [show (104976 * k + 52181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 156544) = 157464 * k + 78272 := by
    unfold C
    simp [show (314928 * k + 156544) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 78272) = 78732 * k + 39136 := by
    unfold C
    simp [show (157464 * k + 78272) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 39136) = 39366 * k + 19568 := by
    unfold C
    simp [show (78732 * k + 39136) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 19568) = 19683 * k + 9784 := by
    unfold C
    simp [show (39366 * k + 19568) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 16287) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 16287)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_16743 : ∀ k : Nat, iterate (32768 * k + 16743) 24 = 19683 * k + 10058 ∧ 19683 * k + 10058 < 32768 * k + 16743 := by
  intro k
  have h1 : C (32768 * k + 16743) = 98304 * k + 50230 := by
    unfold C
    simp [show (32768 * k + 16743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 50230) = 49152 * k + 25115 := by
    unfold C
    simp [show (98304 * k + 50230) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 25115) = 147456 * k + 75346 := by
    unfold C
    simp [show (49152 * k + 25115) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 75346) = 73728 * k + 37673 := by
    unfold C
    simp [show (147456 * k + 75346) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 37673) = 221184 * k + 113020 := by
    unfold C
    simp [show (73728 * k + 37673) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 113020) = 110592 * k + 56510 := by
    unfold C
    simp [show (221184 * k + 113020) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 56510) = 55296 * k + 28255 := by
    unfold C
    simp [show (110592 * k + 56510) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 28255) = 165888 * k + 84766 := by
    unfold C
    simp [show (55296 * k + 28255) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 84766) = 82944 * k + 42383 := by
    unfold C
    simp [show (165888 * k + 84766) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 42383) = 248832 * k + 127150 := by
    unfold C
    simp [show (82944 * k + 42383) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 127150) = 124416 * k + 63575 := by
    unfold C
    simp [show (248832 * k + 127150) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 63575) = 373248 * k + 190726 := by
    unfold C
    simp [show (124416 * k + 63575) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 190726) = 186624 * k + 95363 := by
    unfold C
    simp [show (373248 * k + 190726) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 95363) = 559872 * k + 286090 := by
    unfold C
    simp [show (186624 * k + 95363) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 286090) = 279936 * k + 143045 := by
    unfold C
    simp [show (559872 * k + 286090) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 143045) = 839808 * k + 429136 := by
    unfold C
    simp [show (279936 * k + 143045) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 429136) = 419904 * k + 214568 := by
    unfold C
    simp [show (839808 * k + 429136) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 214568) = 209952 * k + 107284 := by
    unfold C
    simp [show (419904 * k + 214568) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 107284) = 104976 * k + 53642 := by
    unfold C
    simp [show (209952 * k + 107284) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 53642) = 52488 * k + 26821 := by
    unfold C
    simp [show (104976 * k + 53642) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 26821) = 157464 * k + 80464 := by
    unfold C
    simp [show (52488 * k + 26821) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 80464) = 78732 * k + 40232 := by
    unfold C
    simp [show (157464 * k + 80464) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 40232) = 39366 * k + 20116 := by
    unfold C
    simp [show (78732 * k + 40232) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 20116) = 19683 * k + 10058 := by
    unfold C
    simp [show (39366 * k + 20116) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 16743) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 16743)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_16863 : ∀ k : Nat, iterate (32768 * k + 16863) 24 = 19683 * k + 10130 ∧ 19683 * k + 10130 < 32768 * k + 16863 := by
  intro k
  have h1 : C (32768 * k + 16863) = 98304 * k + 50590 := by
    unfold C
    simp [show (32768 * k + 16863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 50590) = 49152 * k + 25295 := by
    unfold C
    simp [show (98304 * k + 50590) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 25295) = 147456 * k + 75886 := by
    unfold C
    simp [show (49152 * k + 25295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 75886) = 73728 * k + 37943 := by
    unfold C
    simp [show (147456 * k + 75886) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 37943) = 221184 * k + 113830 := by
    unfold C
    simp [show (73728 * k + 37943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 113830) = 110592 * k + 56915 := by
    unfold C
    simp [show (221184 * k + 113830) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 56915) = 331776 * k + 170746 := by
    unfold C
    simp [show (110592 * k + 56915) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 170746) = 165888 * k + 85373 := by
    unfold C
    simp [show (331776 * k + 170746) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 85373) = 497664 * k + 256120 := by
    unfold C
    simp [show (165888 * k + 85373) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 256120) = 248832 * k + 128060 := by
    unfold C
    simp [show (497664 * k + 256120) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 128060) = 124416 * k + 64030 := by
    unfold C
    simp [show (248832 * k + 128060) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 64030) = 62208 * k + 32015 := by
    unfold C
    simp [show (124416 * k + 64030) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 32015) = 186624 * k + 96046 := by
    unfold C
    simp [show (62208 * k + 32015) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 96046) = 93312 * k + 48023 := by
    unfold C
    simp [show (186624 * k + 96046) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 48023) = 279936 * k + 144070 := by
    unfold C
    simp [show (93312 * k + 48023) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 144070) = 139968 * k + 72035 := by
    unfold C
    simp [show (279936 * k + 144070) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 72035) = 419904 * k + 216106 := by
    unfold C
    simp [show (139968 * k + 72035) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 216106) = 209952 * k + 108053 := by
    unfold C
    simp [show (419904 * k + 216106) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 108053) = 629856 * k + 324160 := by
    unfold C
    simp [show (209952 * k + 108053) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 324160) = 314928 * k + 162080 := by
    unfold C
    simp [show (629856 * k + 324160) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 162080) = 157464 * k + 81040 := by
    unfold C
    simp [show (314928 * k + 162080) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 81040) = 78732 * k + 40520 := by
    unfold C
    simp [show (157464 * k + 81040) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 40520) = 39366 * k + 20260 := by
    unfold C
    simp [show (78732 * k + 40520) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 20260) = 19683 * k + 10130 := by
    unfold C
    simp [show (39366 * k + 20260) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 16863) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 16863)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_16871 : ∀ k : Nat, iterate (32768 * k + 16871) 24 = 19683 * k + 10135 ∧ 19683 * k + 10135 < 32768 * k + 16871 := by
  intro k
  have h1 : C (32768 * k + 16871) = 98304 * k + 50614 := by
    unfold C
    simp [show (32768 * k + 16871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 50614) = 49152 * k + 25307 := by
    unfold C
    simp [show (98304 * k + 50614) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 25307) = 147456 * k + 75922 := by
    unfold C
    simp [show (49152 * k + 25307) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 75922) = 73728 * k + 37961 := by
    unfold C
    simp [show (147456 * k + 75922) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 37961) = 221184 * k + 113884 := by
    unfold C
    simp [show (73728 * k + 37961) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 113884) = 110592 * k + 56942 := by
    unfold C
    simp [show (221184 * k + 113884) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 56942) = 55296 * k + 28471 := by
    unfold C
    simp [show (110592 * k + 56942) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 28471) = 165888 * k + 85414 := by
    unfold C
    simp [show (55296 * k + 28471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 85414) = 82944 * k + 42707 := by
    unfold C
    simp [show (165888 * k + 85414) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 42707) = 248832 * k + 128122 := by
    unfold C
    simp [show (82944 * k + 42707) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 128122) = 124416 * k + 64061 := by
    unfold C
    simp [show (248832 * k + 128122) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 64061) = 373248 * k + 192184 := by
    unfold C
    simp [show (124416 * k + 64061) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 192184) = 186624 * k + 96092 := by
    unfold C
    simp [show (373248 * k + 192184) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 96092) = 93312 * k + 48046 := by
    unfold C
    simp [show (186624 * k + 96092) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 48046) = 46656 * k + 24023 := by
    unfold C
    simp [show (93312 * k + 48046) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 24023) = 139968 * k + 72070 := by
    unfold C
    simp [show (46656 * k + 24023) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 72070) = 69984 * k + 36035 := by
    unfold C
    simp [show (139968 * k + 72070) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 36035) = 209952 * k + 108106 := by
    unfold C
    simp [show (69984 * k + 36035) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 108106) = 104976 * k + 54053 := by
    unfold C
    simp [show (209952 * k + 108106) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 54053) = 314928 * k + 162160 := by
    unfold C
    simp [show (104976 * k + 54053) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 162160) = 157464 * k + 81080 := by
    unfold C
    simp [show (314928 * k + 162160) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 81080) = 78732 * k + 40540 := by
    unfold C
    simp [show (157464 * k + 81080) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 40540) = 39366 * k + 20270 := by
    unfold C
    simp [show (78732 * k + 40540) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 20270) = 19683 * k + 10135 := by
    unfold C
    simp [show (39366 * k + 20270) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 16871) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 16871)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_17147 : ∀ k : Nat, iterate (32768 * k + 17147) 24 = 19683 * k + 10301 ∧ 19683 * k + 10301 < 32768 * k + 17147 := by
  intro k
  have h1 : C (32768 * k + 17147) = 98304 * k + 51442 := by
    unfold C
    simp [show (32768 * k + 17147) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 51442) = 49152 * k + 25721 := by
    unfold C
    simp [show (98304 * k + 51442) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 25721) = 147456 * k + 77164 := by
    unfold C
    simp [show (49152 * k + 25721) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 77164) = 73728 * k + 38582 := by
    unfold C
    simp [show (147456 * k + 77164) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 38582) = 36864 * k + 19291 := by
    unfold C
    simp [show (73728 * k + 38582) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 19291) = 110592 * k + 57874 := by
    unfold C
    simp [show (36864 * k + 19291) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 57874) = 55296 * k + 28937 := by
    unfold C
    simp [show (110592 * k + 57874) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 28937) = 165888 * k + 86812 := by
    unfold C
    simp [show (55296 * k + 28937) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 86812) = 82944 * k + 43406 := by
    unfold C
    simp [show (165888 * k + 86812) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 43406) = 41472 * k + 21703 := by
    unfold C
    simp [show (82944 * k + 43406) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 21703) = 124416 * k + 65110 := by
    unfold C
    simp [show (41472 * k + 21703) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 65110) = 62208 * k + 32555 := by
    unfold C
    simp [show (124416 * k + 65110) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 32555) = 186624 * k + 97666 := by
    unfold C
    simp [show (62208 * k + 32555) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 97666) = 93312 * k + 48833 := by
    unfold C
    simp [show (186624 * k + 97666) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 48833) = 279936 * k + 146500 := by
    unfold C
    simp [show (93312 * k + 48833) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 146500) = 139968 * k + 73250 := by
    unfold C
    simp [show (279936 * k + 146500) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 73250) = 69984 * k + 36625 := by
    unfold C
    simp [show (139968 * k + 73250) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 36625) = 209952 * k + 109876 := by
    unfold C
    simp [show (69984 * k + 36625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 109876) = 104976 * k + 54938 := by
    unfold C
    simp [show (209952 * k + 109876) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 54938) = 52488 * k + 27469 := by
    unfold C
    simp [show (104976 * k + 54938) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 27469) = 157464 * k + 82408 := by
    unfold C
    simp [show (52488 * k + 27469) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 82408) = 78732 * k + 41204 := by
    unfold C
    simp [show (157464 * k + 82408) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 41204) = 39366 * k + 20602 := by
    unfold C
    simp [show (78732 * k + 41204) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 20602) = 19683 * k + 10301 := by
    unfold C
    simp [show (39366 * k + 20602) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 17147) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 17147)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_17727 : ∀ k : Nat, iterate (32768 * k + 17727) 24 = 19683 * k + 10649 ∧ 19683 * k + 10649 < 32768 * k + 17727 := by
  intro k
  have h1 : C (32768 * k + 17727) = 98304 * k + 53182 := by
    unfold C
    simp [show (32768 * k + 17727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 53182) = 49152 * k + 26591 := by
    unfold C
    simp [show (98304 * k + 53182) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 26591) = 147456 * k + 79774 := by
    unfold C
    simp [show (49152 * k + 26591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 79774) = 73728 * k + 39887 := by
    unfold C
    simp [show (147456 * k + 79774) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 39887) = 221184 * k + 119662 := by
    unfold C
    simp [show (73728 * k + 39887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 119662) = 110592 * k + 59831 := by
    unfold C
    simp [show (221184 * k + 119662) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 59831) = 331776 * k + 179494 := by
    unfold C
    simp [show (110592 * k + 59831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 179494) = 165888 * k + 89747 := by
    unfold C
    simp [show (331776 * k + 179494) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 89747) = 497664 * k + 269242 := by
    unfold C
    simp [show (165888 * k + 89747) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 269242) = 248832 * k + 134621 := by
    unfold C
    simp [show (497664 * k + 269242) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 134621) = 746496 * k + 403864 := by
    unfold C
    simp [show (248832 * k + 134621) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 403864) = 373248 * k + 201932 := by
    unfold C
    simp [show (746496 * k + 403864) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 201932) = 186624 * k + 100966 := by
    unfold C
    simp [show (373248 * k + 201932) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 100966) = 93312 * k + 50483 := by
    unfold C
    simp [show (186624 * k + 100966) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 50483) = 279936 * k + 151450 := by
    unfold C
    simp [show (93312 * k + 50483) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 151450) = 139968 * k + 75725 := by
    unfold C
    simp [show (279936 * k + 151450) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 75725) = 419904 * k + 227176 := by
    unfold C
    simp [show (139968 * k + 75725) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 227176) = 209952 * k + 113588 := by
    unfold C
    simp [show (419904 * k + 227176) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 113588) = 104976 * k + 56794 := by
    unfold C
    simp [show (209952 * k + 113588) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 56794) = 52488 * k + 28397 := by
    unfold C
    simp [show (104976 * k + 56794) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 28397) = 157464 * k + 85192 := by
    unfold C
    simp [show (52488 * k + 28397) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 85192) = 78732 * k + 42596 := by
    unfold C
    simp [show (157464 * k + 85192) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 42596) = 39366 * k + 21298 := by
    unfold C
    simp [show (78732 * k + 42596) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 21298) = 19683 * k + 10649 := by
    unfold C
    simp [show (39366 * k + 21298) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 17727) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 17727)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_17735 : ∀ k : Nat, iterate (32768 * k + 17735) 24 = 19683 * k + 10654 ∧ 19683 * k + 10654 < 32768 * k + 17735 := by
  intro k
  have h1 : C (32768 * k + 17735) = 98304 * k + 53206 := by
    unfold C
    simp [show (32768 * k + 17735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 53206) = 49152 * k + 26603 := by
    unfold C
    simp [show (98304 * k + 53206) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 26603) = 147456 * k + 79810 := by
    unfold C
    simp [show (49152 * k + 26603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 79810) = 73728 * k + 39905 := by
    unfold C
    simp [show (147456 * k + 79810) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 39905) = 221184 * k + 119716 := by
    unfold C
    simp [show (73728 * k + 39905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 119716) = 110592 * k + 59858 := by
    unfold C
    simp [show (221184 * k + 119716) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 59858) = 55296 * k + 29929 := by
    unfold C
    simp [show (110592 * k + 59858) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 29929) = 165888 * k + 89788 := by
    unfold C
    simp [show (55296 * k + 29929) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 89788) = 82944 * k + 44894 := by
    unfold C
    simp [show (165888 * k + 89788) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 44894) = 41472 * k + 22447 := by
    unfold C
    simp [show (82944 * k + 44894) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 22447) = 124416 * k + 67342 := by
    unfold C
    simp [show (41472 * k + 22447) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 67342) = 62208 * k + 33671 := by
    unfold C
    simp [show (124416 * k + 67342) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 33671) = 186624 * k + 101014 := by
    unfold C
    simp [show (62208 * k + 33671) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 101014) = 93312 * k + 50507 := by
    unfold C
    simp [show (186624 * k + 101014) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 50507) = 279936 * k + 151522 := by
    unfold C
    simp [show (93312 * k + 50507) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 151522) = 139968 * k + 75761 := by
    unfold C
    simp [show (279936 * k + 151522) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 75761) = 419904 * k + 227284 := by
    unfold C
    simp [show (139968 * k + 75761) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 227284) = 209952 * k + 113642 := by
    unfold C
    simp [show (419904 * k + 227284) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 113642) = 104976 * k + 56821 := by
    unfold C
    simp [show (209952 * k + 113642) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 56821) = 314928 * k + 170464 := by
    unfold C
    simp [show (104976 * k + 56821) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 170464) = 157464 * k + 85232 := by
    unfold C
    simp [show (314928 * k + 170464) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 85232) = 78732 * k + 42616 := by
    unfold C
    simp [show (157464 * k + 85232) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 42616) = 39366 * k + 21308 := by
    unfold C
    simp [show (78732 * k + 42616) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 21308) = 19683 * k + 10654 := by
    unfold C
    simp [show (39366 * k + 21308) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 17735) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 17735)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_16123
#print axioms descent_mod32768_16287
#print axioms descent_mod32768_16743
#print axioms descent_mod32768_16863
#print axioms descent_mod32768_16871
#print axioms descent_mod32768_17147
#print axioms descent_mod32768_17727
#print axioms descent_mod32768_17735

end CollatzM15ShardL
