import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard088

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_679839 : ∀ k : Nat,
    iterate (1048576 * k + 679839) 32 = 531441 * k + 344558 ∧
      531441 * k + 344558 < 1048576 * k + 679839 := by
  intro k
  have h1 : C (1048576 * k + 679839) = 3145728 * k + 2039518 := by
    unfold C
    simp [show (1048576 * k + 679839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2039518) = 1572864 * k + 1019759 := by
    unfold C
    simp [show (3145728 * k + 2039518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1019759) = 4718592 * k + 3059278 := by
    unfold C
    simp [show (1572864 * k + 1019759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3059278) = 2359296 * k + 1529639 := by
    unfold C
    simp [show (4718592 * k + 3059278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1529639) = 7077888 * k + 4588918 := by
    unfold C
    simp [show (2359296 * k + 1529639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4588918) = 3538944 * k + 2294459 := by
    unfold C
    simp [show (7077888 * k + 4588918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2294459) = 10616832 * k + 6883378 := by
    unfold C
    simp [show (3538944 * k + 2294459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6883378) = 5308416 * k + 3441689 := by
    unfold C
    simp [show (10616832 * k + 6883378) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3441689) = 15925248 * k + 10325068 := by
    unfold C
    simp [show (5308416 * k + 3441689) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10325068) = 7962624 * k + 5162534 := by
    unfold C
    simp [show (15925248 * k + 10325068) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5162534) = 3981312 * k + 2581267 := by
    unfold C
    simp [show (7962624 * k + 5162534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2581267) = 11943936 * k + 7743802 := by
    unfold C
    simp [show (3981312 * k + 2581267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7743802) = 5971968 * k + 3871901 := by
    unfold C
    simp [show (11943936 * k + 7743802) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3871901) = 17915904 * k + 11615704 := by
    unfold C
    simp [show (5971968 * k + 3871901) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11615704) = 8957952 * k + 5807852 := by
    unfold C
    simp [show (17915904 * k + 11615704) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5807852) = 4478976 * k + 2903926 := by
    unfold C
    simp [show (8957952 * k + 5807852) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2903926) = 2239488 * k + 1451963 := by
    unfold C
    simp [show (4478976 * k + 2903926) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1451963) = 6718464 * k + 4355890 := by
    unfold C
    simp [show (2239488 * k + 1451963) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4355890) = 3359232 * k + 2177945 := by
    unfold C
    simp [show (6718464 * k + 4355890) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2177945) = 10077696 * k + 6533836 := by
    unfold C
    simp [show (3359232 * k + 2177945) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6533836) = 5038848 * k + 3266918 := by
    unfold C
    simp [show (10077696 * k + 6533836) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3266918) = 2519424 * k + 1633459 := by
    unfold C
    simp [show (5038848 * k + 3266918) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1633459) = 7558272 * k + 4900378 := by
    unfold C
    simp [show (2519424 * k + 1633459) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4900378) = 3779136 * k + 2450189 := by
    unfold C
    simp [show (7558272 * k + 4900378) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2450189) = 11337408 * k + 7350568 := by
    unfold C
    simp [show (3779136 * k + 2450189) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7350568) = 5668704 * k + 3675284 := by
    unfold C
    simp [show (11337408 * k + 7350568) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3675284) = 2834352 * k + 1837642 := by
    unfold C
    simp [show (5668704 * k + 3675284) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1837642) = 1417176 * k + 918821 := by
    unfold C
    simp [show (2834352 * k + 1837642) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 918821) = 4251528 * k + 2756464 := by
    unfold C
    simp [show (1417176 * k + 918821) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2756464) = 2125764 * k + 1378232 := by
    unfold C
    simp [show (4251528 * k + 2756464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1378232) = 1062882 * k + 689116 := by
    unfold C
    simp [show (2125764 * k + 1378232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 689116) = 531441 * k + 344558 := by
    unfold C
    simp [show (1062882 * k + 689116) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 679839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 679839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_680263 : ∀ k : Nat,
    iterate (1048576 * k + 680263) 32 = 531441 * k + 344773 ∧
      531441 * k + 344773 < 1048576 * k + 680263 := by
  intro k
  have h1 : C (1048576 * k + 680263) = 3145728 * k + 2040790 := by
    unfold C
    simp [show (1048576 * k + 680263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2040790) = 1572864 * k + 1020395 := by
    unfold C
    simp [show (3145728 * k + 2040790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1020395) = 4718592 * k + 3061186 := by
    unfold C
    simp [show (1572864 * k + 1020395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3061186) = 2359296 * k + 1530593 := by
    unfold C
    simp [show (4718592 * k + 3061186) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1530593) = 7077888 * k + 4591780 := by
    unfold C
    simp [show (2359296 * k + 1530593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4591780) = 3538944 * k + 2295890 := by
    unfold C
    simp [show (7077888 * k + 4591780) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2295890) = 1769472 * k + 1147945 := by
    unfold C
    simp [show (3538944 * k + 2295890) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1147945) = 5308416 * k + 3443836 := by
    unfold C
    simp [show (1769472 * k + 1147945) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3443836) = 2654208 * k + 1721918 := by
    unfold C
    simp [show (5308416 * k + 3443836) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1721918) = 1327104 * k + 860959 := by
    unfold C
    simp [show (2654208 * k + 1721918) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 860959) = 3981312 * k + 2582878 := by
    unfold C
    simp [show (1327104 * k + 860959) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2582878) = 1990656 * k + 1291439 := by
    unfold C
    simp [show (3981312 * k + 2582878) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1291439) = 5971968 * k + 3874318 := by
    unfold C
    simp [show (1990656 * k + 1291439) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3874318) = 2985984 * k + 1937159 := by
    unfold C
    simp [show (5971968 * k + 3874318) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1937159) = 8957952 * k + 5811478 := by
    unfold C
    simp [show (2985984 * k + 1937159) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5811478) = 4478976 * k + 2905739 := by
    unfold C
    simp [show (8957952 * k + 5811478) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2905739) = 13436928 * k + 8717218 := by
    unfold C
    simp [show (4478976 * k + 2905739) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8717218) = 6718464 * k + 4358609 := by
    unfold C
    simp [show (13436928 * k + 8717218) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4358609) = 20155392 * k + 13075828 := by
    unfold C
    simp [show (6718464 * k + 4358609) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13075828) = 10077696 * k + 6537914 := by
    unfold C
    simp [show (20155392 * k + 13075828) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6537914) = 5038848 * k + 3268957 := by
    unfold C
    simp [show (10077696 * k + 6537914) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3268957) = 15116544 * k + 9806872 := by
    unfold C
    simp [show (5038848 * k + 3268957) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9806872) = 7558272 * k + 4903436 := by
    unfold C
    simp [show (15116544 * k + 9806872) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4903436) = 3779136 * k + 2451718 := by
    unfold C
    simp [show (7558272 * k + 4903436) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2451718) = 1889568 * k + 1225859 := by
    unfold C
    simp [show (3779136 * k + 2451718) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1225859) = 5668704 * k + 3677578 := by
    unfold C
    simp [show (1889568 * k + 1225859) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3677578) = 2834352 * k + 1838789 := by
    unfold C
    simp [show (5668704 * k + 3677578) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1838789) = 8503056 * k + 5516368 := by
    unfold C
    simp [show (2834352 * k + 1838789) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5516368) = 4251528 * k + 2758184 := by
    unfold C
    simp [show (8503056 * k + 5516368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2758184) = 2125764 * k + 1379092 := by
    unfold C
    simp [show (4251528 * k + 2758184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1379092) = 1062882 * k + 689546 := by
    unfold C
    simp [show (2125764 * k + 1379092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 689546) = 531441 * k + 344773 := by
    unfold C
    simp [show (1062882 * k + 689546) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 680263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 680263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_680431 : ∀ k : Nat,
    iterate (1048576 * k + 680431) 32 = 531441 * k + 344858 ∧
      531441 * k + 344858 < 1048576 * k + 680431 := by
  intro k
  have h1 : C (1048576 * k + 680431) = 3145728 * k + 2041294 := by
    unfold C
    simp [show (1048576 * k + 680431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2041294) = 1572864 * k + 1020647 := by
    unfold C
    simp [show (3145728 * k + 2041294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1020647) = 4718592 * k + 3061942 := by
    unfold C
    simp [show (1572864 * k + 1020647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3061942) = 2359296 * k + 1530971 := by
    unfold C
    simp [show (4718592 * k + 3061942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1530971) = 7077888 * k + 4592914 := by
    unfold C
    simp [show (2359296 * k + 1530971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4592914) = 3538944 * k + 2296457 := by
    unfold C
    simp [show (7077888 * k + 4592914) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2296457) = 10616832 * k + 6889372 := by
    unfold C
    simp [show (3538944 * k + 2296457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6889372) = 5308416 * k + 3444686 := by
    unfold C
    simp [show (10616832 * k + 6889372) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3444686) = 2654208 * k + 1722343 := by
    unfold C
    simp [show (5308416 * k + 3444686) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1722343) = 7962624 * k + 5167030 := by
    unfold C
    simp [show (2654208 * k + 1722343) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5167030) = 3981312 * k + 2583515 := by
    unfold C
    simp [show (7962624 * k + 5167030) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2583515) = 11943936 * k + 7750546 := by
    unfold C
    simp [show (3981312 * k + 2583515) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7750546) = 5971968 * k + 3875273 := by
    unfold C
    simp [show (11943936 * k + 7750546) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3875273) = 17915904 * k + 11625820 := by
    unfold C
    simp [show (5971968 * k + 3875273) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11625820) = 8957952 * k + 5812910 := by
    unfold C
    simp [show (17915904 * k + 11625820) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5812910) = 4478976 * k + 2906455 := by
    unfold C
    simp [show (8957952 * k + 5812910) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2906455) = 13436928 * k + 8719366 := by
    unfold C
    simp [show (4478976 * k + 2906455) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8719366) = 6718464 * k + 4359683 := by
    unfold C
    simp [show (13436928 * k + 8719366) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4359683) = 20155392 * k + 13079050 := by
    unfold C
    simp [show (6718464 * k + 4359683) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13079050) = 10077696 * k + 6539525 := by
    unfold C
    simp [show (20155392 * k + 13079050) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6539525) = 30233088 * k + 19618576 := by
    unfold C
    simp [show (10077696 * k + 6539525) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19618576) = 15116544 * k + 9809288 := by
    unfold C
    simp [show (30233088 * k + 19618576) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9809288) = 7558272 * k + 4904644 := by
    unfold C
    simp [show (15116544 * k + 9809288) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4904644) = 3779136 * k + 2452322 := by
    unfold C
    simp [show (7558272 * k + 4904644) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2452322) = 1889568 * k + 1226161 := by
    unfold C
    simp [show (3779136 * k + 2452322) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1226161) = 5668704 * k + 3678484 := by
    unfold C
    simp [show (1889568 * k + 1226161) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3678484) = 2834352 * k + 1839242 := by
    unfold C
    simp [show (5668704 * k + 3678484) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1839242) = 1417176 * k + 919621 := by
    unfold C
    simp [show (2834352 * k + 1839242) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 919621) = 4251528 * k + 2758864 := by
    unfold C
    simp [show (1417176 * k + 919621) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2758864) = 2125764 * k + 1379432 := by
    unfold C
    simp [show (4251528 * k + 2758864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1379432) = 1062882 * k + 689716 := by
    unfold C
    simp [show (2125764 * k + 1379432) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 689716) = 531441 * k + 344858 := by
    unfold C
    simp [show (1062882 * k + 689716) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 680431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 680431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_680795 : ∀ k : Nat,
    iterate (1048576 * k + 680795) 32 = 531441 * k + 345043 ∧
      531441 * k + 345043 < 1048576 * k + 680795 := by
  intro k
  have h1 : C (1048576 * k + 680795) = 3145728 * k + 2042386 := by
    unfold C
    simp [show (1048576 * k + 680795) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2042386) = 1572864 * k + 1021193 := by
    unfold C
    simp [show (3145728 * k + 2042386) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1021193) = 4718592 * k + 3063580 := by
    unfold C
    simp [show (1572864 * k + 1021193) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3063580) = 2359296 * k + 1531790 := by
    unfold C
    simp [show (4718592 * k + 3063580) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1531790) = 1179648 * k + 765895 := by
    unfold C
    simp [show (2359296 * k + 1531790) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 765895) = 3538944 * k + 2297686 := by
    unfold C
    simp [show (1179648 * k + 765895) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2297686) = 1769472 * k + 1148843 := by
    unfold C
    simp [show (3538944 * k + 2297686) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1148843) = 5308416 * k + 3446530 := by
    unfold C
    simp [show (1769472 * k + 1148843) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3446530) = 2654208 * k + 1723265 := by
    unfold C
    simp [show (5308416 * k + 3446530) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1723265) = 7962624 * k + 5169796 := by
    unfold C
    simp [show (2654208 * k + 1723265) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5169796) = 3981312 * k + 2584898 := by
    unfold C
    simp [show (7962624 * k + 5169796) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2584898) = 1990656 * k + 1292449 := by
    unfold C
    simp [show (3981312 * k + 2584898) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1292449) = 5971968 * k + 3877348 := by
    unfold C
    simp [show (1990656 * k + 1292449) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3877348) = 2985984 * k + 1938674 := by
    unfold C
    simp [show (5971968 * k + 3877348) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1938674) = 1492992 * k + 969337 := by
    unfold C
    simp [show (2985984 * k + 1938674) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 969337) = 4478976 * k + 2908012 := by
    unfold C
    simp [show (1492992 * k + 969337) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2908012) = 2239488 * k + 1454006 := by
    unfold C
    simp [show (4478976 * k + 2908012) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1454006) = 1119744 * k + 727003 := by
    unfold C
    simp [show (2239488 * k + 1454006) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 727003) = 3359232 * k + 2181010 := by
    unfold C
    simp [show (1119744 * k + 727003) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2181010) = 1679616 * k + 1090505 := by
    unfold C
    simp [show (3359232 * k + 2181010) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1090505) = 5038848 * k + 3271516 := by
    unfold C
    simp [show (1679616 * k + 1090505) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3271516) = 2519424 * k + 1635758 := by
    unfold C
    simp [show (5038848 * k + 3271516) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1635758) = 1259712 * k + 817879 := by
    unfold C
    simp [show (2519424 * k + 1635758) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 817879) = 3779136 * k + 2453638 := by
    unfold C
    simp [show (1259712 * k + 817879) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2453638) = 1889568 * k + 1226819 := by
    unfold C
    simp [show (3779136 * k + 2453638) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1226819) = 5668704 * k + 3680458 := by
    unfold C
    simp [show (1889568 * k + 1226819) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3680458) = 2834352 * k + 1840229 := by
    unfold C
    simp [show (5668704 * k + 3680458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1840229) = 8503056 * k + 5520688 := by
    unfold C
    simp [show (2834352 * k + 1840229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5520688) = 4251528 * k + 2760344 := by
    unfold C
    simp [show (8503056 * k + 5520688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2760344) = 2125764 * k + 1380172 := by
    unfold C
    simp [show (4251528 * k + 2760344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1380172) = 1062882 * k + 690086 := by
    unfold C
    simp [show (2125764 * k + 1380172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 690086) = 531441 * k + 345043 := by
    unfold C
    simp [show (1062882 * k + 690086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 680795) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 680795)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_681115 : ∀ k : Nat,
    iterate (1048576 * k + 681115) 32 = 531441 * k + 345205 ∧
      531441 * k + 345205 < 1048576 * k + 681115 := by
  intro k
  have h1 : C (1048576 * k + 681115) = 3145728 * k + 2043346 := by
    unfold C
    simp [show (1048576 * k + 681115) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2043346) = 1572864 * k + 1021673 := by
    unfold C
    simp [show (3145728 * k + 2043346) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1021673) = 4718592 * k + 3065020 := by
    unfold C
    simp [show (1572864 * k + 1021673) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3065020) = 2359296 * k + 1532510 := by
    unfold C
    simp [show (4718592 * k + 3065020) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1532510) = 1179648 * k + 766255 := by
    unfold C
    simp [show (2359296 * k + 1532510) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 766255) = 3538944 * k + 2298766 := by
    unfold C
    simp [show (1179648 * k + 766255) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2298766) = 1769472 * k + 1149383 := by
    unfold C
    simp [show (3538944 * k + 2298766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1149383) = 5308416 * k + 3448150 := by
    unfold C
    simp [show (1769472 * k + 1149383) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3448150) = 2654208 * k + 1724075 := by
    unfold C
    simp [show (5308416 * k + 3448150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1724075) = 7962624 * k + 5172226 := by
    unfold C
    simp [show (2654208 * k + 1724075) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5172226) = 3981312 * k + 2586113 := by
    unfold C
    simp [show (7962624 * k + 5172226) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2586113) = 11943936 * k + 7758340 := by
    unfold C
    simp [show (3981312 * k + 2586113) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7758340) = 5971968 * k + 3879170 := by
    unfold C
    simp [show (11943936 * k + 7758340) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3879170) = 2985984 * k + 1939585 := by
    unfold C
    simp [show (5971968 * k + 3879170) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1939585) = 8957952 * k + 5818756 := by
    unfold C
    simp [show (2985984 * k + 1939585) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5818756) = 4478976 * k + 2909378 := by
    unfold C
    simp [show (8957952 * k + 5818756) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2909378) = 2239488 * k + 1454689 := by
    unfold C
    simp [show (4478976 * k + 2909378) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1454689) = 6718464 * k + 4364068 := by
    unfold C
    simp [show (2239488 * k + 1454689) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4364068) = 3359232 * k + 2182034 := by
    unfold C
    simp [show (6718464 * k + 4364068) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2182034) = 1679616 * k + 1091017 := by
    unfold C
    simp [show (3359232 * k + 2182034) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1091017) = 5038848 * k + 3273052 := by
    unfold C
    simp [show (1679616 * k + 1091017) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3273052) = 2519424 * k + 1636526 := by
    unfold C
    simp [show (5038848 * k + 3273052) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1636526) = 1259712 * k + 818263 := by
    unfold C
    simp [show (2519424 * k + 1636526) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 818263) = 3779136 * k + 2454790 := by
    unfold C
    simp [show (1259712 * k + 818263) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2454790) = 1889568 * k + 1227395 := by
    unfold C
    simp [show (3779136 * k + 2454790) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1227395) = 5668704 * k + 3682186 := by
    unfold C
    simp [show (1889568 * k + 1227395) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3682186) = 2834352 * k + 1841093 := by
    unfold C
    simp [show (5668704 * k + 3682186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1841093) = 8503056 * k + 5523280 := by
    unfold C
    simp [show (2834352 * k + 1841093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5523280) = 4251528 * k + 2761640 := by
    unfold C
    simp [show (8503056 * k + 5523280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2761640) = 2125764 * k + 1380820 := by
    unfold C
    simp [show (4251528 * k + 2761640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1380820) = 1062882 * k + 690410 := by
    unfold C
    simp [show (2125764 * k + 1380820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 690410) = 531441 * k + 345205 := by
    unfold C
    simp [show (1062882 * k + 690410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 681115) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 681115)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_681199 : ∀ k : Nat,
    iterate (1048576 * k + 681199) 32 = 531441 * k + 345247 ∧
      531441 * k + 345247 < 1048576 * k + 681199 := by
  intro k
  have h1 : C (1048576 * k + 681199) = 3145728 * k + 2043598 := by
    unfold C
    simp [show (1048576 * k + 681199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2043598) = 1572864 * k + 1021799 := by
    unfold C
    simp [show (3145728 * k + 2043598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1021799) = 4718592 * k + 3065398 := by
    unfold C
    simp [show (1572864 * k + 1021799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3065398) = 2359296 * k + 1532699 := by
    unfold C
    simp [show (4718592 * k + 3065398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1532699) = 7077888 * k + 4598098 := by
    unfold C
    simp [show (2359296 * k + 1532699) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4598098) = 3538944 * k + 2299049 := by
    unfold C
    simp [show (7077888 * k + 4598098) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2299049) = 10616832 * k + 6897148 := by
    unfold C
    simp [show (3538944 * k + 2299049) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6897148) = 5308416 * k + 3448574 := by
    unfold C
    simp [show (10616832 * k + 6897148) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3448574) = 2654208 * k + 1724287 := by
    unfold C
    simp [show (5308416 * k + 3448574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1724287) = 7962624 * k + 5172862 := by
    unfold C
    simp [show (2654208 * k + 1724287) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5172862) = 3981312 * k + 2586431 := by
    unfold C
    simp [show (7962624 * k + 5172862) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2586431) = 11943936 * k + 7759294 := by
    unfold C
    simp [show (3981312 * k + 2586431) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7759294) = 5971968 * k + 3879647 := by
    unfold C
    simp [show (11943936 * k + 7759294) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3879647) = 17915904 * k + 11638942 := by
    unfold C
    simp [show (5971968 * k + 3879647) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11638942) = 8957952 * k + 5819471 := by
    unfold C
    simp [show (17915904 * k + 11638942) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5819471) = 26873856 * k + 17458414 := by
    unfold C
    simp [show (8957952 * k + 5819471) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17458414) = 13436928 * k + 8729207 := by
    unfold C
    simp [show (26873856 * k + 17458414) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8729207) = 40310784 * k + 26187622 := by
    unfold C
    simp [show (13436928 * k + 8729207) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 26187622) = 20155392 * k + 13093811 := by
    unfold C
    simp [show (40310784 * k + 26187622) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13093811) = 60466176 * k + 39281434 := by
    unfold C
    simp [show (20155392 * k + 13093811) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 39281434) = 30233088 * k + 19640717 := by
    unfold C
    simp [show (60466176 * k + 39281434) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 19640717) = 90699264 * k + 58922152 := by
    unfold C
    simp [show (30233088 * k + 19640717) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 58922152) = 45349632 * k + 29461076 := by
    unfold C
    simp [show (90699264 * k + 58922152) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 29461076) = 22674816 * k + 14730538 := by
    unfold C
    simp [show (45349632 * k + 29461076) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 14730538) = 11337408 * k + 7365269 := by
    unfold C
    simp [show (22674816 * k + 14730538) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7365269) = 34012224 * k + 22095808 := by
    unfold C
    simp [show (11337408 * k + 7365269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22095808) = 17006112 * k + 11047904 := by
    unfold C
    simp [show (34012224 * k + 22095808) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11047904) = 8503056 * k + 5523952 := by
    unfold C
    simp [show (17006112 * k + 11047904) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5523952) = 4251528 * k + 2761976 := by
    unfold C
    simp [show (8503056 * k + 5523952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2761976) = 2125764 * k + 1380988 := by
    unfold C
    simp [show (4251528 * k + 2761976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1380988) = 1062882 * k + 690494 := by
    unfold C
    simp [show (2125764 * k + 1380988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 690494) = 531441 * k + 345247 := by
    unfold C
    simp [show (1062882 * k + 690494) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 681199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 681199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_681287 : ∀ k : Nat,
    iterate (1048576 * k + 681287) 32 = 531441 * k + 345292 ∧
      531441 * k + 345292 < 1048576 * k + 681287 := by
  intro k
  have h1 : C (1048576 * k + 681287) = 3145728 * k + 2043862 := by
    unfold C
    simp [show (1048576 * k + 681287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2043862) = 1572864 * k + 1021931 := by
    unfold C
    simp [show (3145728 * k + 2043862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1021931) = 4718592 * k + 3065794 := by
    unfold C
    simp [show (1572864 * k + 1021931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3065794) = 2359296 * k + 1532897 := by
    unfold C
    simp [show (4718592 * k + 3065794) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1532897) = 7077888 * k + 4598692 := by
    unfold C
    simp [show (2359296 * k + 1532897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4598692) = 3538944 * k + 2299346 := by
    unfold C
    simp [show (7077888 * k + 4598692) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2299346) = 1769472 * k + 1149673 := by
    unfold C
    simp [show (3538944 * k + 2299346) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1149673) = 5308416 * k + 3449020 := by
    unfold C
    simp [show (1769472 * k + 1149673) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3449020) = 2654208 * k + 1724510 := by
    unfold C
    simp [show (5308416 * k + 3449020) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1724510) = 1327104 * k + 862255 := by
    unfold C
    simp [show (2654208 * k + 1724510) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 862255) = 3981312 * k + 2586766 := by
    unfold C
    simp [show (1327104 * k + 862255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2586766) = 1990656 * k + 1293383 := by
    unfold C
    simp [show (3981312 * k + 2586766) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1293383) = 5971968 * k + 3880150 := by
    unfold C
    simp [show (1990656 * k + 1293383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3880150) = 2985984 * k + 1940075 := by
    unfold C
    simp [show (5971968 * k + 3880150) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1940075) = 8957952 * k + 5820226 := by
    unfold C
    simp [show (2985984 * k + 1940075) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5820226) = 4478976 * k + 2910113 := by
    unfold C
    simp [show (8957952 * k + 5820226) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2910113) = 13436928 * k + 8730340 := by
    unfold C
    simp [show (4478976 * k + 2910113) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8730340) = 6718464 * k + 4365170 := by
    unfold C
    simp [show (13436928 * k + 8730340) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4365170) = 3359232 * k + 2182585 := by
    unfold C
    simp [show (6718464 * k + 4365170) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2182585) = 10077696 * k + 6547756 := by
    unfold C
    simp [show (3359232 * k + 2182585) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6547756) = 5038848 * k + 3273878 := by
    unfold C
    simp [show (10077696 * k + 6547756) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3273878) = 2519424 * k + 1636939 := by
    unfold C
    simp [show (5038848 * k + 3273878) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1636939) = 7558272 * k + 4910818 := by
    unfold C
    simp [show (2519424 * k + 1636939) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4910818) = 3779136 * k + 2455409 := by
    unfold C
    simp [show (7558272 * k + 4910818) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2455409) = 11337408 * k + 7366228 := by
    unfold C
    simp [show (3779136 * k + 2455409) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7366228) = 5668704 * k + 3683114 := by
    unfold C
    simp [show (11337408 * k + 7366228) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3683114) = 2834352 * k + 1841557 := by
    unfold C
    simp [show (5668704 * k + 3683114) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1841557) = 8503056 * k + 5524672 := by
    unfold C
    simp [show (2834352 * k + 1841557) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5524672) = 4251528 * k + 2762336 := by
    unfold C
    simp [show (8503056 * k + 5524672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2762336) = 2125764 * k + 1381168 := by
    unfold C
    simp [show (4251528 * k + 2762336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1381168) = 1062882 * k + 690584 := by
    unfold C
    simp [show (2125764 * k + 1381168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 690584) = 531441 * k + 345292 := by
    unfold C
    simp [show (1062882 * k + 690584) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 681287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 681287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_681319 : ∀ k : Nat,
    iterate (1048576 * k + 681319) 32 = 531441 * k + 345308 ∧
      531441 * k + 345308 < 1048576 * k + 681319 := by
  intro k
  have h1 : C (1048576 * k + 681319) = 3145728 * k + 2043958 := by
    unfold C
    simp [show (1048576 * k + 681319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2043958) = 1572864 * k + 1021979 := by
    unfold C
    simp [show (3145728 * k + 2043958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1021979) = 4718592 * k + 3065938 := by
    unfold C
    simp [show (1572864 * k + 1021979) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3065938) = 2359296 * k + 1532969 := by
    unfold C
    simp [show (4718592 * k + 3065938) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1532969) = 7077888 * k + 4598908 := by
    unfold C
    simp [show (2359296 * k + 1532969) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4598908) = 3538944 * k + 2299454 := by
    unfold C
    simp [show (7077888 * k + 4598908) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2299454) = 1769472 * k + 1149727 := by
    unfold C
    simp [show (3538944 * k + 2299454) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1149727) = 5308416 * k + 3449182 := by
    unfold C
    simp [show (1769472 * k + 1149727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3449182) = 2654208 * k + 1724591 := by
    unfold C
    simp [show (5308416 * k + 3449182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1724591) = 7962624 * k + 5173774 := by
    unfold C
    simp [show (2654208 * k + 1724591) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5173774) = 3981312 * k + 2586887 := by
    unfold C
    simp [show (7962624 * k + 5173774) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2586887) = 11943936 * k + 7760662 := by
    unfold C
    simp [show (3981312 * k + 2586887) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7760662) = 5971968 * k + 3880331 := by
    unfold C
    simp [show (11943936 * k + 7760662) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3880331) = 17915904 * k + 11640994 := by
    unfold C
    simp [show (5971968 * k + 3880331) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11640994) = 8957952 * k + 5820497 := by
    unfold C
    simp [show (17915904 * k + 11640994) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5820497) = 26873856 * k + 17461492 := by
    unfold C
    simp [show (8957952 * k + 5820497) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17461492) = 13436928 * k + 8730746 := by
    unfold C
    simp [show (26873856 * k + 17461492) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8730746) = 6718464 * k + 4365373 := by
    unfold C
    simp [show (13436928 * k + 8730746) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4365373) = 20155392 * k + 13096120 := by
    unfold C
    simp [show (6718464 * k + 4365373) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13096120) = 10077696 * k + 6548060 := by
    unfold C
    simp [show (20155392 * k + 13096120) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6548060) = 5038848 * k + 3274030 := by
    unfold C
    simp [show (10077696 * k + 6548060) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3274030) = 2519424 * k + 1637015 := by
    unfold C
    simp [show (5038848 * k + 3274030) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1637015) = 7558272 * k + 4911046 := by
    unfold C
    simp [show (2519424 * k + 1637015) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4911046) = 3779136 * k + 2455523 := by
    unfold C
    simp [show (7558272 * k + 4911046) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2455523) = 11337408 * k + 7366570 := by
    unfold C
    simp [show (3779136 * k + 2455523) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7366570) = 5668704 * k + 3683285 := by
    unfold C
    simp [show (11337408 * k + 7366570) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3683285) = 17006112 * k + 11049856 := by
    unfold C
    simp [show (5668704 * k + 3683285) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11049856) = 8503056 * k + 5524928 := by
    unfold C
    simp [show (17006112 * k + 11049856) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5524928) = 4251528 * k + 2762464 := by
    unfold C
    simp [show (8503056 * k + 5524928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2762464) = 2125764 * k + 1381232 := by
    unfold C
    simp [show (4251528 * k + 2762464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1381232) = 1062882 * k + 690616 := by
    unfold C
    simp [show (2125764 * k + 1381232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 690616) = 531441 * k + 345308 := by
    unfold C
    simp [show (1062882 * k + 690616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 681319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 681319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_681631 : ∀ k : Nat,
    iterate (1048576 * k + 681631) 32 = 531441 * k + 345466 ∧
      531441 * k + 345466 < 1048576 * k + 681631 := by
  intro k
  have h1 : C (1048576 * k + 681631) = 3145728 * k + 2044894 := by
    unfold C
    simp [show (1048576 * k + 681631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2044894) = 1572864 * k + 1022447 := by
    unfold C
    simp [show (3145728 * k + 2044894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1022447) = 4718592 * k + 3067342 := by
    unfold C
    simp [show (1572864 * k + 1022447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3067342) = 2359296 * k + 1533671 := by
    unfold C
    simp [show (4718592 * k + 3067342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1533671) = 7077888 * k + 4601014 := by
    unfold C
    simp [show (2359296 * k + 1533671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4601014) = 3538944 * k + 2300507 := by
    unfold C
    simp [show (7077888 * k + 4601014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2300507) = 10616832 * k + 6901522 := by
    unfold C
    simp [show (3538944 * k + 2300507) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6901522) = 5308416 * k + 3450761 := by
    unfold C
    simp [show (10616832 * k + 6901522) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3450761) = 15925248 * k + 10352284 := by
    unfold C
    simp [show (5308416 * k + 3450761) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10352284) = 7962624 * k + 5176142 := by
    unfold C
    simp [show (15925248 * k + 10352284) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5176142) = 3981312 * k + 2588071 := by
    unfold C
    simp [show (7962624 * k + 5176142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2588071) = 11943936 * k + 7764214 := by
    unfold C
    simp [show (3981312 * k + 2588071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7764214) = 5971968 * k + 3882107 := by
    unfold C
    simp [show (11943936 * k + 7764214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3882107) = 17915904 * k + 11646322 := by
    unfold C
    simp [show (5971968 * k + 3882107) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11646322) = 8957952 * k + 5823161 := by
    unfold C
    simp [show (17915904 * k + 11646322) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5823161) = 26873856 * k + 17469484 := by
    unfold C
    simp [show (8957952 * k + 5823161) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17469484) = 13436928 * k + 8734742 := by
    unfold C
    simp [show (26873856 * k + 17469484) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8734742) = 6718464 * k + 4367371 := by
    unfold C
    simp [show (13436928 * k + 8734742) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4367371) = 20155392 * k + 13102114 := by
    unfold C
    simp [show (6718464 * k + 4367371) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13102114) = 10077696 * k + 6551057 := by
    unfold C
    simp [show (20155392 * k + 13102114) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6551057) = 30233088 * k + 19653172 := by
    unfold C
    simp [show (10077696 * k + 6551057) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19653172) = 15116544 * k + 9826586 := by
    unfold C
    simp [show (30233088 * k + 19653172) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9826586) = 7558272 * k + 4913293 := by
    unfold C
    simp [show (15116544 * k + 9826586) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4913293) = 22674816 * k + 14739880 := by
    unfold C
    simp [show (7558272 * k + 4913293) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14739880) = 11337408 * k + 7369940 := by
    unfold C
    simp [show (22674816 * k + 14739880) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7369940) = 5668704 * k + 3684970 := by
    unfold C
    simp [show (11337408 * k + 7369940) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3684970) = 2834352 * k + 1842485 := by
    unfold C
    simp [show (5668704 * k + 3684970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1842485) = 8503056 * k + 5527456 := by
    unfold C
    simp [show (2834352 * k + 1842485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5527456) = 4251528 * k + 2763728 := by
    unfold C
    simp [show (8503056 * k + 5527456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2763728) = 2125764 * k + 1381864 := by
    unfold C
    simp [show (4251528 * k + 2763728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1381864) = 1062882 * k + 690932 := by
    unfold C
    simp [show (2125764 * k + 1381864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 690932) = 531441 * k + 345466 := by
    unfold C
    simp [show (1062882 * k + 690932) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 681631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 681631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_682047 : ∀ k : Nat,
    iterate (1048576 * k + 682047) 32 = 531441 * k + 345677 ∧
      531441 * k + 345677 < 1048576 * k + 682047 := by
  intro k
  have h1 : C (1048576 * k + 682047) = 3145728 * k + 2046142 := by
    unfold C
    simp [show (1048576 * k + 682047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2046142) = 1572864 * k + 1023071 := by
    unfold C
    simp [show (3145728 * k + 2046142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1023071) = 4718592 * k + 3069214 := by
    unfold C
    simp [show (1572864 * k + 1023071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3069214) = 2359296 * k + 1534607 := by
    unfold C
    simp [show (4718592 * k + 3069214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1534607) = 7077888 * k + 4603822 := by
    unfold C
    simp [show (2359296 * k + 1534607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4603822) = 3538944 * k + 2301911 := by
    unfold C
    simp [show (7077888 * k + 4603822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2301911) = 10616832 * k + 6905734 := by
    unfold C
    simp [show (3538944 * k + 2301911) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6905734) = 5308416 * k + 3452867 := by
    unfold C
    simp [show (10616832 * k + 6905734) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3452867) = 15925248 * k + 10358602 := by
    unfold C
    simp [show (5308416 * k + 3452867) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10358602) = 7962624 * k + 5179301 := by
    unfold C
    simp [show (15925248 * k + 10358602) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5179301) = 23887872 * k + 15537904 := by
    unfold C
    simp [show (7962624 * k + 5179301) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15537904) = 11943936 * k + 7768952 := by
    unfold C
    simp [show (23887872 * k + 15537904) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7768952) = 5971968 * k + 3884476 := by
    unfold C
    simp [show (11943936 * k + 7768952) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3884476) = 2985984 * k + 1942238 := by
    unfold C
    simp [show (5971968 * k + 3884476) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1942238) = 1492992 * k + 971119 := by
    unfold C
    simp [show (2985984 * k + 1942238) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 971119) = 4478976 * k + 2913358 := by
    unfold C
    simp [show (1492992 * k + 971119) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2913358) = 2239488 * k + 1456679 := by
    unfold C
    simp [show (4478976 * k + 2913358) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1456679) = 6718464 * k + 4370038 := by
    unfold C
    simp [show (2239488 * k + 1456679) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4370038) = 3359232 * k + 2185019 := by
    unfold C
    simp [show (6718464 * k + 4370038) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2185019) = 10077696 * k + 6555058 := by
    unfold C
    simp [show (3359232 * k + 2185019) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6555058) = 5038848 * k + 3277529 := by
    unfold C
    simp [show (10077696 * k + 6555058) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3277529) = 15116544 * k + 9832588 := by
    unfold C
    simp [show (5038848 * k + 3277529) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9832588) = 7558272 * k + 4916294 := by
    unfold C
    simp [show (15116544 * k + 9832588) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4916294) = 3779136 * k + 2458147 := by
    unfold C
    simp [show (7558272 * k + 4916294) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2458147) = 11337408 * k + 7374442 := by
    unfold C
    simp [show (3779136 * k + 2458147) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7374442) = 5668704 * k + 3687221 := by
    unfold C
    simp [show (11337408 * k + 7374442) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3687221) = 17006112 * k + 11061664 := by
    unfold C
    simp [show (5668704 * k + 3687221) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11061664) = 8503056 * k + 5530832 := by
    unfold C
    simp [show (17006112 * k + 11061664) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5530832) = 4251528 * k + 2765416 := by
    unfold C
    simp [show (8503056 * k + 5530832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2765416) = 2125764 * k + 1382708 := by
    unfold C
    simp [show (4251528 * k + 2765416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1382708) = 1062882 * k + 691354 := by
    unfold C
    simp [show (2125764 * k + 1382708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 691354) = 531441 * k + 345677 := by
    unfold C
    simp [show (1062882 * k + 691354) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 682047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 682047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_682223 : ∀ k : Nat,
    iterate (1048576 * k + 682223) 32 = 531441 * k + 345766 ∧
      531441 * k + 345766 < 1048576 * k + 682223 := by
  intro k
  have h1 : C (1048576 * k + 682223) = 3145728 * k + 2046670 := by
    unfold C
    simp [show (1048576 * k + 682223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2046670) = 1572864 * k + 1023335 := by
    unfold C
    simp [show (3145728 * k + 2046670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1023335) = 4718592 * k + 3070006 := by
    unfold C
    simp [show (1572864 * k + 1023335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3070006) = 2359296 * k + 1535003 := by
    unfold C
    simp [show (4718592 * k + 3070006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1535003) = 7077888 * k + 4605010 := by
    unfold C
    simp [show (2359296 * k + 1535003) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4605010) = 3538944 * k + 2302505 := by
    unfold C
    simp [show (7077888 * k + 4605010) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2302505) = 10616832 * k + 6907516 := by
    unfold C
    simp [show (3538944 * k + 2302505) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6907516) = 5308416 * k + 3453758 := by
    unfold C
    simp [show (10616832 * k + 6907516) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3453758) = 2654208 * k + 1726879 := by
    unfold C
    simp [show (5308416 * k + 3453758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1726879) = 7962624 * k + 5180638 := by
    unfold C
    simp [show (2654208 * k + 1726879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5180638) = 3981312 * k + 2590319 := by
    unfold C
    simp [show (7962624 * k + 5180638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2590319) = 11943936 * k + 7770958 := by
    unfold C
    simp [show (3981312 * k + 2590319) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7770958) = 5971968 * k + 3885479 := by
    unfold C
    simp [show (11943936 * k + 7770958) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3885479) = 17915904 * k + 11656438 := by
    unfold C
    simp [show (5971968 * k + 3885479) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11656438) = 8957952 * k + 5828219 := by
    unfold C
    simp [show (17915904 * k + 11656438) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5828219) = 26873856 * k + 17484658 := by
    unfold C
    simp [show (8957952 * k + 5828219) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17484658) = 13436928 * k + 8742329 := by
    unfold C
    simp [show (26873856 * k + 17484658) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8742329) = 40310784 * k + 26226988 := by
    unfold C
    simp [show (13436928 * k + 8742329) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 26226988) = 20155392 * k + 13113494 := by
    unfold C
    simp [show (40310784 * k + 26226988) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13113494) = 10077696 * k + 6556747 := by
    unfold C
    simp [show (20155392 * k + 13113494) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6556747) = 30233088 * k + 19670242 := by
    unfold C
    simp [show (10077696 * k + 6556747) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19670242) = 15116544 * k + 9835121 := by
    unfold C
    simp [show (30233088 * k + 19670242) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9835121) = 45349632 * k + 29505364 := by
    unfold C
    simp [show (15116544 * k + 9835121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 29505364) = 22674816 * k + 14752682 := by
    unfold C
    simp [show (45349632 * k + 29505364) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 14752682) = 11337408 * k + 7376341 := by
    unfold C
    simp [show (22674816 * k + 14752682) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7376341) = 34012224 * k + 22129024 := by
    unfold C
    simp [show (11337408 * k + 7376341) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22129024) = 17006112 * k + 11064512 := by
    unfold C
    simp [show (34012224 * k + 22129024) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11064512) = 8503056 * k + 5532256 := by
    unfold C
    simp [show (17006112 * k + 11064512) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5532256) = 4251528 * k + 2766128 := by
    unfold C
    simp [show (8503056 * k + 5532256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2766128) = 2125764 * k + 1383064 := by
    unfold C
    simp [show (4251528 * k + 2766128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1383064) = 1062882 * k + 691532 := by
    unfold C
    simp [show (2125764 * k + 1383064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 691532) = 531441 * k + 345766 := by
    unfold C
    simp [show (1062882 * k + 691532) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 682223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 682223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_682607 : ∀ k : Nat,
    iterate (1048576 * k + 682607) 32 = 531441 * k + 345961 ∧
      531441 * k + 345961 < 1048576 * k + 682607 := by
  intro k
  have h1 : C (1048576 * k + 682607) = 3145728 * k + 2047822 := by
    unfold C
    simp [show (1048576 * k + 682607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2047822) = 1572864 * k + 1023911 := by
    unfold C
    simp [show (3145728 * k + 2047822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1023911) = 4718592 * k + 3071734 := by
    unfold C
    simp [show (1572864 * k + 1023911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3071734) = 2359296 * k + 1535867 := by
    unfold C
    simp [show (4718592 * k + 3071734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1535867) = 7077888 * k + 4607602 := by
    unfold C
    simp [show (2359296 * k + 1535867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4607602) = 3538944 * k + 2303801 := by
    unfold C
    simp [show (7077888 * k + 4607602) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2303801) = 10616832 * k + 6911404 := by
    unfold C
    simp [show (3538944 * k + 2303801) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6911404) = 5308416 * k + 3455702 := by
    unfold C
    simp [show (10616832 * k + 6911404) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3455702) = 2654208 * k + 1727851 := by
    unfold C
    simp [show (5308416 * k + 3455702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1727851) = 7962624 * k + 5183554 := by
    unfold C
    simp [show (2654208 * k + 1727851) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5183554) = 3981312 * k + 2591777 := by
    unfold C
    simp [show (7962624 * k + 5183554) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2591777) = 11943936 * k + 7775332 := by
    unfold C
    simp [show (3981312 * k + 2591777) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7775332) = 5971968 * k + 3887666 := by
    unfold C
    simp [show (11943936 * k + 7775332) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3887666) = 2985984 * k + 1943833 := by
    unfold C
    simp [show (5971968 * k + 3887666) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1943833) = 8957952 * k + 5831500 := by
    unfold C
    simp [show (2985984 * k + 1943833) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5831500) = 4478976 * k + 2915750 := by
    unfold C
    simp [show (8957952 * k + 5831500) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2915750) = 2239488 * k + 1457875 := by
    unfold C
    simp [show (4478976 * k + 2915750) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1457875) = 6718464 * k + 4373626 := by
    unfold C
    simp [show (2239488 * k + 1457875) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4373626) = 3359232 * k + 2186813 := by
    unfold C
    simp [show (6718464 * k + 4373626) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2186813) = 10077696 * k + 6560440 := by
    unfold C
    simp [show (3359232 * k + 2186813) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6560440) = 5038848 * k + 3280220 := by
    unfold C
    simp [show (10077696 * k + 6560440) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3280220) = 2519424 * k + 1640110 := by
    unfold C
    simp [show (5038848 * k + 3280220) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1640110) = 1259712 * k + 820055 := by
    unfold C
    simp [show (2519424 * k + 1640110) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 820055) = 3779136 * k + 2460166 := by
    unfold C
    simp [show (1259712 * k + 820055) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2460166) = 1889568 * k + 1230083 := by
    unfold C
    simp [show (3779136 * k + 2460166) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1230083) = 5668704 * k + 3690250 := by
    unfold C
    simp [show (1889568 * k + 1230083) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3690250) = 2834352 * k + 1845125 := by
    unfold C
    simp [show (5668704 * k + 3690250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1845125) = 8503056 * k + 5535376 := by
    unfold C
    simp [show (2834352 * k + 1845125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5535376) = 4251528 * k + 2767688 := by
    unfold C
    simp [show (8503056 * k + 5535376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2767688) = 2125764 * k + 1383844 := by
    unfold C
    simp [show (4251528 * k + 2767688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1383844) = 1062882 * k + 691922 := by
    unfold C
    simp [show (2125764 * k + 1383844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 691922) = 531441 * k + 345961 := by
    unfold C
    simp [show (1062882 * k + 691922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 682607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 682607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_682779 : ∀ k : Nat,
    iterate (1048576 * k + 682779) 32 = 531441 * k + 346048 ∧
      531441 * k + 346048 < 1048576 * k + 682779 := by
  intro k
  have h1 : C (1048576 * k + 682779) = 3145728 * k + 2048338 := by
    unfold C
    simp [show (1048576 * k + 682779) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2048338) = 1572864 * k + 1024169 := by
    unfold C
    simp [show (3145728 * k + 2048338) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1024169) = 4718592 * k + 3072508 := by
    unfold C
    simp [show (1572864 * k + 1024169) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3072508) = 2359296 * k + 1536254 := by
    unfold C
    simp [show (4718592 * k + 3072508) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1536254) = 1179648 * k + 768127 := by
    unfold C
    simp [show (2359296 * k + 1536254) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 768127) = 3538944 * k + 2304382 := by
    unfold C
    simp [show (1179648 * k + 768127) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2304382) = 1769472 * k + 1152191 := by
    unfold C
    simp [show (3538944 * k + 2304382) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1152191) = 5308416 * k + 3456574 := by
    unfold C
    simp [show (1769472 * k + 1152191) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3456574) = 2654208 * k + 1728287 := by
    unfold C
    simp [show (5308416 * k + 3456574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1728287) = 7962624 * k + 5184862 := by
    unfold C
    simp [show (2654208 * k + 1728287) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5184862) = 3981312 * k + 2592431 := by
    unfold C
    simp [show (7962624 * k + 5184862) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2592431) = 11943936 * k + 7777294 := by
    unfold C
    simp [show (3981312 * k + 2592431) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7777294) = 5971968 * k + 3888647 := by
    unfold C
    simp [show (11943936 * k + 7777294) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3888647) = 17915904 * k + 11665942 := by
    unfold C
    simp [show (5971968 * k + 3888647) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11665942) = 8957952 * k + 5832971 := by
    unfold C
    simp [show (17915904 * k + 11665942) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5832971) = 26873856 * k + 17498914 := by
    unfold C
    simp [show (8957952 * k + 5832971) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17498914) = 13436928 * k + 8749457 := by
    unfold C
    simp [show (26873856 * k + 17498914) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8749457) = 40310784 * k + 26248372 := by
    unfold C
    simp [show (13436928 * k + 8749457) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 26248372) = 20155392 * k + 13124186 := by
    unfold C
    simp [show (40310784 * k + 26248372) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13124186) = 10077696 * k + 6562093 := by
    unfold C
    simp [show (20155392 * k + 13124186) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6562093) = 30233088 * k + 19686280 := by
    unfold C
    simp [show (10077696 * k + 6562093) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19686280) = 15116544 * k + 9843140 := by
    unfold C
    simp [show (30233088 * k + 19686280) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9843140) = 7558272 * k + 4921570 := by
    unfold C
    simp [show (15116544 * k + 9843140) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4921570) = 3779136 * k + 2460785 := by
    unfold C
    simp [show (7558272 * k + 4921570) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2460785) = 11337408 * k + 7382356 := by
    unfold C
    simp [show (3779136 * k + 2460785) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7382356) = 5668704 * k + 3691178 := by
    unfold C
    simp [show (11337408 * k + 7382356) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3691178) = 2834352 * k + 1845589 := by
    unfold C
    simp [show (5668704 * k + 3691178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1845589) = 8503056 * k + 5536768 := by
    unfold C
    simp [show (2834352 * k + 1845589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5536768) = 4251528 * k + 2768384 := by
    unfold C
    simp [show (8503056 * k + 5536768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2768384) = 2125764 * k + 1384192 := by
    unfold C
    simp [show (4251528 * k + 2768384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1384192) = 1062882 * k + 692096 := by
    unfold C
    simp [show (2125764 * k + 1384192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 692096) = 531441 * k + 346048 := by
    unfold C
    simp [show (1062882 * k + 692096) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 682779) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 682779)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_682863 : ∀ k : Nat,
    iterate (1048576 * k + 682863) 32 = 531441 * k + 346091 ∧
      531441 * k + 346091 < 1048576 * k + 682863 := by
  intro k
  have h1 : C (1048576 * k + 682863) = 3145728 * k + 2048590 := by
    unfold C
    simp [show (1048576 * k + 682863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2048590) = 1572864 * k + 1024295 := by
    unfold C
    simp [show (3145728 * k + 2048590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1024295) = 4718592 * k + 3072886 := by
    unfold C
    simp [show (1572864 * k + 1024295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3072886) = 2359296 * k + 1536443 := by
    unfold C
    simp [show (4718592 * k + 3072886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1536443) = 7077888 * k + 4609330 := by
    unfold C
    simp [show (2359296 * k + 1536443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4609330) = 3538944 * k + 2304665 := by
    unfold C
    simp [show (7077888 * k + 4609330) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2304665) = 10616832 * k + 6913996 := by
    unfold C
    simp [show (3538944 * k + 2304665) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6913996) = 5308416 * k + 3456998 := by
    unfold C
    simp [show (10616832 * k + 6913996) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3456998) = 2654208 * k + 1728499 := by
    unfold C
    simp [show (5308416 * k + 3456998) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1728499) = 7962624 * k + 5185498 := by
    unfold C
    simp [show (2654208 * k + 1728499) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5185498) = 3981312 * k + 2592749 := by
    unfold C
    simp [show (7962624 * k + 5185498) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2592749) = 11943936 * k + 7778248 := by
    unfold C
    simp [show (3981312 * k + 2592749) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7778248) = 5971968 * k + 3889124 := by
    unfold C
    simp [show (11943936 * k + 7778248) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3889124) = 2985984 * k + 1944562 := by
    unfold C
    simp [show (5971968 * k + 3889124) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1944562) = 1492992 * k + 972281 := by
    unfold C
    simp [show (2985984 * k + 1944562) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 972281) = 4478976 * k + 2916844 := by
    unfold C
    simp [show (1492992 * k + 972281) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2916844) = 2239488 * k + 1458422 := by
    unfold C
    simp [show (4478976 * k + 2916844) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1458422) = 1119744 * k + 729211 := by
    unfold C
    simp [show (2239488 * k + 1458422) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 729211) = 3359232 * k + 2187634 := by
    unfold C
    simp [show (1119744 * k + 729211) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2187634) = 1679616 * k + 1093817 := by
    unfold C
    simp [show (3359232 * k + 2187634) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1093817) = 5038848 * k + 3281452 := by
    unfold C
    simp [show (1679616 * k + 1093817) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3281452) = 2519424 * k + 1640726 := by
    unfold C
    simp [show (5038848 * k + 3281452) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1640726) = 1259712 * k + 820363 := by
    unfold C
    simp [show (2519424 * k + 1640726) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 820363) = 3779136 * k + 2461090 := by
    unfold C
    simp [show (1259712 * k + 820363) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2461090) = 1889568 * k + 1230545 := by
    unfold C
    simp [show (3779136 * k + 2461090) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1230545) = 5668704 * k + 3691636 := by
    unfold C
    simp [show (1889568 * k + 1230545) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3691636) = 2834352 * k + 1845818 := by
    unfold C
    simp [show (5668704 * k + 3691636) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1845818) = 1417176 * k + 922909 := by
    unfold C
    simp [show (2834352 * k + 1845818) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 922909) = 4251528 * k + 2768728 := by
    unfold C
    simp [show (1417176 * k + 922909) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2768728) = 2125764 * k + 1384364 := by
    unfold C
    simp [show (4251528 * k + 2768728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1384364) = 1062882 * k + 692182 := by
    unfold C
    simp [show (2125764 * k + 1384364) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 692182) = 531441 * k + 346091 := by
    unfold C
    simp [show (1062882 * k + 692182) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 682863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 682863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_683471 : ∀ k : Nat,
    iterate (1048576 * k + 683471) 32 = 531441 * k + 346399 ∧
      531441 * k + 346399 < 1048576 * k + 683471 := by
  intro k
  have h1 : C (1048576 * k + 683471) = 3145728 * k + 2050414 := by
    unfold C
    simp [show (1048576 * k + 683471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2050414) = 1572864 * k + 1025207 := by
    unfold C
    simp [show (3145728 * k + 2050414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1025207) = 4718592 * k + 3075622 := by
    unfold C
    simp [show (1572864 * k + 1025207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3075622) = 2359296 * k + 1537811 := by
    unfold C
    simp [show (4718592 * k + 3075622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1537811) = 7077888 * k + 4613434 := by
    unfold C
    simp [show (2359296 * k + 1537811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4613434) = 3538944 * k + 2306717 := by
    unfold C
    simp [show (7077888 * k + 4613434) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2306717) = 10616832 * k + 6920152 := by
    unfold C
    simp [show (3538944 * k + 2306717) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6920152) = 5308416 * k + 3460076 := by
    unfold C
    simp [show (10616832 * k + 6920152) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3460076) = 2654208 * k + 1730038 := by
    unfold C
    simp [show (5308416 * k + 3460076) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1730038) = 1327104 * k + 865019 := by
    unfold C
    simp [show (2654208 * k + 1730038) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 865019) = 3981312 * k + 2595058 := by
    unfold C
    simp [show (1327104 * k + 865019) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2595058) = 1990656 * k + 1297529 := by
    unfold C
    simp [show (3981312 * k + 2595058) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1297529) = 5971968 * k + 3892588 := by
    unfold C
    simp [show (1990656 * k + 1297529) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3892588) = 2985984 * k + 1946294 := by
    unfold C
    simp [show (5971968 * k + 3892588) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1946294) = 1492992 * k + 973147 := by
    unfold C
    simp [show (2985984 * k + 1946294) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 973147) = 4478976 * k + 2919442 := by
    unfold C
    simp [show (1492992 * k + 973147) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2919442) = 2239488 * k + 1459721 := by
    unfold C
    simp [show (4478976 * k + 2919442) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1459721) = 6718464 * k + 4379164 := by
    unfold C
    simp [show (2239488 * k + 1459721) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4379164) = 3359232 * k + 2189582 := by
    unfold C
    simp [show (6718464 * k + 4379164) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2189582) = 1679616 * k + 1094791 := by
    unfold C
    simp [show (3359232 * k + 2189582) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1094791) = 5038848 * k + 3284374 := by
    unfold C
    simp [show (1679616 * k + 1094791) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3284374) = 2519424 * k + 1642187 := by
    unfold C
    simp [show (5038848 * k + 3284374) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1642187) = 7558272 * k + 4926562 := by
    unfold C
    simp [show (2519424 * k + 1642187) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4926562) = 3779136 * k + 2463281 := by
    unfold C
    simp [show (7558272 * k + 4926562) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2463281) = 11337408 * k + 7389844 := by
    unfold C
    simp [show (3779136 * k + 2463281) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7389844) = 5668704 * k + 3694922 := by
    unfold C
    simp [show (11337408 * k + 7389844) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3694922) = 2834352 * k + 1847461 := by
    unfold C
    simp [show (5668704 * k + 3694922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1847461) = 8503056 * k + 5542384 := by
    unfold C
    simp [show (2834352 * k + 1847461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5542384) = 4251528 * k + 2771192 := by
    unfold C
    simp [show (8503056 * k + 5542384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2771192) = 2125764 * k + 1385596 := by
    unfold C
    simp [show (4251528 * k + 2771192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1385596) = 1062882 * k + 692798 := by
    unfold C
    simp [show (2125764 * k + 1385596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 692798) = 531441 * k + 346399 := by
    unfold C
    simp [show (1062882 * k + 692798) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 683471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 683471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_683503 : ∀ k : Nat,
    iterate (1048576 * k + 683503) 32 = 531441 * k + 346415 ∧
      531441 * k + 346415 < 1048576 * k + 683503 := by
  intro k
  have h1 : C (1048576 * k + 683503) = 3145728 * k + 2050510 := by
    unfold C
    simp [show (1048576 * k + 683503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2050510) = 1572864 * k + 1025255 := by
    unfold C
    simp [show (3145728 * k + 2050510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1025255) = 4718592 * k + 3075766 := by
    unfold C
    simp [show (1572864 * k + 1025255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3075766) = 2359296 * k + 1537883 := by
    unfold C
    simp [show (4718592 * k + 3075766) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1537883) = 7077888 * k + 4613650 := by
    unfold C
    simp [show (2359296 * k + 1537883) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4613650) = 3538944 * k + 2306825 := by
    unfold C
    simp [show (7077888 * k + 4613650) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2306825) = 10616832 * k + 6920476 := by
    unfold C
    simp [show (3538944 * k + 2306825) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6920476) = 5308416 * k + 3460238 := by
    unfold C
    simp [show (10616832 * k + 6920476) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3460238) = 2654208 * k + 1730119 := by
    unfold C
    simp [show (5308416 * k + 3460238) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1730119) = 7962624 * k + 5190358 := by
    unfold C
    simp [show (2654208 * k + 1730119) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5190358) = 3981312 * k + 2595179 := by
    unfold C
    simp [show (7962624 * k + 5190358) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2595179) = 11943936 * k + 7785538 := by
    unfold C
    simp [show (3981312 * k + 2595179) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7785538) = 5971968 * k + 3892769 := by
    unfold C
    simp [show (11943936 * k + 7785538) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3892769) = 17915904 * k + 11678308 := by
    unfold C
    simp [show (5971968 * k + 3892769) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11678308) = 8957952 * k + 5839154 := by
    unfold C
    simp [show (17915904 * k + 11678308) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5839154) = 4478976 * k + 2919577 := by
    unfold C
    simp [show (8957952 * k + 5839154) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2919577) = 13436928 * k + 8758732 := by
    unfold C
    simp [show (4478976 * k + 2919577) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8758732) = 6718464 * k + 4379366 := by
    unfold C
    simp [show (13436928 * k + 8758732) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4379366) = 3359232 * k + 2189683 := by
    unfold C
    simp [show (6718464 * k + 4379366) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2189683) = 10077696 * k + 6569050 := by
    unfold C
    simp [show (3359232 * k + 2189683) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6569050) = 5038848 * k + 3284525 := by
    unfold C
    simp [show (10077696 * k + 6569050) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3284525) = 15116544 * k + 9853576 := by
    unfold C
    simp [show (5038848 * k + 3284525) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9853576) = 7558272 * k + 4926788 := by
    unfold C
    simp [show (15116544 * k + 9853576) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4926788) = 3779136 * k + 2463394 := by
    unfold C
    simp [show (7558272 * k + 4926788) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2463394) = 1889568 * k + 1231697 := by
    unfold C
    simp [show (3779136 * k + 2463394) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1231697) = 5668704 * k + 3695092 := by
    unfold C
    simp [show (1889568 * k + 1231697) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3695092) = 2834352 * k + 1847546 := by
    unfold C
    simp [show (5668704 * k + 3695092) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1847546) = 1417176 * k + 923773 := by
    unfold C
    simp [show (2834352 * k + 1847546) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 923773) = 4251528 * k + 2771320 := by
    unfold C
    simp [show (1417176 * k + 923773) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2771320) = 2125764 * k + 1385660 := by
    unfold C
    simp [show (4251528 * k + 2771320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1385660) = 1062882 * k + 692830 := by
    unfold C
    simp [show (2125764 * k + 1385660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 692830) = 531441 * k + 346415 := by
    unfold C
    simp [show (1062882 * k + 692830) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 683503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 683503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_683631 : ∀ k : Nat,
    iterate (1048576 * k + 683631) 32 = 531441 * k + 346480 ∧
      531441 * k + 346480 < 1048576 * k + 683631 := by
  intro k
  have h1 : C (1048576 * k + 683631) = 3145728 * k + 2050894 := by
    unfold C
    simp [show (1048576 * k + 683631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2050894) = 1572864 * k + 1025447 := by
    unfold C
    simp [show (3145728 * k + 2050894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1025447) = 4718592 * k + 3076342 := by
    unfold C
    simp [show (1572864 * k + 1025447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3076342) = 2359296 * k + 1538171 := by
    unfold C
    simp [show (4718592 * k + 3076342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1538171) = 7077888 * k + 4614514 := by
    unfold C
    simp [show (2359296 * k + 1538171) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4614514) = 3538944 * k + 2307257 := by
    unfold C
    simp [show (7077888 * k + 4614514) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2307257) = 10616832 * k + 6921772 := by
    unfold C
    simp [show (3538944 * k + 2307257) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6921772) = 5308416 * k + 3460886 := by
    unfold C
    simp [show (10616832 * k + 6921772) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3460886) = 2654208 * k + 1730443 := by
    unfold C
    simp [show (5308416 * k + 3460886) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1730443) = 7962624 * k + 5191330 := by
    unfold C
    simp [show (2654208 * k + 1730443) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5191330) = 3981312 * k + 2595665 := by
    unfold C
    simp [show (7962624 * k + 5191330) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2595665) = 11943936 * k + 7786996 := by
    unfold C
    simp [show (3981312 * k + 2595665) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7786996) = 5971968 * k + 3893498 := by
    unfold C
    simp [show (11943936 * k + 7786996) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3893498) = 2985984 * k + 1946749 := by
    unfold C
    simp [show (5971968 * k + 3893498) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1946749) = 8957952 * k + 5840248 := by
    unfold C
    simp [show (2985984 * k + 1946749) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5840248) = 4478976 * k + 2920124 := by
    unfold C
    simp [show (8957952 * k + 5840248) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2920124) = 2239488 * k + 1460062 := by
    unfold C
    simp [show (4478976 * k + 2920124) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1460062) = 1119744 * k + 730031 := by
    unfold C
    simp [show (2239488 * k + 1460062) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 730031) = 3359232 * k + 2190094 := by
    unfold C
    simp [show (1119744 * k + 730031) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2190094) = 1679616 * k + 1095047 := by
    unfold C
    simp [show (3359232 * k + 2190094) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1095047) = 5038848 * k + 3285142 := by
    unfold C
    simp [show (1679616 * k + 1095047) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3285142) = 2519424 * k + 1642571 := by
    unfold C
    simp [show (5038848 * k + 3285142) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1642571) = 7558272 * k + 4927714 := by
    unfold C
    simp [show (2519424 * k + 1642571) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4927714) = 3779136 * k + 2463857 := by
    unfold C
    simp [show (7558272 * k + 4927714) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2463857) = 11337408 * k + 7391572 := by
    unfold C
    simp [show (3779136 * k + 2463857) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7391572) = 5668704 * k + 3695786 := by
    unfold C
    simp [show (11337408 * k + 7391572) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3695786) = 2834352 * k + 1847893 := by
    unfold C
    simp [show (5668704 * k + 3695786) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1847893) = 8503056 * k + 5543680 := by
    unfold C
    simp [show (2834352 * k + 1847893) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5543680) = 4251528 * k + 2771840 := by
    unfold C
    simp [show (8503056 * k + 5543680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2771840) = 2125764 * k + 1385920 := by
    unfold C
    simp [show (4251528 * k + 2771840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1385920) = 1062882 * k + 692960 := by
    unfold C
    simp [show (2125764 * k + 1385920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 692960) = 531441 * k + 346480 := by
    unfold C
    simp [show (1062882 * k + 692960) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 683631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 683631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_684223 : ∀ k : Nat,
    iterate (1048576 * k + 684223) 32 = 531441 * k + 346780 ∧
      531441 * k + 346780 < 1048576 * k + 684223 := by
  intro k
  have h1 : C (1048576 * k + 684223) = 3145728 * k + 2052670 := by
    unfold C
    simp [show (1048576 * k + 684223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2052670) = 1572864 * k + 1026335 := by
    unfold C
    simp [show (3145728 * k + 2052670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1026335) = 4718592 * k + 3079006 := by
    unfold C
    simp [show (1572864 * k + 1026335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3079006) = 2359296 * k + 1539503 := by
    unfold C
    simp [show (4718592 * k + 3079006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1539503) = 7077888 * k + 4618510 := by
    unfold C
    simp [show (2359296 * k + 1539503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4618510) = 3538944 * k + 2309255 := by
    unfold C
    simp [show (7077888 * k + 4618510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2309255) = 10616832 * k + 6927766 := by
    unfold C
    simp [show (3538944 * k + 2309255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6927766) = 5308416 * k + 3463883 := by
    unfold C
    simp [show (10616832 * k + 6927766) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3463883) = 15925248 * k + 10391650 := by
    unfold C
    simp [show (5308416 * k + 3463883) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10391650) = 7962624 * k + 5195825 := by
    unfold C
    simp [show (15925248 * k + 10391650) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5195825) = 23887872 * k + 15587476 := by
    unfold C
    simp [show (7962624 * k + 5195825) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15587476) = 11943936 * k + 7793738 := by
    unfold C
    simp [show (23887872 * k + 15587476) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7793738) = 5971968 * k + 3896869 := by
    unfold C
    simp [show (11943936 * k + 7793738) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3896869) = 17915904 * k + 11690608 := by
    unfold C
    simp [show (5971968 * k + 3896869) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11690608) = 8957952 * k + 5845304 := by
    unfold C
    simp [show (17915904 * k + 11690608) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5845304) = 4478976 * k + 2922652 := by
    unfold C
    simp [show (8957952 * k + 5845304) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2922652) = 2239488 * k + 1461326 := by
    unfold C
    simp [show (4478976 * k + 2922652) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1461326) = 1119744 * k + 730663 := by
    unfold C
    simp [show (2239488 * k + 1461326) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 730663) = 3359232 * k + 2191990 := by
    unfold C
    simp [show (1119744 * k + 730663) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2191990) = 1679616 * k + 1095995 := by
    unfold C
    simp [show (3359232 * k + 2191990) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1095995) = 5038848 * k + 3287986 := by
    unfold C
    simp [show (1679616 * k + 1095995) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3287986) = 2519424 * k + 1643993 := by
    unfold C
    simp [show (5038848 * k + 3287986) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1643993) = 7558272 * k + 4931980 := by
    unfold C
    simp [show (2519424 * k + 1643993) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4931980) = 3779136 * k + 2465990 := by
    unfold C
    simp [show (7558272 * k + 4931980) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2465990) = 1889568 * k + 1232995 := by
    unfold C
    simp [show (3779136 * k + 2465990) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1232995) = 5668704 * k + 3698986 := by
    unfold C
    simp [show (1889568 * k + 1232995) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3698986) = 2834352 * k + 1849493 := by
    unfold C
    simp [show (5668704 * k + 3698986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1849493) = 8503056 * k + 5548480 := by
    unfold C
    simp [show (2834352 * k + 1849493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5548480) = 4251528 * k + 2774240 := by
    unfold C
    simp [show (8503056 * k + 5548480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2774240) = 2125764 * k + 1387120 := by
    unfold C
    simp [show (4251528 * k + 2774240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1387120) = 1062882 * k + 693560 := by
    unfold C
    simp [show (2125764 * k + 1387120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 693560) = 531441 * k + 346780 := by
    unfold C
    simp [show (1062882 * k + 693560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 684223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 684223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_684271 : ∀ k : Nat,
    iterate (1048576 * k + 684271) 32 = 531441 * k + 346804 ∧
      531441 * k + 346804 < 1048576 * k + 684271 := by
  intro k
  have h1 : C (1048576 * k + 684271) = 3145728 * k + 2052814 := by
    unfold C
    simp [show (1048576 * k + 684271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2052814) = 1572864 * k + 1026407 := by
    unfold C
    simp [show (3145728 * k + 2052814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1026407) = 4718592 * k + 3079222 := by
    unfold C
    simp [show (1572864 * k + 1026407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3079222) = 2359296 * k + 1539611 := by
    unfold C
    simp [show (4718592 * k + 3079222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1539611) = 7077888 * k + 4618834 := by
    unfold C
    simp [show (2359296 * k + 1539611) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4618834) = 3538944 * k + 2309417 := by
    unfold C
    simp [show (7077888 * k + 4618834) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2309417) = 10616832 * k + 6928252 := by
    unfold C
    simp [show (3538944 * k + 2309417) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6928252) = 5308416 * k + 3464126 := by
    unfold C
    simp [show (10616832 * k + 6928252) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3464126) = 2654208 * k + 1732063 := by
    unfold C
    simp [show (5308416 * k + 3464126) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1732063) = 7962624 * k + 5196190 := by
    unfold C
    simp [show (2654208 * k + 1732063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5196190) = 3981312 * k + 2598095 := by
    unfold C
    simp [show (7962624 * k + 5196190) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2598095) = 11943936 * k + 7794286 := by
    unfold C
    simp [show (3981312 * k + 2598095) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7794286) = 5971968 * k + 3897143 := by
    unfold C
    simp [show (11943936 * k + 7794286) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3897143) = 17915904 * k + 11691430 := by
    unfold C
    simp [show (5971968 * k + 3897143) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11691430) = 8957952 * k + 5845715 := by
    unfold C
    simp [show (17915904 * k + 11691430) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5845715) = 26873856 * k + 17537146 := by
    unfold C
    simp [show (8957952 * k + 5845715) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17537146) = 13436928 * k + 8768573 := by
    unfold C
    simp [show (26873856 * k + 17537146) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8768573) = 40310784 * k + 26305720 := by
    unfold C
    simp [show (13436928 * k + 8768573) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 26305720) = 20155392 * k + 13152860 := by
    unfold C
    simp [show (40310784 * k + 26305720) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13152860) = 10077696 * k + 6576430 := by
    unfold C
    simp [show (20155392 * k + 13152860) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6576430) = 5038848 * k + 3288215 := by
    unfold C
    simp [show (10077696 * k + 6576430) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3288215) = 15116544 * k + 9864646 := by
    unfold C
    simp [show (5038848 * k + 3288215) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9864646) = 7558272 * k + 4932323 := by
    unfold C
    simp [show (15116544 * k + 9864646) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4932323) = 22674816 * k + 14796970 := by
    unfold C
    simp [show (7558272 * k + 4932323) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14796970) = 11337408 * k + 7398485 := by
    unfold C
    simp [show (22674816 * k + 14796970) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7398485) = 34012224 * k + 22195456 := by
    unfold C
    simp [show (11337408 * k + 7398485) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22195456) = 17006112 * k + 11097728 := by
    unfold C
    simp [show (34012224 * k + 22195456) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11097728) = 8503056 * k + 5548864 := by
    unfold C
    simp [show (17006112 * k + 11097728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5548864) = 4251528 * k + 2774432 := by
    unfold C
    simp [show (8503056 * k + 5548864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2774432) = 2125764 * k + 1387216 := by
    unfold C
    simp [show (4251528 * k + 2774432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1387216) = 1062882 * k + 693608 := by
    unfold C
    simp [show (2125764 * k + 1387216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 693608) = 531441 * k + 346804 := by
    unfold C
    simp [show (1062882 * k + 693608) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 684271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 684271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_684519 : ∀ k : Nat,
    iterate (1048576 * k + 684519) 32 = 531441 * k + 346930 ∧
      531441 * k + 346930 < 1048576 * k + 684519 := by
  intro k
  have h1 : C (1048576 * k + 684519) = 3145728 * k + 2053558 := by
    unfold C
    simp [show (1048576 * k + 684519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2053558) = 1572864 * k + 1026779 := by
    unfold C
    simp [show (3145728 * k + 2053558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1026779) = 4718592 * k + 3080338 := by
    unfold C
    simp [show (1572864 * k + 1026779) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3080338) = 2359296 * k + 1540169 := by
    unfold C
    simp [show (4718592 * k + 3080338) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1540169) = 7077888 * k + 4620508 := by
    unfold C
    simp [show (2359296 * k + 1540169) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4620508) = 3538944 * k + 2310254 := by
    unfold C
    simp [show (7077888 * k + 4620508) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2310254) = 1769472 * k + 1155127 := by
    unfold C
    simp [show (3538944 * k + 2310254) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1155127) = 5308416 * k + 3465382 := by
    unfold C
    simp [show (1769472 * k + 1155127) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3465382) = 2654208 * k + 1732691 := by
    unfold C
    simp [show (5308416 * k + 3465382) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1732691) = 7962624 * k + 5198074 := by
    unfold C
    simp [show (2654208 * k + 1732691) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5198074) = 3981312 * k + 2599037 := by
    unfold C
    simp [show (7962624 * k + 5198074) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2599037) = 11943936 * k + 7797112 := by
    unfold C
    simp [show (3981312 * k + 2599037) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7797112) = 5971968 * k + 3898556 := by
    unfold C
    simp [show (11943936 * k + 7797112) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3898556) = 2985984 * k + 1949278 := by
    unfold C
    simp [show (5971968 * k + 3898556) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1949278) = 1492992 * k + 974639 := by
    unfold C
    simp [show (2985984 * k + 1949278) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 974639) = 4478976 * k + 2923918 := by
    unfold C
    simp [show (1492992 * k + 974639) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2923918) = 2239488 * k + 1461959 := by
    unfold C
    simp [show (4478976 * k + 2923918) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1461959) = 6718464 * k + 4385878 := by
    unfold C
    simp [show (2239488 * k + 1461959) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4385878) = 3359232 * k + 2192939 := by
    unfold C
    simp [show (6718464 * k + 4385878) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2192939) = 10077696 * k + 6578818 := by
    unfold C
    simp [show (3359232 * k + 2192939) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6578818) = 5038848 * k + 3289409 := by
    unfold C
    simp [show (10077696 * k + 6578818) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3289409) = 15116544 * k + 9868228 := by
    unfold C
    simp [show (5038848 * k + 3289409) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9868228) = 7558272 * k + 4934114 := by
    unfold C
    simp [show (15116544 * k + 9868228) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4934114) = 3779136 * k + 2467057 := by
    unfold C
    simp [show (7558272 * k + 4934114) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2467057) = 11337408 * k + 7401172 := by
    unfold C
    simp [show (3779136 * k + 2467057) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7401172) = 5668704 * k + 3700586 := by
    unfold C
    simp [show (11337408 * k + 7401172) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3700586) = 2834352 * k + 1850293 := by
    unfold C
    simp [show (5668704 * k + 3700586) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1850293) = 8503056 * k + 5550880 := by
    unfold C
    simp [show (2834352 * k + 1850293) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5550880) = 4251528 * k + 2775440 := by
    unfold C
    simp [show (8503056 * k + 5550880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2775440) = 2125764 * k + 1387720 := by
    unfold C
    simp [show (4251528 * k + 2775440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1387720) = 1062882 * k + 693860 := by
    unfold C
    simp [show (2125764 * k + 1387720) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 693860) = 531441 * k + 346930 := by
    unfold C
    simp [show (1062882 * k + 693860) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 684519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 684519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard088
