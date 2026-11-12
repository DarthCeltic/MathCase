import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard019

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_135375 : ∀ k : Nat,
    iterate (1048576 * k + 135375) 32 = 531441 * k + 68612 ∧
      531441 * k + 68612 < 1048576 * k + 135375 := by
  intro k
  have h1 : C (1048576 * k + 135375) = 3145728 * k + 406126 := by
    unfold C
    simp [show (1048576 * k + 135375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 406126) = 1572864 * k + 203063 := by
    unfold C
    simp [show (3145728 * k + 406126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 203063) = 4718592 * k + 609190 := by
    unfold C
    simp [show (1572864 * k + 203063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 609190) = 2359296 * k + 304595 := by
    unfold C
    simp [show (4718592 * k + 609190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 304595) = 7077888 * k + 913786 := by
    unfold C
    simp [show (2359296 * k + 304595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 913786) = 3538944 * k + 456893 := by
    unfold C
    simp [show (7077888 * k + 913786) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 456893) = 10616832 * k + 1370680 := by
    unfold C
    simp [show (3538944 * k + 456893) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1370680) = 5308416 * k + 685340 := by
    unfold C
    simp [show (10616832 * k + 1370680) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 685340) = 2654208 * k + 342670 := by
    unfold C
    simp [show (5308416 * k + 685340) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 342670) = 1327104 * k + 171335 := by
    unfold C
    simp [show (2654208 * k + 342670) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 171335) = 3981312 * k + 514006 := by
    unfold C
    simp [show (1327104 * k + 171335) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 514006) = 1990656 * k + 257003 := by
    unfold C
    simp [show (3981312 * k + 514006) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 257003) = 5971968 * k + 771010 := by
    unfold C
    simp [show (1990656 * k + 257003) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 771010) = 2985984 * k + 385505 := by
    unfold C
    simp [show (5971968 * k + 771010) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 385505) = 8957952 * k + 1156516 := by
    unfold C
    simp [show (2985984 * k + 385505) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1156516) = 4478976 * k + 578258 := by
    unfold C
    simp [show (8957952 * k + 1156516) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 578258) = 2239488 * k + 289129 := by
    unfold C
    simp [show (4478976 * k + 578258) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 289129) = 6718464 * k + 867388 := by
    unfold C
    simp [show (2239488 * k + 289129) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 867388) = 3359232 * k + 433694 := by
    unfold C
    simp [show (6718464 * k + 867388) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 433694) = 1679616 * k + 216847 := by
    unfold C
    simp [show (3359232 * k + 433694) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 216847) = 5038848 * k + 650542 := by
    unfold C
    simp [show (1679616 * k + 216847) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 650542) = 2519424 * k + 325271 := by
    unfold C
    simp [show (5038848 * k + 650542) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 325271) = 7558272 * k + 975814 := by
    unfold C
    simp [show (2519424 * k + 325271) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 975814) = 3779136 * k + 487907 := by
    unfold C
    simp [show (7558272 * k + 975814) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 487907) = 11337408 * k + 1463722 := by
    unfold C
    simp [show (3779136 * k + 487907) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1463722) = 5668704 * k + 731861 := by
    unfold C
    simp [show (11337408 * k + 1463722) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 731861) = 17006112 * k + 2195584 := by
    unfold C
    simp [show (5668704 * k + 731861) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2195584) = 8503056 * k + 1097792 := by
    unfold C
    simp [show (17006112 * k + 2195584) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1097792) = 4251528 * k + 548896 := by
    unfold C
    simp [show (8503056 * k + 1097792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 548896) = 2125764 * k + 274448 := by
    unfold C
    simp [show (4251528 * k + 548896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 274448) = 1062882 * k + 137224 := by
    unfold C
    simp [show (2125764 * k + 274448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 137224) = 531441 * k + 68612 := by
    unfold C
    simp [show (1062882 * k + 137224) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 135375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 135375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_136239 : ∀ k : Nat,
    iterate (1048576 * k + 136239) 32 = 531441 * k + 69050 ∧
      531441 * k + 69050 < 1048576 * k + 136239 := by
  intro k
  have h1 : C (1048576 * k + 136239) = 3145728 * k + 408718 := by
    unfold C
    simp [show (1048576 * k + 136239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 408718) = 1572864 * k + 204359 := by
    unfold C
    simp [show (3145728 * k + 408718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 204359) = 4718592 * k + 613078 := by
    unfold C
    simp [show (1572864 * k + 204359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 613078) = 2359296 * k + 306539 := by
    unfold C
    simp [show (4718592 * k + 613078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 306539) = 7077888 * k + 919618 := by
    unfold C
    simp [show (2359296 * k + 306539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 919618) = 3538944 * k + 459809 := by
    unfold C
    simp [show (7077888 * k + 919618) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 459809) = 10616832 * k + 1379428 := by
    unfold C
    simp [show (3538944 * k + 459809) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1379428) = 5308416 * k + 689714 := by
    unfold C
    simp [show (10616832 * k + 1379428) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 689714) = 2654208 * k + 344857 := by
    unfold C
    simp [show (5308416 * k + 689714) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 344857) = 7962624 * k + 1034572 := by
    unfold C
    simp [show (2654208 * k + 344857) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1034572) = 3981312 * k + 517286 := by
    unfold C
    simp [show (7962624 * k + 1034572) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 517286) = 1990656 * k + 258643 := by
    unfold C
    simp [show (3981312 * k + 517286) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 258643) = 5971968 * k + 775930 := by
    unfold C
    simp [show (1990656 * k + 258643) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 775930) = 2985984 * k + 387965 := by
    unfold C
    simp [show (5971968 * k + 775930) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 387965) = 8957952 * k + 1163896 := by
    unfold C
    simp [show (2985984 * k + 387965) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1163896) = 4478976 * k + 581948 := by
    unfold C
    simp [show (8957952 * k + 1163896) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 581948) = 2239488 * k + 290974 := by
    unfold C
    simp [show (4478976 * k + 581948) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 290974) = 1119744 * k + 145487 := by
    unfold C
    simp [show (2239488 * k + 290974) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 145487) = 3359232 * k + 436462 := by
    unfold C
    simp [show (1119744 * k + 145487) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 436462) = 1679616 * k + 218231 := by
    unfold C
    simp [show (3359232 * k + 436462) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 218231) = 5038848 * k + 654694 := by
    unfold C
    simp [show (1679616 * k + 218231) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 654694) = 2519424 * k + 327347 := by
    unfold C
    simp [show (5038848 * k + 654694) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 327347) = 7558272 * k + 982042 := by
    unfold C
    simp [show (2519424 * k + 327347) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 982042) = 3779136 * k + 491021 := by
    unfold C
    simp [show (7558272 * k + 982042) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 491021) = 11337408 * k + 1473064 := by
    unfold C
    simp [show (3779136 * k + 491021) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1473064) = 5668704 * k + 736532 := by
    unfold C
    simp [show (11337408 * k + 1473064) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 736532) = 2834352 * k + 368266 := by
    unfold C
    simp [show (5668704 * k + 736532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 368266) = 1417176 * k + 184133 := by
    unfold C
    simp [show (2834352 * k + 368266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 184133) = 4251528 * k + 552400 := by
    unfold C
    simp [show (1417176 * k + 184133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 552400) = 2125764 * k + 276200 := by
    unfold C
    simp [show (4251528 * k + 552400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 276200) = 1062882 * k + 138100 := by
    unfold C
    simp [show (2125764 * k + 276200) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 138100) = 531441 * k + 69050 := by
    unfold C
    simp [show (1062882 * k + 138100) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 136239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 136239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_136423 : ∀ k : Nat,
    iterate (1048576 * k + 136423) 32 = 531441 * k + 69143 ∧
      531441 * k + 69143 < 1048576 * k + 136423 := by
  intro k
  have h1 : C (1048576 * k + 136423) = 3145728 * k + 409270 := by
    unfold C
    simp [show (1048576 * k + 136423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 409270) = 1572864 * k + 204635 := by
    unfold C
    simp [show (3145728 * k + 409270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 204635) = 4718592 * k + 613906 := by
    unfold C
    simp [show (1572864 * k + 204635) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 613906) = 2359296 * k + 306953 := by
    unfold C
    simp [show (4718592 * k + 613906) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 306953) = 7077888 * k + 920860 := by
    unfold C
    simp [show (2359296 * k + 306953) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 920860) = 3538944 * k + 460430 := by
    unfold C
    simp [show (7077888 * k + 920860) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 460430) = 1769472 * k + 230215 := by
    unfold C
    simp [show (3538944 * k + 460430) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 230215) = 5308416 * k + 690646 := by
    unfold C
    simp [show (1769472 * k + 230215) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 690646) = 2654208 * k + 345323 := by
    unfold C
    simp [show (5308416 * k + 690646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 345323) = 7962624 * k + 1035970 := by
    unfold C
    simp [show (2654208 * k + 345323) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1035970) = 3981312 * k + 517985 := by
    unfold C
    simp [show (7962624 * k + 1035970) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 517985) = 11943936 * k + 1553956 := by
    unfold C
    simp [show (3981312 * k + 517985) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1553956) = 5971968 * k + 776978 := by
    unfold C
    simp [show (11943936 * k + 1553956) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 776978) = 2985984 * k + 388489 := by
    unfold C
    simp [show (5971968 * k + 776978) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 388489) = 8957952 * k + 1165468 := by
    unfold C
    simp [show (2985984 * k + 388489) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1165468) = 4478976 * k + 582734 := by
    unfold C
    simp [show (8957952 * k + 1165468) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 582734) = 2239488 * k + 291367 := by
    unfold C
    simp [show (4478976 * k + 582734) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 291367) = 6718464 * k + 874102 := by
    unfold C
    simp [show (2239488 * k + 291367) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 874102) = 3359232 * k + 437051 := by
    unfold C
    simp [show (6718464 * k + 874102) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 437051) = 10077696 * k + 1311154 := by
    unfold C
    simp [show (3359232 * k + 437051) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1311154) = 5038848 * k + 655577 := by
    unfold C
    simp [show (10077696 * k + 1311154) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 655577) = 15116544 * k + 1966732 := by
    unfold C
    simp [show (5038848 * k + 655577) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1966732) = 7558272 * k + 983366 := by
    unfold C
    simp [show (15116544 * k + 1966732) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 983366) = 3779136 * k + 491683 := by
    unfold C
    simp [show (7558272 * k + 983366) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 491683) = 11337408 * k + 1475050 := by
    unfold C
    simp [show (3779136 * k + 491683) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1475050) = 5668704 * k + 737525 := by
    unfold C
    simp [show (11337408 * k + 1475050) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 737525) = 17006112 * k + 2212576 := by
    unfold C
    simp [show (5668704 * k + 737525) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2212576) = 8503056 * k + 1106288 := by
    unfold C
    simp [show (17006112 * k + 2212576) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1106288) = 4251528 * k + 553144 := by
    unfold C
    simp [show (8503056 * k + 1106288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 553144) = 2125764 * k + 276572 := by
    unfold C
    simp [show (4251528 * k + 553144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 276572) = 1062882 * k + 138286 := by
    unfold C
    simp [show (2125764 * k + 276572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 138286) = 531441 * k + 69143 := by
    unfold C
    simp [show (1062882 * k + 138286) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 136423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 136423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_136575 : ∀ k : Nat,
    iterate (1048576 * k + 136575) 32 = 531441 * k + 69220 ∧
      531441 * k + 69220 < 1048576 * k + 136575 := by
  intro k
  have h1 : C (1048576 * k + 136575) = 3145728 * k + 409726 := by
    unfold C
    simp [show (1048576 * k + 136575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 409726) = 1572864 * k + 204863 := by
    unfold C
    simp [show (3145728 * k + 409726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 204863) = 4718592 * k + 614590 := by
    unfold C
    simp [show (1572864 * k + 204863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 614590) = 2359296 * k + 307295 := by
    unfold C
    simp [show (4718592 * k + 614590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 307295) = 7077888 * k + 921886 := by
    unfold C
    simp [show (2359296 * k + 307295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 921886) = 3538944 * k + 460943 := by
    unfold C
    simp [show (7077888 * k + 921886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 460943) = 10616832 * k + 1382830 := by
    unfold C
    simp [show (3538944 * k + 460943) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1382830) = 5308416 * k + 691415 := by
    unfold C
    simp [show (10616832 * k + 1382830) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 691415) = 15925248 * k + 2074246 := by
    unfold C
    simp [show (5308416 * k + 691415) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2074246) = 7962624 * k + 1037123 := by
    unfold C
    simp [show (15925248 * k + 2074246) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1037123) = 23887872 * k + 3111370 := by
    unfold C
    simp [show (7962624 * k + 1037123) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3111370) = 11943936 * k + 1555685 := by
    unfold C
    simp [show (23887872 * k + 3111370) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1555685) = 35831808 * k + 4667056 := by
    unfold C
    simp [show (11943936 * k + 1555685) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 4667056) = 17915904 * k + 2333528 := by
    unfold C
    simp [show (35831808 * k + 4667056) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2333528) = 8957952 * k + 1166764 := by
    unfold C
    simp [show (17915904 * k + 2333528) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1166764) = 4478976 * k + 583382 := by
    unfold C
    simp [show (8957952 * k + 1166764) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 583382) = 2239488 * k + 291691 := by
    unfold C
    simp [show (4478976 * k + 583382) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 291691) = 6718464 * k + 875074 := by
    unfold C
    simp [show (2239488 * k + 291691) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 875074) = 3359232 * k + 437537 := by
    unfold C
    simp [show (6718464 * k + 875074) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 437537) = 10077696 * k + 1312612 := by
    unfold C
    simp [show (3359232 * k + 437537) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1312612) = 5038848 * k + 656306 := by
    unfold C
    simp [show (10077696 * k + 1312612) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 656306) = 2519424 * k + 328153 := by
    unfold C
    simp [show (5038848 * k + 656306) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 328153) = 7558272 * k + 984460 := by
    unfold C
    simp [show (2519424 * k + 328153) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 984460) = 3779136 * k + 492230 := by
    unfold C
    simp [show (7558272 * k + 984460) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 492230) = 1889568 * k + 246115 := by
    unfold C
    simp [show (3779136 * k + 492230) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 246115) = 5668704 * k + 738346 := by
    unfold C
    simp [show (1889568 * k + 246115) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 738346) = 2834352 * k + 369173 := by
    unfold C
    simp [show (5668704 * k + 738346) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 369173) = 8503056 * k + 1107520 := by
    unfold C
    simp [show (2834352 * k + 369173) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1107520) = 4251528 * k + 553760 := by
    unfold C
    simp [show (8503056 * k + 1107520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 553760) = 2125764 * k + 276880 := by
    unfold C
    simp [show (4251528 * k + 553760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 276880) = 1062882 * k + 138440 := by
    unfold C
    simp [show (2125764 * k + 276880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 138440) = 531441 * k + 69220 := by
    unfold C
    simp [show (1062882 * k + 138440) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 136575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 136575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_136607 : ∀ k : Nat,
    iterate (1048576 * k + 136607) 32 = 531441 * k + 69236 ∧
      531441 * k + 69236 < 1048576 * k + 136607 := by
  intro k
  have h1 : C (1048576 * k + 136607) = 3145728 * k + 409822 := by
    unfold C
    simp [show (1048576 * k + 136607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 409822) = 1572864 * k + 204911 := by
    unfold C
    simp [show (3145728 * k + 409822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 204911) = 4718592 * k + 614734 := by
    unfold C
    simp [show (1572864 * k + 204911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 614734) = 2359296 * k + 307367 := by
    unfold C
    simp [show (4718592 * k + 614734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 307367) = 7077888 * k + 922102 := by
    unfold C
    simp [show (2359296 * k + 307367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 922102) = 3538944 * k + 461051 := by
    unfold C
    simp [show (7077888 * k + 922102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 461051) = 10616832 * k + 1383154 := by
    unfold C
    simp [show (3538944 * k + 461051) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1383154) = 5308416 * k + 691577 := by
    unfold C
    simp [show (10616832 * k + 1383154) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 691577) = 15925248 * k + 2074732 := by
    unfold C
    simp [show (5308416 * k + 691577) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2074732) = 7962624 * k + 1037366 := by
    unfold C
    simp [show (15925248 * k + 2074732) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1037366) = 3981312 * k + 518683 := by
    unfold C
    simp [show (7962624 * k + 1037366) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 518683) = 11943936 * k + 1556050 := by
    unfold C
    simp [show (3981312 * k + 518683) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1556050) = 5971968 * k + 778025 := by
    unfold C
    simp [show (11943936 * k + 1556050) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 778025) = 17915904 * k + 2334076 := by
    unfold C
    simp [show (5971968 * k + 778025) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2334076) = 8957952 * k + 1167038 := by
    unfold C
    simp [show (17915904 * k + 2334076) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1167038) = 4478976 * k + 583519 := by
    unfold C
    simp [show (8957952 * k + 1167038) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 583519) = 13436928 * k + 1750558 := by
    unfold C
    simp [show (4478976 * k + 583519) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1750558) = 6718464 * k + 875279 := by
    unfold C
    simp [show (13436928 * k + 1750558) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 875279) = 20155392 * k + 2625838 := by
    unfold C
    simp [show (6718464 * k + 875279) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2625838) = 10077696 * k + 1312919 := by
    unfold C
    simp [show (20155392 * k + 2625838) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1312919) = 30233088 * k + 3938758 := by
    unfold C
    simp [show (10077696 * k + 1312919) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3938758) = 15116544 * k + 1969379 := by
    unfold C
    simp [show (30233088 * k + 3938758) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1969379) = 45349632 * k + 5908138 := by
    unfold C
    simp [show (15116544 * k + 1969379) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 5908138) = 22674816 * k + 2954069 := by
    unfold C
    simp [show (45349632 * k + 5908138) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2954069) = 68024448 * k + 8862208 := by
    unfold C
    simp [show (22674816 * k + 2954069) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 8862208) = 34012224 * k + 4431104 := by
    unfold C
    simp [show (68024448 * k + 8862208) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 4431104) = 17006112 * k + 2215552 := by
    unfold C
    simp [show (34012224 * k + 4431104) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2215552) = 8503056 * k + 1107776 := by
    unfold C
    simp [show (17006112 * k + 2215552) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1107776) = 4251528 * k + 553888 := by
    unfold C
    simp [show (8503056 * k + 1107776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 553888) = 2125764 * k + 276944 := by
    unfold C
    simp [show (4251528 * k + 553888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 276944) = 1062882 * k + 138472 := by
    unfold C
    simp [show (2125764 * k + 276944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 138472) = 531441 * k + 69236 := by
    unfold C
    simp [show (1062882 * k + 138472) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 136607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 136607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_137127 : ∀ k : Nat,
    iterate (1048576 * k + 137127) 32 = 531441 * k + 69500 ∧
      531441 * k + 69500 < 1048576 * k + 137127 := by
  intro k
  have h1 : C (1048576 * k + 137127) = 3145728 * k + 411382 := by
    unfold C
    simp [show (1048576 * k + 137127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 411382) = 1572864 * k + 205691 := by
    unfold C
    simp [show (3145728 * k + 411382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 205691) = 4718592 * k + 617074 := by
    unfold C
    simp [show (1572864 * k + 205691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 617074) = 2359296 * k + 308537 := by
    unfold C
    simp [show (4718592 * k + 617074) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 308537) = 7077888 * k + 925612 := by
    unfold C
    simp [show (2359296 * k + 308537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 925612) = 3538944 * k + 462806 := by
    unfold C
    simp [show (7077888 * k + 925612) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 462806) = 1769472 * k + 231403 := by
    unfold C
    simp [show (3538944 * k + 462806) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 231403) = 5308416 * k + 694210 := by
    unfold C
    simp [show (1769472 * k + 231403) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 694210) = 2654208 * k + 347105 := by
    unfold C
    simp [show (5308416 * k + 694210) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 347105) = 7962624 * k + 1041316 := by
    unfold C
    simp [show (2654208 * k + 347105) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1041316) = 3981312 * k + 520658 := by
    unfold C
    simp [show (7962624 * k + 1041316) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 520658) = 1990656 * k + 260329 := by
    unfold C
    simp [show (3981312 * k + 520658) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 260329) = 5971968 * k + 780988 := by
    unfold C
    simp [show (1990656 * k + 260329) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 780988) = 2985984 * k + 390494 := by
    unfold C
    simp [show (5971968 * k + 780988) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 390494) = 1492992 * k + 195247 := by
    unfold C
    simp [show (2985984 * k + 390494) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 195247) = 4478976 * k + 585742 := by
    unfold C
    simp [show (1492992 * k + 195247) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 585742) = 2239488 * k + 292871 := by
    unfold C
    simp [show (4478976 * k + 585742) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 292871) = 6718464 * k + 878614 := by
    unfold C
    simp [show (2239488 * k + 292871) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 878614) = 3359232 * k + 439307 := by
    unfold C
    simp [show (6718464 * k + 878614) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 439307) = 10077696 * k + 1317922 := by
    unfold C
    simp [show (3359232 * k + 439307) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1317922) = 5038848 * k + 658961 := by
    unfold C
    simp [show (10077696 * k + 1317922) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 658961) = 15116544 * k + 1976884 := by
    unfold C
    simp [show (5038848 * k + 658961) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1976884) = 7558272 * k + 988442 := by
    unfold C
    simp [show (15116544 * k + 1976884) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 988442) = 3779136 * k + 494221 := by
    unfold C
    simp [show (7558272 * k + 988442) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 494221) = 11337408 * k + 1482664 := by
    unfold C
    simp [show (3779136 * k + 494221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1482664) = 5668704 * k + 741332 := by
    unfold C
    simp [show (11337408 * k + 1482664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 741332) = 2834352 * k + 370666 := by
    unfold C
    simp [show (5668704 * k + 741332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 370666) = 1417176 * k + 185333 := by
    unfold C
    simp [show (2834352 * k + 370666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 185333) = 4251528 * k + 556000 := by
    unfold C
    simp [show (1417176 * k + 185333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 556000) = 2125764 * k + 278000 := by
    unfold C
    simp [show (4251528 * k + 556000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 278000) = 1062882 * k + 139000 := by
    unfold C
    simp [show (2125764 * k + 278000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 139000) = 531441 * k + 69500 := by
    unfold C
    simp [show (1062882 * k + 139000) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 137127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 137127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_137151 : ∀ k : Nat,
    iterate (1048576 * k + 137151) 32 = 531441 * k + 69512 ∧
      531441 * k + 69512 < 1048576 * k + 137151 := by
  intro k
  have h1 : C (1048576 * k + 137151) = 3145728 * k + 411454 := by
    unfold C
    simp [show (1048576 * k + 137151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 411454) = 1572864 * k + 205727 := by
    unfold C
    simp [show (3145728 * k + 411454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 205727) = 4718592 * k + 617182 := by
    unfold C
    simp [show (1572864 * k + 205727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 617182) = 2359296 * k + 308591 := by
    unfold C
    simp [show (4718592 * k + 617182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 308591) = 7077888 * k + 925774 := by
    unfold C
    simp [show (2359296 * k + 308591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 925774) = 3538944 * k + 462887 := by
    unfold C
    simp [show (7077888 * k + 925774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 462887) = 10616832 * k + 1388662 := by
    unfold C
    simp [show (3538944 * k + 462887) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1388662) = 5308416 * k + 694331 := by
    unfold C
    simp [show (10616832 * k + 1388662) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 694331) = 15925248 * k + 2082994 := by
    unfold C
    simp [show (5308416 * k + 694331) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2082994) = 7962624 * k + 1041497 := by
    unfold C
    simp [show (15925248 * k + 2082994) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1041497) = 23887872 * k + 3124492 := by
    unfold C
    simp [show (7962624 * k + 1041497) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3124492) = 11943936 * k + 1562246 := by
    unfold C
    simp [show (23887872 * k + 3124492) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1562246) = 5971968 * k + 781123 := by
    unfold C
    simp [show (11943936 * k + 1562246) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 781123) = 17915904 * k + 2343370 := by
    unfold C
    simp [show (5971968 * k + 781123) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2343370) = 8957952 * k + 1171685 := by
    unfold C
    simp [show (17915904 * k + 2343370) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1171685) = 26873856 * k + 3515056 := by
    unfold C
    simp [show (8957952 * k + 1171685) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3515056) = 13436928 * k + 1757528 := by
    unfold C
    simp [show (26873856 * k + 3515056) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1757528) = 6718464 * k + 878764 := by
    unfold C
    simp [show (13436928 * k + 1757528) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 878764) = 3359232 * k + 439382 := by
    unfold C
    simp [show (6718464 * k + 878764) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 439382) = 1679616 * k + 219691 := by
    unfold C
    simp [show (3359232 * k + 439382) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 219691) = 5038848 * k + 659074 := by
    unfold C
    simp [show (1679616 * k + 219691) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 659074) = 2519424 * k + 329537 := by
    unfold C
    simp [show (5038848 * k + 659074) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 329537) = 7558272 * k + 988612 := by
    unfold C
    simp [show (2519424 * k + 329537) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 988612) = 3779136 * k + 494306 := by
    unfold C
    simp [show (7558272 * k + 988612) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 494306) = 1889568 * k + 247153 := by
    unfold C
    simp [show (3779136 * k + 494306) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 247153) = 5668704 * k + 741460 := by
    unfold C
    simp [show (1889568 * k + 247153) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 741460) = 2834352 * k + 370730 := by
    unfold C
    simp [show (5668704 * k + 741460) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 370730) = 1417176 * k + 185365 := by
    unfold C
    simp [show (2834352 * k + 370730) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 185365) = 4251528 * k + 556096 := by
    unfold C
    simp [show (1417176 * k + 185365) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 556096) = 2125764 * k + 278048 := by
    unfold C
    simp [show (4251528 * k + 556096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 278048) = 1062882 * k + 139024 := by
    unfold C
    simp [show (2125764 * k + 278048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 139024) = 531441 * k + 69512 := by
    unfold C
    simp [show (1062882 * k + 139024) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 137151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 137151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_137471 : ∀ k : Nat,
    iterate (1048576 * k + 137471) 32 = 531441 * k + 69674 ∧
      531441 * k + 69674 < 1048576 * k + 137471 := by
  intro k
  have h1 : C (1048576 * k + 137471) = 3145728 * k + 412414 := by
    unfold C
    simp [show (1048576 * k + 137471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 412414) = 1572864 * k + 206207 := by
    unfold C
    simp [show (3145728 * k + 412414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 206207) = 4718592 * k + 618622 := by
    unfold C
    simp [show (1572864 * k + 206207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 618622) = 2359296 * k + 309311 := by
    unfold C
    simp [show (4718592 * k + 618622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 309311) = 7077888 * k + 927934 := by
    unfold C
    simp [show (2359296 * k + 309311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 927934) = 3538944 * k + 463967 := by
    unfold C
    simp [show (7077888 * k + 927934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 463967) = 10616832 * k + 1391902 := by
    unfold C
    simp [show (3538944 * k + 463967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1391902) = 5308416 * k + 695951 := by
    unfold C
    simp [show (10616832 * k + 1391902) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 695951) = 15925248 * k + 2087854 := by
    unfold C
    simp [show (5308416 * k + 695951) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2087854) = 7962624 * k + 1043927 := by
    unfold C
    simp [show (15925248 * k + 2087854) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1043927) = 23887872 * k + 3131782 := by
    unfold C
    simp [show (7962624 * k + 1043927) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3131782) = 11943936 * k + 1565891 := by
    unfold C
    simp [show (23887872 * k + 3131782) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1565891) = 35831808 * k + 4697674 := by
    unfold C
    simp [show (11943936 * k + 1565891) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 4697674) = 17915904 * k + 2348837 := by
    unfold C
    simp [show (35831808 * k + 4697674) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2348837) = 53747712 * k + 7046512 := by
    unfold C
    simp [show (17915904 * k + 2348837) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 7046512) = 26873856 * k + 3523256 := by
    unfold C
    simp [show (53747712 * k + 7046512) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 3523256) = 13436928 * k + 1761628 := by
    unfold C
    simp [show (26873856 * k + 3523256) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1761628) = 6718464 * k + 880814 := by
    unfold C
    simp [show (13436928 * k + 1761628) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 880814) = 3359232 * k + 440407 := by
    unfold C
    simp [show (6718464 * k + 880814) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 440407) = 10077696 * k + 1321222 := by
    unfold C
    simp [show (3359232 * k + 440407) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1321222) = 5038848 * k + 660611 := by
    unfold C
    simp [show (10077696 * k + 1321222) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 660611) = 15116544 * k + 1981834 := by
    unfold C
    simp [show (5038848 * k + 660611) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1981834) = 7558272 * k + 990917 := by
    unfold C
    simp [show (15116544 * k + 1981834) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 990917) = 22674816 * k + 2972752 := by
    unfold C
    simp [show (7558272 * k + 990917) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2972752) = 11337408 * k + 1486376 := by
    unfold C
    simp [show (22674816 * k + 2972752) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1486376) = 5668704 * k + 743188 := by
    unfold C
    simp [show (11337408 * k + 1486376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 743188) = 2834352 * k + 371594 := by
    unfold C
    simp [show (5668704 * k + 743188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 371594) = 1417176 * k + 185797 := by
    unfold C
    simp [show (2834352 * k + 371594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 185797) = 4251528 * k + 557392 := by
    unfold C
    simp [show (1417176 * k + 185797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 557392) = 2125764 * k + 278696 := by
    unfold C
    simp [show (4251528 * k + 557392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 278696) = 1062882 * k + 139348 := by
    unfold C
    simp [show (2125764 * k + 278696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 139348) = 531441 * k + 69674 := by
    unfold C
    simp [show (1062882 * k + 139348) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 137471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 137471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_137883 : ∀ k : Nat,
    iterate (1048576 * k + 137883) 32 = 531441 * k + 69883 ∧
      531441 * k + 69883 < 1048576 * k + 137883 := by
  intro k
  have h1 : C (1048576 * k + 137883) = 3145728 * k + 413650 := by
    unfold C
    simp [show (1048576 * k + 137883) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 413650) = 1572864 * k + 206825 := by
    unfold C
    simp [show (3145728 * k + 413650) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 206825) = 4718592 * k + 620476 := by
    unfold C
    simp [show (1572864 * k + 206825) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 620476) = 2359296 * k + 310238 := by
    unfold C
    simp [show (4718592 * k + 620476) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 310238) = 1179648 * k + 155119 := by
    unfold C
    simp [show (2359296 * k + 310238) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 155119) = 3538944 * k + 465358 := by
    unfold C
    simp [show (1179648 * k + 155119) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 465358) = 1769472 * k + 232679 := by
    unfold C
    simp [show (3538944 * k + 465358) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 232679) = 5308416 * k + 698038 := by
    unfold C
    simp [show (1769472 * k + 232679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 698038) = 2654208 * k + 349019 := by
    unfold C
    simp [show (5308416 * k + 698038) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 349019) = 7962624 * k + 1047058 := by
    unfold C
    simp [show (2654208 * k + 349019) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1047058) = 3981312 * k + 523529 := by
    unfold C
    simp [show (7962624 * k + 1047058) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 523529) = 11943936 * k + 1570588 := by
    unfold C
    simp [show (3981312 * k + 523529) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1570588) = 5971968 * k + 785294 := by
    unfold C
    simp [show (11943936 * k + 1570588) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 785294) = 2985984 * k + 392647 := by
    unfold C
    simp [show (5971968 * k + 785294) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 392647) = 8957952 * k + 1177942 := by
    unfold C
    simp [show (2985984 * k + 392647) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1177942) = 4478976 * k + 588971 := by
    unfold C
    simp [show (8957952 * k + 1177942) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 588971) = 13436928 * k + 1766914 := by
    unfold C
    simp [show (4478976 * k + 588971) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1766914) = 6718464 * k + 883457 := by
    unfold C
    simp [show (13436928 * k + 1766914) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 883457) = 20155392 * k + 2650372 := by
    unfold C
    simp [show (6718464 * k + 883457) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2650372) = 10077696 * k + 1325186 := by
    unfold C
    simp [show (20155392 * k + 2650372) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1325186) = 5038848 * k + 662593 := by
    unfold C
    simp [show (10077696 * k + 1325186) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 662593) = 15116544 * k + 1987780 := by
    unfold C
    simp [show (5038848 * k + 662593) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1987780) = 7558272 * k + 993890 := by
    unfold C
    simp [show (15116544 * k + 1987780) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 993890) = 3779136 * k + 496945 := by
    unfold C
    simp [show (7558272 * k + 993890) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 496945) = 11337408 * k + 1490836 := by
    unfold C
    simp [show (3779136 * k + 496945) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1490836) = 5668704 * k + 745418 := by
    unfold C
    simp [show (11337408 * k + 1490836) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 745418) = 2834352 * k + 372709 := by
    unfold C
    simp [show (5668704 * k + 745418) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 372709) = 8503056 * k + 1118128 := by
    unfold C
    simp [show (2834352 * k + 372709) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1118128) = 4251528 * k + 559064 := by
    unfold C
    simp [show (8503056 * k + 1118128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 559064) = 2125764 * k + 279532 := by
    unfold C
    simp [show (4251528 * k + 559064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 279532) = 1062882 * k + 139766 := by
    unfold C
    simp [show (2125764 * k + 279532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 139766) = 531441 * k + 69883 := by
    unfold C
    simp [show (1062882 * k + 139766) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 137883) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 137883)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_139327 : ∀ k : Nat,
    iterate (1048576 * k + 139327) 32 = 531441 * k + 70615 ∧
      531441 * k + 70615 < 1048576 * k + 139327 := by
  intro k
  have h1 : C (1048576 * k + 139327) = 3145728 * k + 417982 := by
    unfold C
    simp [show (1048576 * k + 139327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 417982) = 1572864 * k + 208991 := by
    unfold C
    simp [show (3145728 * k + 417982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 208991) = 4718592 * k + 626974 := by
    unfold C
    simp [show (1572864 * k + 208991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 626974) = 2359296 * k + 313487 := by
    unfold C
    simp [show (4718592 * k + 626974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 313487) = 7077888 * k + 940462 := by
    unfold C
    simp [show (2359296 * k + 313487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 940462) = 3538944 * k + 470231 := by
    unfold C
    simp [show (7077888 * k + 940462) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 470231) = 10616832 * k + 1410694 := by
    unfold C
    simp [show (3538944 * k + 470231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1410694) = 5308416 * k + 705347 := by
    unfold C
    simp [show (10616832 * k + 1410694) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 705347) = 15925248 * k + 2116042 := by
    unfold C
    simp [show (5308416 * k + 705347) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2116042) = 7962624 * k + 1058021 := by
    unfold C
    simp [show (15925248 * k + 2116042) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1058021) = 23887872 * k + 3174064 := by
    unfold C
    simp [show (7962624 * k + 1058021) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3174064) = 11943936 * k + 1587032 := by
    unfold C
    simp [show (23887872 * k + 3174064) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1587032) = 5971968 * k + 793516 := by
    unfold C
    simp [show (11943936 * k + 1587032) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 793516) = 2985984 * k + 396758 := by
    unfold C
    simp [show (5971968 * k + 793516) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 396758) = 1492992 * k + 198379 := by
    unfold C
    simp [show (2985984 * k + 396758) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 198379) = 4478976 * k + 595138 := by
    unfold C
    simp [show (1492992 * k + 198379) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 595138) = 2239488 * k + 297569 := by
    unfold C
    simp [show (4478976 * k + 595138) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 297569) = 6718464 * k + 892708 := by
    unfold C
    simp [show (2239488 * k + 297569) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 892708) = 3359232 * k + 446354 := by
    unfold C
    simp [show (6718464 * k + 892708) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 446354) = 1679616 * k + 223177 := by
    unfold C
    simp [show (3359232 * k + 446354) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 223177) = 5038848 * k + 669532 := by
    unfold C
    simp [show (1679616 * k + 223177) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 669532) = 2519424 * k + 334766 := by
    unfold C
    simp [show (5038848 * k + 669532) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 334766) = 1259712 * k + 167383 := by
    unfold C
    simp [show (2519424 * k + 334766) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 167383) = 3779136 * k + 502150 := by
    unfold C
    simp [show (1259712 * k + 167383) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 502150) = 1889568 * k + 251075 := by
    unfold C
    simp [show (3779136 * k + 502150) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 251075) = 5668704 * k + 753226 := by
    unfold C
    simp [show (1889568 * k + 251075) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 753226) = 2834352 * k + 376613 := by
    unfold C
    simp [show (5668704 * k + 753226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 376613) = 8503056 * k + 1129840 := by
    unfold C
    simp [show (2834352 * k + 376613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1129840) = 4251528 * k + 564920 := by
    unfold C
    simp [show (8503056 * k + 1129840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 564920) = 2125764 * k + 282460 := by
    unfold C
    simp [show (4251528 * k + 564920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 282460) = 1062882 * k + 141230 := by
    unfold C
    simp [show (2125764 * k + 282460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 141230) = 531441 * k + 70615 := by
    unfold C
    simp [show (1062882 * k + 141230) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 139327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 139327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_139375 : ∀ k : Nat,
    iterate (1048576 * k + 139375) 32 = 531441 * k + 70639 ∧
      531441 * k + 70639 < 1048576 * k + 139375 := by
  intro k
  have h1 : C (1048576 * k + 139375) = 3145728 * k + 418126 := by
    unfold C
    simp [show (1048576 * k + 139375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 418126) = 1572864 * k + 209063 := by
    unfold C
    simp [show (3145728 * k + 418126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 209063) = 4718592 * k + 627190 := by
    unfold C
    simp [show (1572864 * k + 209063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 627190) = 2359296 * k + 313595 := by
    unfold C
    simp [show (4718592 * k + 627190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 313595) = 7077888 * k + 940786 := by
    unfold C
    simp [show (2359296 * k + 313595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 940786) = 3538944 * k + 470393 := by
    unfold C
    simp [show (7077888 * k + 940786) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 470393) = 10616832 * k + 1411180 := by
    unfold C
    simp [show (3538944 * k + 470393) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1411180) = 5308416 * k + 705590 := by
    unfold C
    simp [show (10616832 * k + 1411180) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 705590) = 2654208 * k + 352795 := by
    unfold C
    simp [show (5308416 * k + 705590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 352795) = 7962624 * k + 1058386 := by
    unfold C
    simp [show (2654208 * k + 352795) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1058386) = 3981312 * k + 529193 := by
    unfold C
    simp [show (7962624 * k + 1058386) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 529193) = 11943936 * k + 1587580 := by
    unfold C
    simp [show (3981312 * k + 529193) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1587580) = 5971968 * k + 793790 := by
    unfold C
    simp [show (11943936 * k + 1587580) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 793790) = 2985984 * k + 396895 := by
    unfold C
    simp [show (5971968 * k + 793790) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 396895) = 8957952 * k + 1190686 := by
    unfold C
    simp [show (2985984 * k + 396895) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1190686) = 4478976 * k + 595343 := by
    unfold C
    simp [show (8957952 * k + 1190686) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 595343) = 13436928 * k + 1786030 := by
    unfold C
    simp [show (4478976 * k + 595343) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1786030) = 6718464 * k + 893015 := by
    unfold C
    simp [show (13436928 * k + 1786030) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 893015) = 20155392 * k + 2679046 := by
    unfold C
    simp [show (6718464 * k + 893015) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2679046) = 10077696 * k + 1339523 := by
    unfold C
    simp [show (20155392 * k + 2679046) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1339523) = 30233088 * k + 4018570 := by
    unfold C
    simp [show (10077696 * k + 1339523) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4018570) = 15116544 * k + 2009285 := by
    unfold C
    simp [show (30233088 * k + 4018570) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2009285) = 45349632 * k + 6027856 := by
    unfold C
    simp [show (15116544 * k + 2009285) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 6027856) = 22674816 * k + 3013928 := by
    unfold C
    simp [show (45349632 * k + 6027856) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3013928) = 11337408 * k + 1506964 := by
    unfold C
    simp [show (22674816 * k + 3013928) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1506964) = 5668704 * k + 753482 := by
    unfold C
    simp [show (11337408 * k + 1506964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 753482) = 2834352 * k + 376741 := by
    unfold C
    simp [show (5668704 * k + 753482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 376741) = 8503056 * k + 1130224 := by
    unfold C
    simp [show (2834352 * k + 376741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1130224) = 4251528 * k + 565112 := by
    unfold C
    simp [show (8503056 * k + 1130224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 565112) = 2125764 * k + 282556 := by
    unfold C
    simp [show (4251528 * k + 565112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 282556) = 1062882 * k + 141278 := by
    unfold C
    simp [show (2125764 * k + 282556) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 141278) = 531441 * k + 70639 := by
    unfold C
    simp [show (1062882 * k + 141278) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 139375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 139375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_139487 : ∀ k : Nat,
    iterate (1048576 * k + 139487) 32 = 531441 * k + 70696 ∧
      531441 * k + 70696 < 1048576 * k + 139487 := by
  intro k
  have h1 : C (1048576 * k + 139487) = 3145728 * k + 418462 := by
    unfold C
    simp [show (1048576 * k + 139487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 418462) = 1572864 * k + 209231 := by
    unfold C
    simp [show (3145728 * k + 418462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 209231) = 4718592 * k + 627694 := by
    unfold C
    simp [show (1572864 * k + 209231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 627694) = 2359296 * k + 313847 := by
    unfold C
    simp [show (4718592 * k + 627694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 313847) = 7077888 * k + 941542 := by
    unfold C
    simp [show (2359296 * k + 313847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 941542) = 3538944 * k + 470771 := by
    unfold C
    simp [show (7077888 * k + 941542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 470771) = 10616832 * k + 1412314 := by
    unfold C
    simp [show (3538944 * k + 470771) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1412314) = 5308416 * k + 706157 := by
    unfold C
    simp [show (10616832 * k + 1412314) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 706157) = 15925248 * k + 2118472 := by
    unfold C
    simp [show (5308416 * k + 706157) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2118472) = 7962624 * k + 1059236 := by
    unfold C
    simp [show (15925248 * k + 2118472) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1059236) = 3981312 * k + 529618 := by
    unfold C
    simp [show (7962624 * k + 1059236) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 529618) = 1990656 * k + 264809 := by
    unfold C
    simp [show (3981312 * k + 529618) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 264809) = 5971968 * k + 794428 := by
    unfold C
    simp [show (1990656 * k + 264809) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 794428) = 2985984 * k + 397214 := by
    unfold C
    simp [show (5971968 * k + 794428) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 397214) = 1492992 * k + 198607 := by
    unfold C
    simp [show (2985984 * k + 397214) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 198607) = 4478976 * k + 595822 := by
    unfold C
    simp [show (1492992 * k + 198607) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 595822) = 2239488 * k + 297911 := by
    unfold C
    simp [show (4478976 * k + 595822) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 297911) = 6718464 * k + 893734 := by
    unfold C
    simp [show (2239488 * k + 297911) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 893734) = 3359232 * k + 446867 := by
    unfold C
    simp [show (6718464 * k + 893734) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 446867) = 10077696 * k + 1340602 := by
    unfold C
    simp [show (3359232 * k + 446867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1340602) = 5038848 * k + 670301 := by
    unfold C
    simp [show (10077696 * k + 1340602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 670301) = 15116544 * k + 2010904 := by
    unfold C
    simp [show (5038848 * k + 670301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2010904) = 7558272 * k + 1005452 := by
    unfold C
    simp [show (15116544 * k + 2010904) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1005452) = 3779136 * k + 502726 := by
    unfold C
    simp [show (7558272 * k + 1005452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 502726) = 1889568 * k + 251363 := by
    unfold C
    simp [show (3779136 * k + 502726) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 251363) = 5668704 * k + 754090 := by
    unfold C
    simp [show (1889568 * k + 251363) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 754090) = 2834352 * k + 377045 := by
    unfold C
    simp [show (5668704 * k + 754090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 377045) = 8503056 * k + 1131136 := by
    unfold C
    simp [show (2834352 * k + 377045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1131136) = 4251528 * k + 565568 := by
    unfold C
    simp [show (8503056 * k + 1131136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 565568) = 2125764 * k + 282784 := by
    unfold C
    simp [show (4251528 * k + 565568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 282784) = 1062882 * k + 141392 := by
    unfold C
    simp [show (2125764 * k + 282784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 141392) = 531441 * k + 70696 := by
    unfold C
    simp [show (1062882 * k + 141392) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 139487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 139487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_139931 : ∀ k : Nat,
    iterate (1048576 * k + 139931) 32 = 531441 * k + 70921 ∧
      531441 * k + 70921 < 1048576 * k + 139931 := by
  intro k
  have h1 : C (1048576 * k + 139931) = 3145728 * k + 419794 := by
    unfold C
    simp [show (1048576 * k + 139931) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 419794) = 1572864 * k + 209897 := by
    unfold C
    simp [show (3145728 * k + 419794) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 209897) = 4718592 * k + 629692 := by
    unfold C
    simp [show (1572864 * k + 209897) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 629692) = 2359296 * k + 314846 := by
    unfold C
    simp [show (4718592 * k + 629692) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 314846) = 1179648 * k + 157423 := by
    unfold C
    simp [show (2359296 * k + 314846) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 157423) = 3538944 * k + 472270 := by
    unfold C
    simp [show (1179648 * k + 157423) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 472270) = 1769472 * k + 236135 := by
    unfold C
    simp [show (3538944 * k + 472270) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 236135) = 5308416 * k + 708406 := by
    unfold C
    simp [show (1769472 * k + 236135) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 708406) = 2654208 * k + 354203 := by
    unfold C
    simp [show (5308416 * k + 708406) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 354203) = 7962624 * k + 1062610 := by
    unfold C
    simp [show (2654208 * k + 354203) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1062610) = 3981312 * k + 531305 := by
    unfold C
    simp [show (7962624 * k + 1062610) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 531305) = 11943936 * k + 1593916 := by
    unfold C
    simp [show (3981312 * k + 531305) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1593916) = 5971968 * k + 796958 := by
    unfold C
    simp [show (11943936 * k + 1593916) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 796958) = 2985984 * k + 398479 := by
    unfold C
    simp [show (5971968 * k + 796958) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 398479) = 8957952 * k + 1195438 := by
    unfold C
    simp [show (2985984 * k + 398479) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1195438) = 4478976 * k + 597719 := by
    unfold C
    simp [show (8957952 * k + 1195438) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 597719) = 13436928 * k + 1793158 := by
    unfold C
    simp [show (4478976 * k + 597719) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1793158) = 6718464 * k + 896579 := by
    unfold C
    simp [show (13436928 * k + 1793158) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 896579) = 20155392 * k + 2689738 := by
    unfold C
    simp [show (6718464 * k + 896579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2689738) = 10077696 * k + 1344869 := by
    unfold C
    simp [show (20155392 * k + 2689738) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1344869) = 30233088 * k + 4034608 := by
    unfold C
    simp [show (10077696 * k + 1344869) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4034608) = 15116544 * k + 2017304 := by
    unfold C
    simp [show (30233088 * k + 4034608) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2017304) = 7558272 * k + 1008652 := by
    unfold C
    simp [show (15116544 * k + 2017304) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1008652) = 3779136 * k + 504326 := by
    unfold C
    simp [show (7558272 * k + 1008652) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 504326) = 1889568 * k + 252163 := by
    unfold C
    simp [show (3779136 * k + 504326) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 252163) = 5668704 * k + 756490 := by
    unfold C
    simp [show (1889568 * k + 252163) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 756490) = 2834352 * k + 378245 := by
    unfold C
    simp [show (5668704 * k + 756490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 378245) = 8503056 * k + 1134736 := by
    unfold C
    simp [show (2834352 * k + 378245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1134736) = 4251528 * k + 567368 := by
    unfold C
    simp [show (8503056 * k + 1134736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 567368) = 2125764 * k + 283684 := by
    unfold C
    simp [show (4251528 * k + 567368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 283684) = 1062882 * k + 141842 := by
    unfold C
    simp [show (2125764 * k + 283684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 141842) = 531441 * k + 70921 := by
    unfold C
    simp [show (1062882 * k + 141842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 139931) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 139931)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_140027 : ∀ k : Nat,
    iterate (1048576 * k + 140027) 32 = 531441 * k + 70970 ∧
      531441 * k + 70970 < 1048576 * k + 140027 := by
  intro k
  have h1 : C (1048576 * k + 140027) = 3145728 * k + 420082 := by
    unfold C
    simp [show (1048576 * k + 140027) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 420082) = 1572864 * k + 210041 := by
    unfold C
    simp [show (3145728 * k + 420082) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 210041) = 4718592 * k + 630124 := by
    unfold C
    simp [show (1572864 * k + 210041) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 630124) = 2359296 * k + 315062 := by
    unfold C
    simp [show (4718592 * k + 630124) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 315062) = 1179648 * k + 157531 := by
    unfold C
    simp [show (2359296 * k + 315062) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 157531) = 3538944 * k + 472594 := by
    unfold C
    simp [show (1179648 * k + 157531) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 472594) = 1769472 * k + 236297 := by
    unfold C
    simp [show (3538944 * k + 472594) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 236297) = 5308416 * k + 708892 := by
    unfold C
    simp [show (1769472 * k + 236297) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 708892) = 2654208 * k + 354446 := by
    unfold C
    simp [show (5308416 * k + 708892) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 354446) = 1327104 * k + 177223 := by
    unfold C
    simp [show (2654208 * k + 354446) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 177223) = 3981312 * k + 531670 := by
    unfold C
    simp [show (1327104 * k + 177223) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 531670) = 1990656 * k + 265835 := by
    unfold C
    simp [show (3981312 * k + 531670) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 265835) = 5971968 * k + 797506 := by
    unfold C
    simp [show (1990656 * k + 265835) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 797506) = 2985984 * k + 398753 := by
    unfold C
    simp [show (5971968 * k + 797506) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 398753) = 8957952 * k + 1196260 := by
    unfold C
    simp [show (2985984 * k + 398753) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1196260) = 4478976 * k + 598130 := by
    unfold C
    simp [show (8957952 * k + 1196260) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 598130) = 2239488 * k + 299065 := by
    unfold C
    simp [show (4478976 * k + 598130) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 299065) = 6718464 * k + 897196 := by
    unfold C
    simp [show (2239488 * k + 299065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 897196) = 3359232 * k + 448598 := by
    unfold C
    simp [show (6718464 * k + 897196) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 448598) = 1679616 * k + 224299 := by
    unfold C
    simp [show (3359232 * k + 448598) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 224299) = 5038848 * k + 672898 := by
    unfold C
    simp [show (1679616 * k + 224299) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 672898) = 2519424 * k + 336449 := by
    unfold C
    simp [show (5038848 * k + 672898) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 336449) = 7558272 * k + 1009348 := by
    unfold C
    simp [show (2519424 * k + 336449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1009348) = 3779136 * k + 504674 := by
    unfold C
    simp [show (7558272 * k + 1009348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 504674) = 1889568 * k + 252337 := by
    unfold C
    simp [show (3779136 * k + 504674) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 252337) = 5668704 * k + 757012 := by
    unfold C
    simp [show (1889568 * k + 252337) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 757012) = 2834352 * k + 378506 := by
    unfold C
    simp [show (5668704 * k + 757012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 378506) = 1417176 * k + 189253 := by
    unfold C
    simp [show (2834352 * k + 378506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 189253) = 4251528 * k + 567760 := by
    unfold C
    simp [show (1417176 * k + 189253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 567760) = 2125764 * k + 283880 := by
    unfold C
    simp [show (4251528 * k + 567760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 283880) = 1062882 * k + 141940 := by
    unfold C
    simp [show (2125764 * k + 283880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 141940) = 531441 * k + 70970 := by
    unfold C
    simp [show (1062882 * k + 141940) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 140027) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 140027)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_140543 : ∀ k : Nat,
    iterate (1048576 * k + 140543) 32 = 531441 * k + 71231 ∧
      531441 * k + 71231 < 1048576 * k + 140543 := by
  intro k
  have h1 : C (1048576 * k + 140543) = 3145728 * k + 421630 := by
    unfold C
    simp [show (1048576 * k + 140543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 421630) = 1572864 * k + 210815 := by
    unfold C
    simp [show (3145728 * k + 421630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 210815) = 4718592 * k + 632446 := by
    unfold C
    simp [show (1572864 * k + 210815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 632446) = 2359296 * k + 316223 := by
    unfold C
    simp [show (4718592 * k + 632446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 316223) = 7077888 * k + 948670 := by
    unfold C
    simp [show (2359296 * k + 316223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 948670) = 3538944 * k + 474335 := by
    unfold C
    simp [show (7077888 * k + 948670) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 474335) = 10616832 * k + 1423006 := by
    unfold C
    simp [show (3538944 * k + 474335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1423006) = 5308416 * k + 711503 := by
    unfold C
    simp [show (10616832 * k + 1423006) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 711503) = 15925248 * k + 2134510 := by
    unfold C
    simp [show (5308416 * k + 711503) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2134510) = 7962624 * k + 1067255 := by
    unfold C
    simp [show (15925248 * k + 2134510) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1067255) = 23887872 * k + 3201766 := by
    unfold C
    simp [show (7962624 * k + 1067255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3201766) = 11943936 * k + 1600883 := by
    unfold C
    simp [show (23887872 * k + 3201766) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1600883) = 35831808 * k + 4802650 := by
    unfold C
    simp [show (11943936 * k + 1600883) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 4802650) = 17915904 * k + 2401325 := by
    unfold C
    simp [show (35831808 * k + 4802650) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2401325) = 53747712 * k + 7203976 := by
    unfold C
    simp [show (17915904 * k + 2401325) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 7203976) = 26873856 * k + 3601988 := by
    unfold C
    simp [show (53747712 * k + 7203976) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 3601988) = 13436928 * k + 1800994 := by
    unfold C
    simp [show (26873856 * k + 3601988) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1800994) = 6718464 * k + 900497 := by
    unfold C
    simp [show (13436928 * k + 1800994) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 900497) = 20155392 * k + 2701492 := by
    unfold C
    simp [show (6718464 * k + 900497) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2701492) = 10077696 * k + 1350746 := by
    unfold C
    simp [show (20155392 * k + 2701492) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1350746) = 5038848 * k + 675373 := by
    unfold C
    simp [show (10077696 * k + 1350746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 675373) = 15116544 * k + 2026120 := by
    unfold C
    simp [show (5038848 * k + 675373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2026120) = 7558272 * k + 1013060 := by
    unfold C
    simp [show (15116544 * k + 2026120) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1013060) = 3779136 * k + 506530 := by
    unfold C
    simp [show (7558272 * k + 1013060) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 506530) = 1889568 * k + 253265 := by
    unfold C
    simp [show (3779136 * k + 506530) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 253265) = 5668704 * k + 759796 := by
    unfold C
    simp [show (1889568 * k + 253265) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 759796) = 2834352 * k + 379898 := by
    unfold C
    simp [show (5668704 * k + 759796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 379898) = 1417176 * k + 189949 := by
    unfold C
    simp [show (2834352 * k + 379898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 189949) = 4251528 * k + 569848 := by
    unfold C
    simp [show (1417176 * k + 189949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 569848) = 2125764 * k + 284924 := by
    unfold C
    simp [show (4251528 * k + 569848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 284924) = 1062882 * k + 142462 := by
    unfold C
    simp [show (2125764 * k + 284924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 142462) = 531441 * k + 71231 := by
    unfold C
    simp [show (1062882 * k + 142462) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 140543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 140543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_140703 : ∀ k : Nat,
    iterate (1048576 * k + 140703) 32 = 531441 * k + 71312 ∧
      531441 * k + 71312 < 1048576 * k + 140703 := by
  intro k
  have h1 : C (1048576 * k + 140703) = 3145728 * k + 422110 := by
    unfold C
    simp [show (1048576 * k + 140703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 422110) = 1572864 * k + 211055 := by
    unfold C
    simp [show (3145728 * k + 422110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 211055) = 4718592 * k + 633166 := by
    unfold C
    simp [show (1572864 * k + 211055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 633166) = 2359296 * k + 316583 := by
    unfold C
    simp [show (4718592 * k + 633166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 316583) = 7077888 * k + 949750 := by
    unfold C
    simp [show (2359296 * k + 316583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 949750) = 3538944 * k + 474875 := by
    unfold C
    simp [show (7077888 * k + 949750) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 474875) = 10616832 * k + 1424626 := by
    unfold C
    simp [show (3538944 * k + 474875) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1424626) = 5308416 * k + 712313 := by
    unfold C
    simp [show (10616832 * k + 1424626) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 712313) = 15925248 * k + 2136940 := by
    unfold C
    simp [show (5308416 * k + 712313) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2136940) = 7962624 * k + 1068470 := by
    unfold C
    simp [show (15925248 * k + 2136940) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1068470) = 3981312 * k + 534235 := by
    unfold C
    simp [show (7962624 * k + 1068470) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 534235) = 11943936 * k + 1602706 := by
    unfold C
    simp [show (3981312 * k + 534235) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1602706) = 5971968 * k + 801353 := by
    unfold C
    simp [show (11943936 * k + 1602706) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 801353) = 17915904 * k + 2404060 := by
    unfold C
    simp [show (5971968 * k + 801353) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2404060) = 8957952 * k + 1202030 := by
    unfold C
    simp [show (17915904 * k + 2404060) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1202030) = 4478976 * k + 601015 := by
    unfold C
    simp [show (8957952 * k + 1202030) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 601015) = 13436928 * k + 1803046 := by
    unfold C
    simp [show (4478976 * k + 601015) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1803046) = 6718464 * k + 901523 := by
    unfold C
    simp [show (13436928 * k + 1803046) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 901523) = 20155392 * k + 2704570 := by
    unfold C
    simp [show (6718464 * k + 901523) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2704570) = 10077696 * k + 1352285 := by
    unfold C
    simp [show (20155392 * k + 2704570) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1352285) = 30233088 * k + 4056856 := by
    unfold C
    simp [show (10077696 * k + 1352285) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4056856) = 15116544 * k + 2028428 := by
    unfold C
    simp [show (30233088 * k + 4056856) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2028428) = 7558272 * k + 1014214 := by
    unfold C
    simp [show (15116544 * k + 2028428) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1014214) = 3779136 * k + 507107 := by
    unfold C
    simp [show (7558272 * k + 1014214) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 507107) = 11337408 * k + 1521322 := by
    unfold C
    simp [show (3779136 * k + 507107) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1521322) = 5668704 * k + 760661 := by
    unfold C
    simp [show (11337408 * k + 1521322) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 760661) = 17006112 * k + 2281984 := by
    unfold C
    simp [show (5668704 * k + 760661) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2281984) = 8503056 * k + 1140992 := by
    unfold C
    simp [show (17006112 * k + 2281984) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1140992) = 4251528 * k + 570496 := by
    unfold C
    simp [show (8503056 * k + 1140992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 570496) = 2125764 * k + 285248 := by
    unfold C
    simp [show (4251528 * k + 570496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 285248) = 1062882 * k + 142624 := by
    unfold C
    simp [show (2125764 * k + 285248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 142624) = 531441 * k + 71312 := by
    unfold C
    simp [show (1062882 * k + 142624) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 140703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 140703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_141423 : ∀ k : Nat,
    iterate (1048576 * k + 141423) 32 = 531441 * k + 71677 ∧
      531441 * k + 71677 < 1048576 * k + 141423 := by
  intro k
  have h1 : C (1048576 * k + 141423) = 3145728 * k + 424270 := by
    unfold C
    simp [show (1048576 * k + 141423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 424270) = 1572864 * k + 212135 := by
    unfold C
    simp [show (3145728 * k + 424270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 212135) = 4718592 * k + 636406 := by
    unfold C
    simp [show (1572864 * k + 212135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 636406) = 2359296 * k + 318203 := by
    unfold C
    simp [show (4718592 * k + 636406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 318203) = 7077888 * k + 954610 := by
    unfold C
    simp [show (2359296 * k + 318203) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 954610) = 3538944 * k + 477305 := by
    unfold C
    simp [show (7077888 * k + 954610) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 477305) = 10616832 * k + 1431916 := by
    unfold C
    simp [show (3538944 * k + 477305) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1431916) = 5308416 * k + 715958 := by
    unfold C
    simp [show (10616832 * k + 1431916) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 715958) = 2654208 * k + 357979 := by
    unfold C
    simp [show (5308416 * k + 715958) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 357979) = 7962624 * k + 1073938 := by
    unfold C
    simp [show (2654208 * k + 357979) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1073938) = 3981312 * k + 536969 := by
    unfold C
    simp [show (7962624 * k + 1073938) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 536969) = 11943936 * k + 1610908 := by
    unfold C
    simp [show (3981312 * k + 536969) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1610908) = 5971968 * k + 805454 := by
    unfold C
    simp [show (11943936 * k + 1610908) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 805454) = 2985984 * k + 402727 := by
    unfold C
    simp [show (5971968 * k + 805454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 402727) = 8957952 * k + 1208182 := by
    unfold C
    simp [show (2985984 * k + 402727) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1208182) = 4478976 * k + 604091 := by
    unfold C
    simp [show (8957952 * k + 1208182) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 604091) = 13436928 * k + 1812274 := by
    unfold C
    simp [show (4478976 * k + 604091) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1812274) = 6718464 * k + 906137 := by
    unfold C
    simp [show (13436928 * k + 1812274) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 906137) = 20155392 * k + 2718412 := by
    unfold C
    simp [show (6718464 * k + 906137) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2718412) = 10077696 * k + 1359206 := by
    unfold C
    simp [show (20155392 * k + 2718412) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1359206) = 5038848 * k + 679603 := by
    unfold C
    simp [show (10077696 * k + 1359206) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 679603) = 15116544 * k + 2038810 := by
    unfold C
    simp [show (5038848 * k + 679603) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2038810) = 7558272 * k + 1019405 := by
    unfold C
    simp [show (15116544 * k + 2038810) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1019405) = 22674816 * k + 3058216 := by
    unfold C
    simp [show (7558272 * k + 1019405) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3058216) = 11337408 * k + 1529108 := by
    unfold C
    simp [show (22674816 * k + 3058216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1529108) = 5668704 * k + 764554 := by
    unfold C
    simp [show (11337408 * k + 1529108) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 764554) = 2834352 * k + 382277 := by
    unfold C
    simp [show (5668704 * k + 764554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 382277) = 8503056 * k + 1146832 := by
    unfold C
    simp [show (2834352 * k + 382277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1146832) = 4251528 * k + 573416 := by
    unfold C
    simp [show (8503056 * k + 1146832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 573416) = 2125764 * k + 286708 := by
    unfold C
    simp [show (4251528 * k + 573416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 286708) = 1062882 * k + 143354 := by
    unfold C
    simp [show (2125764 * k + 286708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 143354) = 531441 * k + 71677 := by
    unfold C
    simp [show (1062882 * k + 143354) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 141423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 141423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_141519 : ∀ k : Nat,
    iterate (1048576 * k + 141519) 32 = 531441 * k + 71726 ∧
      531441 * k + 71726 < 1048576 * k + 141519 := by
  intro k
  have h1 : C (1048576 * k + 141519) = 3145728 * k + 424558 := by
    unfold C
    simp [show (1048576 * k + 141519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 424558) = 1572864 * k + 212279 := by
    unfold C
    simp [show (3145728 * k + 424558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 212279) = 4718592 * k + 636838 := by
    unfold C
    simp [show (1572864 * k + 212279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 636838) = 2359296 * k + 318419 := by
    unfold C
    simp [show (4718592 * k + 636838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 318419) = 7077888 * k + 955258 := by
    unfold C
    simp [show (2359296 * k + 318419) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 955258) = 3538944 * k + 477629 := by
    unfold C
    simp [show (7077888 * k + 955258) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 477629) = 10616832 * k + 1432888 := by
    unfold C
    simp [show (3538944 * k + 477629) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1432888) = 5308416 * k + 716444 := by
    unfold C
    simp [show (10616832 * k + 1432888) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 716444) = 2654208 * k + 358222 := by
    unfold C
    simp [show (5308416 * k + 716444) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 358222) = 1327104 * k + 179111 := by
    unfold C
    simp [show (2654208 * k + 358222) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 179111) = 3981312 * k + 537334 := by
    unfold C
    simp [show (1327104 * k + 179111) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 537334) = 1990656 * k + 268667 := by
    unfold C
    simp [show (3981312 * k + 537334) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 268667) = 5971968 * k + 806002 := by
    unfold C
    simp [show (1990656 * k + 268667) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 806002) = 2985984 * k + 403001 := by
    unfold C
    simp [show (5971968 * k + 806002) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 403001) = 8957952 * k + 1209004 := by
    unfold C
    simp [show (2985984 * k + 403001) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1209004) = 4478976 * k + 604502 := by
    unfold C
    simp [show (8957952 * k + 1209004) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 604502) = 2239488 * k + 302251 := by
    unfold C
    simp [show (4478976 * k + 604502) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 302251) = 6718464 * k + 906754 := by
    unfold C
    simp [show (2239488 * k + 302251) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 906754) = 3359232 * k + 453377 := by
    unfold C
    simp [show (6718464 * k + 906754) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 453377) = 10077696 * k + 1360132 := by
    unfold C
    simp [show (3359232 * k + 453377) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1360132) = 5038848 * k + 680066 := by
    unfold C
    simp [show (10077696 * k + 1360132) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 680066) = 2519424 * k + 340033 := by
    unfold C
    simp [show (5038848 * k + 680066) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 340033) = 7558272 * k + 1020100 := by
    unfold C
    simp [show (2519424 * k + 340033) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1020100) = 3779136 * k + 510050 := by
    unfold C
    simp [show (7558272 * k + 1020100) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 510050) = 1889568 * k + 255025 := by
    unfold C
    simp [show (3779136 * k + 510050) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 255025) = 5668704 * k + 765076 := by
    unfold C
    simp [show (1889568 * k + 255025) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 765076) = 2834352 * k + 382538 := by
    unfold C
    simp [show (5668704 * k + 765076) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 382538) = 1417176 * k + 191269 := by
    unfold C
    simp [show (2834352 * k + 382538) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 191269) = 4251528 * k + 573808 := by
    unfold C
    simp [show (1417176 * k + 191269) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 573808) = 2125764 * k + 286904 := by
    unfold C
    simp [show (4251528 * k + 573808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 286904) = 1062882 * k + 143452 := by
    unfold C
    simp [show (2125764 * k + 286904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 143452) = 531441 * k + 71726 := by
    unfold C
    simp [show (1062882 * k + 143452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 141519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 141519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_141567 : ∀ k : Nat,
    iterate (1048576 * k + 141567) 32 = 531441 * k + 71750 ∧
      531441 * k + 71750 < 1048576 * k + 141567 := by
  intro k
  have h1 : C (1048576 * k + 141567) = 3145728 * k + 424702 := by
    unfold C
    simp [show (1048576 * k + 141567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 424702) = 1572864 * k + 212351 := by
    unfold C
    simp [show (3145728 * k + 424702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 212351) = 4718592 * k + 637054 := by
    unfold C
    simp [show (1572864 * k + 212351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 637054) = 2359296 * k + 318527 := by
    unfold C
    simp [show (4718592 * k + 637054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 318527) = 7077888 * k + 955582 := by
    unfold C
    simp [show (2359296 * k + 318527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 955582) = 3538944 * k + 477791 := by
    unfold C
    simp [show (7077888 * k + 955582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 477791) = 10616832 * k + 1433374 := by
    unfold C
    simp [show (3538944 * k + 477791) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1433374) = 5308416 * k + 716687 := by
    unfold C
    simp [show (10616832 * k + 1433374) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 716687) = 15925248 * k + 2150062 := by
    unfold C
    simp [show (5308416 * k + 716687) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2150062) = 7962624 * k + 1075031 := by
    unfold C
    simp [show (15925248 * k + 2150062) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1075031) = 23887872 * k + 3225094 := by
    unfold C
    simp [show (7962624 * k + 1075031) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3225094) = 11943936 * k + 1612547 := by
    unfold C
    simp [show (23887872 * k + 3225094) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1612547) = 35831808 * k + 4837642 := by
    unfold C
    simp [show (11943936 * k + 1612547) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 4837642) = 17915904 * k + 2418821 := by
    unfold C
    simp [show (35831808 * k + 4837642) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2418821) = 53747712 * k + 7256464 := by
    unfold C
    simp [show (17915904 * k + 2418821) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 7256464) = 26873856 * k + 3628232 := by
    unfold C
    simp [show (53747712 * k + 7256464) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 3628232) = 13436928 * k + 1814116 := by
    unfold C
    simp [show (26873856 * k + 3628232) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1814116) = 6718464 * k + 907058 := by
    unfold C
    simp [show (13436928 * k + 1814116) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 907058) = 3359232 * k + 453529 := by
    unfold C
    simp [show (6718464 * k + 907058) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 453529) = 10077696 * k + 1360588 := by
    unfold C
    simp [show (3359232 * k + 453529) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1360588) = 5038848 * k + 680294 := by
    unfold C
    simp [show (10077696 * k + 1360588) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 680294) = 2519424 * k + 340147 := by
    unfold C
    simp [show (5038848 * k + 680294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 340147) = 7558272 * k + 1020442 := by
    unfold C
    simp [show (2519424 * k + 340147) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1020442) = 3779136 * k + 510221 := by
    unfold C
    simp [show (7558272 * k + 1020442) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 510221) = 11337408 * k + 1530664 := by
    unfold C
    simp [show (3779136 * k + 510221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1530664) = 5668704 * k + 765332 := by
    unfold C
    simp [show (11337408 * k + 1530664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 765332) = 2834352 * k + 382666 := by
    unfold C
    simp [show (5668704 * k + 765332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 382666) = 1417176 * k + 191333 := by
    unfold C
    simp [show (2834352 * k + 382666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 191333) = 4251528 * k + 574000 := by
    unfold C
    simp [show (1417176 * k + 191333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 574000) = 2125764 * k + 287000 := by
    unfold C
    simp [show (4251528 * k + 574000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 287000) = 1062882 * k + 143500 := by
    unfold C
    simp [show (2125764 * k + 287000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 143500) = 531441 * k + 71750 := by
    unfold C
    simp [show (1062882 * k + 143500) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 141567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 141567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_142247 : ∀ k : Nat,
    iterate (1048576 * k + 142247) 32 = 531441 * k + 72095 ∧
      531441 * k + 72095 < 1048576 * k + 142247 := by
  intro k
  have h1 : C (1048576 * k + 142247) = 3145728 * k + 426742 := by
    unfold C
    simp [show (1048576 * k + 142247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 426742) = 1572864 * k + 213371 := by
    unfold C
    simp [show (3145728 * k + 426742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 213371) = 4718592 * k + 640114 := by
    unfold C
    simp [show (1572864 * k + 213371) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 640114) = 2359296 * k + 320057 := by
    unfold C
    simp [show (4718592 * k + 640114) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 320057) = 7077888 * k + 960172 := by
    unfold C
    simp [show (2359296 * k + 320057) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 960172) = 3538944 * k + 480086 := by
    unfold C
    simp [show (7077888 * k + 960172) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 480086) = 1769472 * k + 240043 := by
    unfold C
    simp [show (3538944 * k + 480086) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 240043) = 5308416 * k + 720130 := by
    unfold C
    simp [show (1769472 * k + 240043) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 720130) = 2654208 * k + 360065 := by
    unfold C
    simp [show (5308416 * k + 720130) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 360065) = 7962624 * k + 1080196 := by
    unfold C
    simp [show (2654208 * k + 360065) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1080196) = 3981312 * k + 540098 := by
    unfold C
    simp [show (7962624 * k + 1080196) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 540098) = 1990656 * k + 270049 := by
    unfold C
    simp [show (3981312 * k + 540098) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 270049) = 5971968 * k + 810148 := by
    unfold C
    simp [show (1990656 * k + 270049) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 810148) = 2985984 * k + 405074 := by
    unfold C
    simp [show (5971968 * k + 810148) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 405074) = 1492992 * k + 202537 := by
    unfold C
    simp [show (2985984 * k + 405074) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 202537) = 4478976 * k + 607612 := by
    unfold C
    simp [show (1492992 * k + 202537) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 607612) = 2239488 * k + 303806 := by
    unfold C
    simp [show (4478976 * k + 607612) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 303806) = 1119744 * k + 151903 := by
    unfold C
    simp [show (2239488 * k + 303806) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 151903) = 3359232 * k + 455710 := by
    unfold C
    simp [show (1119744 * k + 151903) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 455710) = 1679616 * k + 227855 := by
    unfold C
    simp [show (3359232 * k + 455710) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 227855) = 5038848 * k + 683566 := by
    unfold C
    simp [show (1679616 * k + 227855) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 683566) = 2519424 * k + 341783 := by
    unfold C
    simp [show (5038848 * k + 683566) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 341783) = 7558272 * k + 1025350 := by
    unfold C
    simp [show (2519424 * k + 341783) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1025350) = 3779136 * k + 512675 := by
    unfold C
    simp [show (7558272 * k + 1025350) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 512675) = 11337408 * k + 1538026 := by
    unfold C
    simp [show (3779136 * k + 512675) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1538026) = 5668704 * k + 769013 := by
    unfold C
    simp [show (11337408 * k + 1538026) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 769013) = 17006112 * k + 2307040 := by
    unfold C
    simp [show (5668704 * k + 769013) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2307040) = 8503056 * k + 1153520 := by
    unfold C
    simp [show (17006112 * k + 2307040) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1153520) = 4251528 * k + 576760 := by
    unfold C
    simp [show (8503056 * k + 1153520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 576760) = 2125764 * k + 288380 := by
    unfold C
    simp [show (4251528 * k + 576760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 288380) = 1062882 * k + 144190 := by
    unfold C
    simp [show (2125764 * k + 288380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 144190) = 531441 * k + 72095 := by
    unfold C
    simp [show (1062882 * k + 144190) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 142247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 142247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard019
