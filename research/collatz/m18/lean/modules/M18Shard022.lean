import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard022

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_109735 : ∀ k : Nat,
    iterate (262144 * k + 109735) 29 = 177147 * k + 74156 ∧
      177147 * k + 74156 < 262144 * k + 109735 := by
  intro k
  have h1 : C (262144 * k + 109735) = 786432 * k + 329206 := by
    unfold C
    simp [show (262144 * k + 109735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 329206) = 393216 * k + 164603 := by
    unfold C
    simp [show (786432 * k + 329206) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 164603) = 1179648 * k + 493810 := by
    unfold C
    simp [show (393216 * k + 164603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 493810) = 589824 * k + 246905 := by
    unfold C
    simp [show (1179648 * k + 493810) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 246905) = 1769472 * k + 740716 := by
    unfold C
    simp [show (589824 * k + 246905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 740716) = 884736 * k + 370358 := by
    unfold C
    simp [show (1769472 * k + 740716) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 370358) = 442368 * k + 185179 := by
    unfold C
    simp [show (884736 * k + 370358) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 185179) = 1327104 * k + 555538 := by
    unfold C
    simp [show (442368 * k + 185179) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 555538) = 663552 * k + 277769 := by
    unfold C
    simp [show (1327104 * k + 555538) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 277769) = 1990656 * k + 833308 := by
    unfold C
    simp [show (663552 * k + 277769) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 833308) = 995328 * k + 416654 := by
    unfold C
    simp [show (1990656 * k + 833308) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 416654) = 497664 * k + 208327 := by
    unfold C
    simp [show (995328 * k + 416654) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 208327) = 1492992 * k + 624982 := by
    unfold C
    simp [show (497664 * k + 208327) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 624982) = 746496 * k + 312491 := by
    unfold C
    simp [show (1492992 * k + 624982) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 312491) = 2239488 * k + 937474 := by
    unfold C
    simp [show (746496 * k + 312491) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 937474) = 1119744 * k + 468737 := by
    unfold C
    simp [show (2239488 * k + 937474) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 468737) = 3359232 * k + 1406212 := by
    unfold C
    simp [show (1119744 * k + 468737) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1406212) = 1679616 * k + 703106 := by
    unfold C
    simp [show (3359232 * k + 1406212) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 703106) = 839808 * k + 351553 := by
    unfold C
    simp [show (1679616 * k + 703106) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 351553) = 2519424 * k + 1054660 := by
    unfold C
    simp [show (839808 * k + 351553) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1054660) = 1259712 * k + 527330 := by
    unfold C
    simp [show (2519424 * k + 1054660) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 527330) = 629856 * k + 263665 := by
    unfold C
    simp [show (1259712 * k + 527330) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 263665) = 1889568 * k + 790996 := by
    unfold C
    simp [show (629856 * k + 263665) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 790996) = 944784 * k + 395498 := by
    unfold C
    simp [show (1889568 * k + 790996) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 395498) = 472392 * k + 197749 := by
    unfold C
    simp [show (944784 * k + 395498) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 197749) = 1417176 * k + 593248 := by
    unfold C
    simp [show (472392 * k + 197749) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 593248) = 708588 * k + 296624 := by
    unfold C
    simp [show (1417176 * k + 593248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 296624) = 354294 * k + 148312 := by
    unfold C
    simp [show (708588 * k + 296624) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 148312) = 177147 * k + 74156 := by
    unfold C
    simp [show (354294 * k + 148312) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 109735) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 109735))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_109823 : ∀ k : Nat,
    iterate (262144 * k + 109823) 29 = 177147 * k + 74215 ∧
      177147 * k + 74215 < 262144 * k + 109823 := by
  intro k
  have h1 : C (262144 * k + 109823) = 786432 * k + 329470 := by
    unfold C
    simp [show (262144 * k + 109823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 329470) = 393216 * k + 164735 := by
    unfold C
    simp [show (786432 * k + 329470) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 164735) = 1179648 * k + 494206 := by
    unfold C
    simp [show (393216 * k + 164735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 494206) = 589824 * k + 247103 := by
    unfold C
    simp [show (1179648 * k + 494206) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 247103) = 1769472 * k + 741310 := by
    unfold C
    simp [show (589824 * k + 247103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 741310) = 884736 * k + 370655 := by
    unfold C
    simp [show (1769472 * k + 741310) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 370655) = 2654208 * k + 1111966 := by
    unfold C
    simp [show (884736 * k + 370655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1111966) = 1327104 * k + 555983 := by
    unfold C
    simp [show (2654208 * k + 1111966) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 555983) = 3981312 * k + 1667950 := by
    unfold C
    simp [show (1327104 * k + 555983) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1667950) = 1990656 * k + 833975 := by
    unfold C
    simp [show (3981312 * k + 1667950) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 833975) = 5971968 * k + 2501926 := by
    unfold C
    simp [show (1990656 * k + 833975) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2501926) = 2985984 * k + 1250963 := by
    unfold C
    simp [show (5971968 * k + 2501926) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1250963) = 8957952 * k + 3752890 := by
    unfold C
    simp [show (2985984 * k + 1250963) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3752890) = 4478976 * k + 1876445 := by
    unfold C
    simp [show (8957952 * k + 3752890) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1876445) = 13436928 * k + 5629336 := by
    unfold C
    simp [show (4478976 * k + 1876445) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5629336) = 6718464 * k + 2814668 := by
    unfold C
    simp [show (13436928 * k + 5629336) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2814668) = 3359232 * k + 1407334 := by
    unfold C
    simp [show (6718464 * k + 2814668) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1407334) = 1679616 * k + 703667 := by
    unfold C
    simp [show (3359232 * k + 1407334) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 703667) = 5038848 * k + 2111002 := by
    unfold C
    simp [show (1679616 * k + 703667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2111002) = 2519424 * k + 1055501 := by
    unfold C
    simp [show (5038848 * k + 2111002) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1055501) = 7558272 * k + 3166504 := by
    unfold C
    simp [show (2519424 * k + 1055501) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3166504) = 3779136 * k + 1583252 := by
    unfold C
    simp [show (7558272 * k + 3166504) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1583252) = 1889568 * k + 791626 := by
    unfold C
    simp [show (3779136 * k + 1583252) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 791626) = 944784 * k + 395813 := by
    unfold C
    simp [show (1889568 * k + 791626) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 395813) = 2834352 * k + 1187440 := by
    unfold C
    simp [show (944784 * k + 395813) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1187440) = 1417176 * k + 593720 := by
    unfold C
    simp [show (2834352 * k + 1187440) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 593720) = 708588 * k + 296860 := by
    unfold C
    simp [show (1417176 * k + 593720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 296860) = 354294 * k + 148430 := by
    unfold C
    simp [show (708588 * k + 296860) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 148430) = 177147 * k + 74215 := by
    unfold C
    simp [show (354294 * k + 148430) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 109823) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 109823))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_110623 : ∀ k : Nat,
    iterate (262144 * k + 110623) 29 = 177147 * k + 74756 ∧
      177147 * k + 74756 < 262144 * k + 110623 := by
  intro k
  have h1 : C (262144 * k + 110623) = 786432 * k + 331870 := by
    unfold C
    simp [show (262144 * k + 110623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 331870) = 393216 * k + 165935 := by
    unfold C
    simp [show (786432 * k + 331870) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 165935) = 1179648 * k + 497806 := by
    unfold C
    simp [show (393216 * k + 165935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 497806) = 589824 * k + 248903 := by
    unfold C
    simp [show (1179648 * k + 497806) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 248903) = 1769472 * k + 746710 := by
    unfold C
    simp [show (589824 * k + 248903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 746710) = 884736 * k + 373355 := by
    unfold C
    simp [show (1769472 * k + 746710) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 373355) = 2654208 * k + 1120066 := by
    unfold C
    simp [show (884736 * k + 373355) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1120066) = 1327104 * k + 560033 := by
    unfold C
    simp [show (2654208 * k + 1120066) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 560033) = 3981312 * k + 1680100 := by
    unfold C
    simp [show (1327104 * k + 560033) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1680100) = 1990656 * k + 840050 := by
    unfold C
    simp [show (3981312 * k + 1680100) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 840050) = 995328 * k + 420025 := by
    unfold C
    simp [show (1990656 * k + 840050) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 420025) = 2985984 * k + 1260076 := by
    unfold C
    simp [show (995328 * k + 420025) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1260076) = 1492992 * k + 630038 := by
    unfold C
    simp [show (2985984 * k + 1260076) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 630038) = 746496 * k + 315019 := by
    unfold C
    simp [show (1492992 * k + 630038) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 315019) = 2239488 * k + 945058 := by
    unfold C
    simp [show (746496 * k + 315019) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 945058) = 1119744 * k + 472529 := by
    unfold C
    simp [show (2239488 * k + 945058) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 472529) = 3359232 * k + 1417588 := by
    unfold C
    simp [show (1119744 * k + 472529) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1417588) = 1679616 * k + 708794 := by
    unfold C
    simp [show (3359232 * k + 1417588) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 708794) = 839808 * k + 354397 := by
    unfold C
    simp [show (1679616 * k + 708794) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 354397) = 2519424 * k + 1063192 := by
    unfold C
    simp [show (839808 * k + 354397) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1063192) = 1259712 * k + 531596 := by
    unfold C
    simp [show (2519424 * k + 1063192) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 531596) = 629856 * k + 265798 := by
    unfold C
    simp [show (1259712 * k + 531596) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 265798) = 314928 * k + 132899 := by
    unfold C
    simp [show (629856 * k + 265798) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 132899) = 944784 * k + 398698 := by
    unfold C
    simp [show (314928 * k + 132899) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 398698) = 472392 * k + 199349 := by
    unfold C
    simp [show (944784 * k + 398698) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 199349) = 1417176 * k + 598048 := by
    unfold C
    simp [show (472392 * k + 199349) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 598048) = 708588 * k + 299024 := by
    unfold C
    simp [show (1417176 * k + 598048) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 299024) = 354294 * k + 149512 := by
    unfold C
    simp [show (708588 * k + 299024) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 149512) = 177147 * k + 74756 := by
    unfold C
    simp [show (354294 * k + 149512) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 110623) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 110623))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_111103 : ∀ k : Nat,
    iterate (262144 * k + 111103) 29 = 177147 * k + 75080 ∧
      177147 * k + 75080 < 262144 * k + 111103 := by
  intro k
  have h1 : C (262144 * k + 111103) = 786432 * k + 333310 := by
    unfold C
    simp [show (262144 * k + 111103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 333310) = 393216 * k + 166655 := by
    unfold C
    simp [show (786432 * k + 333310) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 166655) = 1179648 * k + 499966 := by
    unfold C
    simp [show (393216 * k + 166655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 499966) = 589824 * k + 249983 := by
    unfold C
    simp [show (1179648 * k + 499966) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 249983) = 1769472 * k + 749950 := by
    unfold C
    simp [show (589824 * k + 249983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 749950) = 884736 * k + 374975 := by
    unfold C
    simp [show (1769472 * k + 749950) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 374975) = 2654208 * k + 1124926 := by
    unfold C
    simp [show (884736 * k + 374975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1124926) = 1327104 * k + 562463 := by
    unfold C
    simp [show (2654208 * k + 1124926) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 562463) = 3981312 * k + 1687390 := by
    unfold C
    simp [show (1327104 * k + 562463) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1687390) = 1990656 * k + 843695 := by
    unfold C
    simp [show (3981312 * k + 1687390) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 843695) = 5971968 * k + 2531086 := by
    unfold C
    simp [show (1990656 * k + 843695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2531086) = 2985984 * k + 1265543 := by
    unfold C
    simp [show (5971968 * k + 2531086) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1265543) = 8957952 * k + 3796630 := by
    unfold C
    simp [show (2985984 * k + 1265543) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3796630) = 4478976 * k + 1898315 := by
    unfold C
    simp [show (8957952 * k + 3796630) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1898315) = 13436928 * k + 5694946 := by
    unfold C
    simp [show (4478976 * k + 1898315) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5694946) = 6718464 * k + 2847473 := by
    unfold C
    simp [show (13436928 * k + 5694946) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2847473) = 20155392 * k + 8542420 := by
    unfold C
    simp [show (6718464 * k + 2847473) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 8542420) = 10077696 * k + 4271210 := by
    unfold C
    simp [show (20155392 * k + 8542420) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 4271210) = 5038848 * k + 2135605 := by
    unfold C
    simp [show (10077696 * k + 4271210) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2135605) = 15116544 * k + 6406816 := by
    unfold C
    simp [show (5038848 * k + 2135605) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 6406816) = 7558272 * k + 3203408 := by
    unfold C
    simp [show (15116544 * k + 6406816) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 3203408) = 3779136 * k + 1601704 := by
    unfold C
    simp [show (7558272 * k + 3203408) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1601704) = 1889568 * k + 800852 := by
    unfold C
    simp [show (3779136 * k + 1601704) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 800852) = 944784 * k + 400426 := by
    unfold C
    simp [show (1889568 * k + 800852) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 400426) = 472392 * k + 200213 := by
    unfold C
    simp [show (944784 * k + 400426) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 200213) = 1417176 * k + 600640 := by
    unfold C
    simp [show (472392 * k + 200213) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 600640) = 708588 * k + 300320 := by
    unfold C
    simp [show (1417176 * k + 600640) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 300320) = 354294 * k + 150160 := by
    unfold C
    simp [show (708588 * k + 300320) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 150160) = 177147 * k + 75080 := by
    unfold C
    simp [show (354294 * k + 150160) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 111103) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 111103))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_111727 : ∀ k : Nat,
    iterate (262144 * k + 111727) 29 = 177147 * k + 75502 ∧
      177147 * k + 75502 < 262144 * k + 111727 := by
  intro k
  have h1 : C (262144 * k + 111727) = 786432 * k + 335182 := by
    unfold C
    simp [show (262144 * k + 111727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 335182) = 393216 * k + 167591 := by
    unfold C
    simp [show (786432 * k + 335182) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 167591) = 1179648 * k + 502774 := by
    unfold C
    simp [show (393216 * k + 167591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 502774) = 589824 * k + 251387 := by
    unfold C
    simp [show (1179648 * k + 502774) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 251387) = 1769472 * k + 754162 := by
    unfold C
    simp [show (589824 * k + 251387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 754162) = 884736 * k + 377081 := by
    unfold C
    simp [show (1769472 * k + 754162) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 377081) = 2654208 * k + 1131244 := by
    unfold C
    simp [show (884736 * k + 377081) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1131244) = 1327104 * k + 565622 := by
    unfold C
    simp [show (2654208 * k + 1131244) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 565622) = 663552 * k + 282811 := by
    unfold C
    simp [show (1327104 * k + 565622) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 282811) = 1990656 * k + 848434 := by
    unfold C
    simp [show (663552 * k + 282811) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 848434) = 995328 * k + 424217 := by
    unfold C
    simp [show (1990656 * k + 848434) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 424217) = 2985984 * k + 1272652 := by
    unfold C
    simp [show (995328 * k + 424217) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1272652) = 1492992 * k + 636326 := by
    unfold C
    simp [show (2985984 * k + 1272652) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 636326) = 746496 * k + 318163 := by
    unfold C
    simp [show (1492992 * k + 636326) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 318163) = 2239488 * k + 954490 := by
    unfold C
    simp [show (746496 * k + 318163) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 954490) = 1119744 * k + 477245 := by
    unfold C
    simp [show (2239488 * k + 954490) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 477245) = 3359232 * k + 1431736 := by
    unfold C
    simp [show (1119744 * k + 477245) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1431736) = 1679616 * k + 715868 := by
    unfold C
    simp [show (3359232 * k + 1431736) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 715868) = 839808 * k + 357934 := by
    unfold C
    simp [show (1679616 * k + 715868) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 357934) = 419904 * k + 178967 := by
    unfold C
    simp [show (839808 * k + 357934) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 178967) = 1259712 * k + 536902 := by
    unfold C
    simp [show (419904 * k + 178967) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 536902) = 629856 * k + 268451 := by
    unfold C
    simp [show (1259712 * k + 536902) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 268451) = 1889568 * k + 805354 := by
    unfold C
    simp [show (629856 * k + 268451) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 805354) = 944784 * k + 402677 := by
    unfold C
    simp [show (1889568 * k + 805354) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 402677) = 2834352 * k + 1208032 := by
    unfold C
    simp [show (944784 * k + 402677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1208032) = 1417176 * k + 604016 := by
    unfold C
    simp [show (2834352 * k + 1208032) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 604016) = 708588 * k + 302008 := by
    unfold C
    simp [show (1417176 * k + 604016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 302008) = 354294 * k + 151004 := by
    unfold C
    simp [show (708588 * k + 302008) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151004) = 177147 * k + 75502 := by
    unfold C
    simp [show (354294 * k + 151004) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 111727) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 111727))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_111807 : ∀ k : Nat,
    iterate (262144 * k + 111807) 29 = 177147 * k + 75556 ∧
      177147 * k + 75556 < 262144 * k + 111807 := by
  intro k
  have h1 : C (262144 * k + 111807) = 786432 * k + 335422 := by
    unfold C
    simp [show (262144 * k + 111807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 335422) = 393216 * k + 167711 := by
    unfold C
    simp [show (786432 * k + 335422) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 167711) = 1179648 * k + 503134 := by
    unfold C
    simp [show (393216 * k + 167711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 503134) = 589824 * k + 251567 := by
    unfold C
    simp [show (1179648 * k + 503134) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 251567) = 1769472 * k + 754702 := by
    unfold C
    simp [show (589824 * k + 251567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 754702) = 884736 * k + 377351 := by
    unfold C
    simp [show (1769472 * k + 754702) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 377351) = 2654208 * k + 1132054 := by
    unfold C
    simp [show (884736 * k + 377351) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1132054) = 1327104 * k + 566027 := by
    unfold C
    simp [show (2654208 * k + 1132054) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 566027) = 3981312 * k + 1698082 := by
    unfold C
    simp [show (1327104 * k + 566027) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1698082) = 1990656 * k + 849041 := by
    unfold C
    simp [show (3981312 * k + 1698082) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 849041) = 5971968 * k + 2547124 := by
    unfold C
    simp [show (1990656 * k + 849041) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2547124) = 2985984 * k + 1273562 := by
    unfold C
    simp [show (5971968 * k + 2547124) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1273562) = 1492992 * k + 636781 := by
    unfold C
    simp [show (2985984 * k + 1273562) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 636781) = 4478976 * k + 1910344 := by
    unfold C
    simp [show (1492992 * k + 636781) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1910344) = 2239488 * k + 955172 := by
    unfold C
    simp [show (4478976 * k + 1910344) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 955172) = 1119744 * k + 477586 := by
    unfold C
    simp [show (2239488 * k + 955172) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 477586) = 559872 * k + 238793 := by
    unfold C
    simp [show (1119744 * k + 477586) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 238793) = 1679616 * k + 716380 := by
    unfold C
    simp [show (559872 * k + 238793) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 716380) = 839808 * k + 358190 := by
    unfold C
    simp [show (1679616 * k + 716380) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 358190) = 419904 * k + 179095 := by
    unfold C
    simp [show (839808 * k + 358190) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 179095) = 1259712 * k + 537286 := by
    unfold C
    simp [show (419904 * k + 179095) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 537286) = 629856 * k + 268643 := by
    unfold C
    simp [show (1259712 * k + 537286) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 268643) = 1889568 * k + 805930 := by
    unfold C
    simp [show (629856 * k + 268643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 805930) = 944784 * k + 402965 := by
    unfold C
    simp [show (1889568 * k + 805930) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 402965) = 2834352 * k + 1208896 := by
    unfold C
    simp [show (944784 * k + 402965) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1208896) = 1417176 * k + 604448 := by
    unfold C
    simp [show (2834352 * k + 1208896) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 604448) = 708588 * k + 302224 := by
    unfold C
    simp [show (1417176 * k + 604448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 302224) = 354294 * k + 151112 := by
    unfold C
    simp [show (708588 * k + 302224) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151112) = 177147 * k + 75556 := by
    unfold C
    simp [show (354294 * k + 151112) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 111807) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 111807))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_111839 : ∀ k : Nat,
    iterate (262144 * k + 111839) 29 = 177147 * k + 75578 ∧
      177147 * k + 75578 < 262144 * k + 111839 := by
  intro k
  have h1 : C (262144 * k + 111839) = 786432 * k + 335518 := by
    unfold C
    simp [show (262144 * k + 111839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 335518) = 393216 * k + 167759 := by
    unfold C
    simp [show (786432 * k + 335518) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 167759) = 1179648 * k + 503278 := by
    unfold C
    simp [show (393216 * k + 167759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 503278) = 589824 * k + 251639 := by
    unfold C
    simp [show (1179648 * k + 503278) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 251639) = 1769472 * k + 754918 := by
    unfold C
    simp [show (589824 * k + 251639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 754918) = 884736 * k + 377459 := by
    unfold C
    simp [show (1769472 * k + 754918) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 377459) = 2654208 * k + 1132378 := by
    unfold C
    simp [show (884736 * k + 377459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1132378) = 1327104 * k + 566189 := by
    unfold C
    simp [show (2654208 * k + 1132378) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 566189) = 3981312 * k + 1698568 := by
    unfold C
    simp [show (1327104 * k + 566189) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1698568) = 1990656 * k + 849284 := by
    unfold C
    simp [show (3981312 * k + 1698568) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 849284) = 995328 * k + 424642 := by
    unfold C
    simp [show (1990656 * k + 849284) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 424642) = 497664 * k + 212321 := by
    unfold C
    simp [show (995328 * k + 424642) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 212321) = 1492992 * k + 636964 := by
    unfold C
    simp [show (497664 * k + 212321) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 636964) = 746496 * k + 318482 := by
    unfold C
    simp [show (1492992 * k + 636964) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 318482) = 373248 * k + 159241 := by
    unfold C
    simp [show (746496 * k + 318482) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 159241) = 1119744 * k + 477724 := by
    unfold C
    simp [show (373248 * k + 159241) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 477724) = 559872 * k + 238862 := by
    unfold C
    simp [show (1119744 * k + 477724) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 238862) = 279936 * k + 119431 := by
    unfold C
    simp [show (559872 * k + 238862) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 119431) = 839808 * k + 358294 := by
    unfold C
    simp [show (279936 * k + 119431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 358294) = 419904 * k + 179147 := by
    unfold C
    simp [show (839808 * k + 358294) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 179147) = 1259712 * k + 537442 := by
    unfold C
    simp [show (419904 * k + 179147) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 537442) = 629856 * k + 268721 := by
    unfold C
    simp [show (1259712 * k + 537442) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 268721) = 1889568 * k + 806164 := by
    unfold C
    simp [show (629856 * k + 268721) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 806164) = 944784 * k + 403082 := by
    unfold C
    simp [show (1889568 * k + 806164) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 403082) = 472392 * k + 201541 := by
    unfold C
    simp [show (944784 * k + 403082) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 201541) = 1417176 * k + 604624 := by
    unfold C
    simp [show (472392 * k + 201541) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 604624) = 708588 * k + 302312 := by
    unfold C
    simp [show (1417176 * k + 604624) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 302312) = 354294 * k + 151156 := by
    unfold C
    simp [show (708588 * k + 302312) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151156) = 177147 * k + 75578 := by
    unfold C
    simp [show (354294 * k + 151156) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 111839) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 111839))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_111919 : ∀ k : Nat,
    iterate (262144 * k + 111919) 29 = 177147 * k + 75632 ∧
      177147 * k + 75632 < 262144 * k + 111919 := by
  intro k
  have h1 : C (262144 * k + 111919) = 786432 * k + 335758 := by
    unfold C
    simp [show (262144 * k + 111919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 335758) = 393216 * k + 167879 := by
    unfold C
    simp [show (786432 * k + 335758) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 167879) = 1179648 * k + 503638 := by
    unfold C
    simp [show (393216 * k + 167879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 503638) = 589824 * k + 251819 := by
    unfold C
    simp [show (1179648 * k + 503638) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 251819) = 1769472 * k + 755458 := by
    unfold C
    simp [show (589824 * k + 251819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 755458) = 884736 * k + 377729 := by
    unfold C
    simp [show (1769472 * k + 755458) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 377729) = 2654208 * k + 1133188 := by
    unfold C
    simp [show (884736 * k + 377729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1133188) = 1327104 * k + 566594 := by
    unfold C
    simp [show (2654208 * k + 1133188) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 566594) = 663552 * k + 283297 := by
    unfold C
    simp [show (1327104 * k + 566594) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 283297) = 1990656 * k + 849892 := by
    unfold C
    simp [show (663552 * k + 283297) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 849892) = 995328 * k + 424946 := by
    unfold C
    simp [show (1990656 * k + 849892) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 424946) = 497664 * k + 212473 := by
    unfold C
    simp [show (995328 * k + 424946) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 212473) = 1492992 * k + 637420 := by
    unfold C
    simp [show (497664 * k + 212473) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 637420) = 746496 * k + 318710 := by
    unfold C
    simp [show (1492992 * k + 637420) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 318710) = 373248 * k + 159355 := by
    unfold C
    simp [show (746496 * k + 318710) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 159355) = 1119744 * k + 478066 := by
    unfold C
    simp [show (373248 * k + 159355) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 478066) = 559872 * k + 239033 := by
    unfold C
    simp [show (1119744 * k + 478066) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 239033) = 1679616 * k + 717100 := by
    unfold C
    simp [show (559872 * k + 239033) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 717100) = 839808 * k + 358550 := by
    unfold C
    simp [show (1679616 * k + 717100) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 358550) = 419904 * k + 179275 := by
    unfold C
    simp [show (839808 * k + 358550) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 179275) = 1259712 * k + 537826 := by
    unfold C
    simp [show (419904 * k + 179275) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 537826) = 629856 * k + 268913 := by
    unfold C
    simp [show (1259712 * k + 537826) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 268913) = 1889568 * k + 806740 := by
    unfold C
    simp [show (629856 * k + 268913) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 806740) = 944784 * k + 403370 := by
    unfold C
    simp [show (1889568 * k + 806740) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 403370) = 472392 * k + 201685 := by
    unfold C
    simp [show (944784 * k + 403370) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 201685) = 1417176 * k + 605056 := by
    unfold C
    simp [show (472392 * k + 201685) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 605056) = 708588 * k + 302528 := by
    unfold C
    simp [show (1417176 * k + 605056) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 302528) = 354294 * k + 151264 := by
    unfold C
    simp [show (708588 * k + 302528) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151264) = 177147 * k + 75632 := by
    unfold C
    simp [show (354294 * k + 151264) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 111919) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 111919))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112079 : ∀ k : Nat,
    iterate (262144 * k + 112079) 29 = 177147 * k + 75740 ∧
      177147 * k + 75740 < 262144 * k + 112079 := by
  intro k
  have h1 : C (262144 * k + 112079) = 786432 * k + 336238 := by
    unfold C
    simp [show (262144 * k + 112079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 336238) = 393216 * k + 168119 := by
    unfold C
    simp [show (786432 * k + 336238) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 168119) = 1179648 * k + 504358 := by
    unfold C
    simp [show (393216 * k + 168119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 504358) = 589824 * k + 252179 := by
    unfold C
    simp [show (1179648 * k + 504358) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 252179) = 1769472 * k + 756538 := by
    unfold C
    simp [show (589824 * k + 252179) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 756538) = 884736 * k + 378269 := by
    unfold C
    simp [show (1769472 * k + 756538) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 378269) = 2654208 * k + 1134808 := by
    unfold C
    simp [show (884736 * k + 378269) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1134808) = 1327104 * k + 567404 := by
    unfold C
    simp [show (2654208 * k + 1134808) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 567404) = 663552 * k + 283702 := by
    unfold C
    simp [show (1327104 * k + 567404) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 283702) = 331776 * k + 141851 := by
    unfold C
    simp [show (663552 * k + 283702) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 141851) = 995328 * k + 425554 := by
    unfold C
    simp [show (331776 * k + 141851) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 425554) = 497664 * k + 212777 := by
    unfold C
    simp [show (995328 * k + 425554) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 212777) = 1492992 * k + 638332 := by
    unfold C
    simp [show (497664 * k + 212777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 638332) = 746496 * k + 319166 := by
    unfold C
    simp [show (1492992 * k + 638332) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 319166) = 373248 * k + 159583 := by
    unfold C
    simp [show (746496 * k + 319166) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 159583) = 1119744 * k + 478750 := by
    unfold C
    simp [show (373248 * k + 159583) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 478750) = 559872 * k + 239375 := by
    unfold C
    simp [show (1119744 * k + 478750) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 239375) = 1679616 * k + 718126 := by
    unfold C
    simp [show (559872 * k + 239375) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 718126) = 839808 * k + 359063 := by
    unfold C
    simp [show (1679616 * k + 718126) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 359063) = 2519424 * k + 1077190 := by
    unfold C
    simp [show (839808 * k + 359063) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1077190) = 1259712 * k + 538595 := by
    unfold C
    simp [show (2519424 * k + 1077190) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 538595) = 3779136 * k + 1615786 := by
    unfold C
    simp [show (1259712 * k + 538595) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1615786) = 1889568 * k + 807893 := by
    unfold C
    simp [show (3779136 * k + 1615786) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 807893) = 5668704 * k + 2423680 := by
    unfold C
    simp [show (1889568 * k + 807893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2423680) = 2834352 * k + 1211840 := by
    unfold C
    simp [show (5668704 * k + 2423680) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1211840) = 1417176 * k + 605920 := by
    unfold C
    simp [show (2834352 * k + 1211840) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 605920) = 708588 * k + 302960 := by
    unfold C
    simp [show (1417176 * k + 605920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 302960) = 354294 * k + 151480 := by
    unfold C
    simp [show (708588 * k + 302960) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151480) = 177147 * k + 75740 := by
    unfold C
    simp [show (354294 * k + 151480) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112079) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112079))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112127 : ∀ k : Nat,
    iterate (262144 * k + 112127) 29 = 177147 * k + 75772 ∧
      177147 * k + 75772 < 262144 * k + 112127 := by
  intro k
  have h1 : C (262144 * k + 112127) = 786432 * k + 336382 := by
    unfold C
    simp [show (262144 * k + 112127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 336382) = 393216 * k + 168191 := by
    unfold C
    simp [show (786432 * k + 336382) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 168191) = 1179648 * k + 504574 := by
    unfold C
    simp [show (393216 * k + 168191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 504574) = 589824 * k + 252287 := by
    unfold C
    simp [show (1179648 * k + 504574) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 252287) = 1769472 * k + 756862 := by
    unfold C
    simp [show (589824 * k + 252287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 756862) = 884736 * k + 378431 := by
    unfold C
    simp [show (1769472 * k + 756862) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 378431) = 2654208 * k + 1135294 := by
    unfold C
    simp [show (884736 * k + 378431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1135294) = 1327104 * k + 567647 := by
    unfold C
    simp [show (2654208 * k + 1135294) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 567647) = 3981312 * k + 1702942 := by
    unfold C
    simp [show (1327104 * k + 567647) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1702942) = 1990656 * k + 851471 := by
    unfold C
    simp [show (3981312 * k + 1702942) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 851471) = 5971968 * k + 2554414 := by
    unfold C
    simp [show (1990656 * k + 851471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2554414) = 2985984 * k + 1277207 := by
    unfold C
    simp [show (5971968 * k + 2554414) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1277207) = 8957952 * k + 3831622 := by
    unfold C
    simp [show (2985984 * k + 1277207) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3831622) = 4478976 * k + 1915811 := by
    unfold C
    simp [show (8957952 * k + 3831622) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1915811) = 13436928 * k + 5747434 := by
    unfold C
    simp [show (4478976 * k + 1915811) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5747434) = 6718464 * k + 2873717 := by
    unfold C
    simp [show (13436928 * k + 5747434) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2873717) = 20155392 * k + 8621152 := by
    unfold C
    simp [show (6718464 * k + 2873717) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 8621152) = 10077696 * k + 4310576 := by
    unfold C
    simp [show (20155392 * k + 8621152) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 4310576) = 5038848 * k + 2155288 := by
    unfold C
    simp [show (10077696 * k + 4310576) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2155288) = 2519424 * k + 1077644 := by
    unfold C
    simp [show (5038848 * k + 2155288) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1077644) = 1259712 * k + 538822 := by
    unfold C
    simp [show (2519424 * k + 1077644) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 538822) = 629856 * k + 269411 := by
    unfold C
    simp [show (1259712 * k + 538822) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 269411) = 1889568 * k + 808234 := by
    unfold C
    simp [show (629856 * k + 269411) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 808234) = 944784 * k + 404117 := by
    unfold C
    simp [show (1889568 * k + 808234) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 404117) = 2834352 * k + 1212352 := by
    unfold C
    simp [show (944784 * k + 404117) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1212352) = 1417176 * k + 606176 := by
    unfold C
    simp [show (2834352 * k + 1212352) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 606176) = 708588 * k + 303088 := by
    unfold C
    simp [show (1417176 * k + 606176) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 303088) = 354294 * k + 151544 := by
    unfold C
    simp [show (708588 * k + 303088) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151544) = 177147 * k + 75772 := by
    unfold C
    simp [show (354294 * k + 151544) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112127) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112127))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112159 : ∀ k : Nat,
    iterate (262144 * k + 112159) 29 = 177147 * k + 75794 ∧
      177147 * k + 75794 < 262144 * k + 112159 := by
  intro k
  have h1 : C (262144 * k + 112159) = 786432 * k + 336478 := by
    unfold C
    simp [show (262144 * k + 112159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 336478) = 393216 * k + 168239 := by
    unfold C
    simp [show (786432 * k + 336478) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 168239) = 1179648 * k + 504718 := by
    unfold C
    simp [show (393216 * k + 168239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 504718) = 589824 * k + 252359 := by
    unfold C
    simp [show (1179648 * k + 504718) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 252359) = 1769472 * k + 757078 := by
    unfold C
    simp [show (589824 * k + 252359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 757078) = 884736 * k + 378539 := by
    unfold C
    simp [show (1769472 * k + 757078) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 378539) = 2654208 * k + 1135618 := by
    unfold C
    simp [show (884736 * k + 378539) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1135618) = 1327104 * k + 567809 := by
    unfold C
    simp [show (2654208 * k + 1135618) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 567809) = 3981312 * k + 1703428 := by
    unfold C
    simp [show (1327104 * k + 567809) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1703428) = 1990656 * k + 851714 := by
    unfold C
    simp [show (3981312 * k + 1703428) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 851714) = 995328 * k + 425857 := by
    unfold C
    simp [show (1990656 * k + 851714) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 425857) = 2985984 * k + 1277572 := by
    unfold C
    simp [show (995328 * k + 425857) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1277572) = 1492992 * k + 638786 := by
    unfold C
    simp [show (2985984 * k + 1277572) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 638786) = 746496 * k + 319393 := by
    unfold C
    simp [show (1492992 * k + 638786) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 319393) = 2239488 * k + 958180 := by
    unfold C
    simp [show (746496 * k + 319393) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 958180) = 1119744 * k + 479090 := by
    unfold C
    simp [show (2239488 * k + 958180) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 479090) = 559872 * k + 239545 := by
    unfold C
    simp [show (1119744 * k + 479090) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 239545) = 1679616 * k + 718636 := by
    unfold C
    simp [show (559872 * k + 239545) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 718636) = 839808 * k + 359318 := by
    unfold C
    simp [show (1679616 * k + 718636) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 359318) = 419904 * k + 179659 := by
    unfold C
    simp [show (839808 * k + 359318) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 179659) = 1259712 * k + 538978 := by
    unfold C
    simp [show (419904 * k + 179659) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 538978) = 629856 * k + 269489 := by
    unfold C
    simp [show (1259712 * k + 538978) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 269489) = 1889568 * k + 808468 := by
    unfold C
    simp [show (629856 * k + 269489) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 808468) = 944784 * k + 404234 := by
    unfold C
    simp [show (1889568 * k + 808468) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 404234) = 472392 * k + 202117 := by
    unfold C
    simp [show (944784 * k + 404234) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 202117) = 1417176 * k + 606352 := by
    unfold C
    simp [show (472392 * k + 202117) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 606352) = 708588 * k + 303176 := by
    unfold C
    simp [show (1417176 * k + 606352) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 303176) = 354294 * k + 151588 := by
    unfold C
    simp [show (708588 * k + 303176) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151588) = 177147 * k + 75794 := by
    unfold C
    simp [show (354294 * k + 151588) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112159) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112159))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112319 : ∀ k : Nat,
    iterate (262144 * k + 112319) 29 = 177147 * k + 75902 ∧
      177147 * k + 75902 < 262144 * k + 112319 := by
  intro k
  have h1 : C (262144 * k + 112319) = 786432 * k + 336958 := by
    unfold C
    simp [show (262144 * k + 112319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 336958) = 393216 * k + 168479 := by
    unfold C
    simp [show (786432 * k + 336958) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 168479) = 1179648 * k + 505438 := by
    unfold C
    simp [show (393216 * k + 168479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 505438) = 589824 * k + 252719 := by
    unfold C
    simp [show (1179648 * k + 505438) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 252719) = 1769472 * k + 758158 := by
    unfold C
    simp [show (589824 * k + 252719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 758158) = 884736 * k + 379079 := by
    unfold C
    simp [show (1769472 * k + 758158) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 379079) = 2654208 * k + 1137238 := by
    unfold C
    simp [show (884736 * k + 379079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1137238) = 1327104 * k + 568619 := by
    unfold C
    simp [show (2654208 * k + 1137238) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 568619) = 3981312 * k + 1705858 := by
    unfold C
    simp [show (1327104 * k + 568619) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1705858) = 1990656 * k + 852929 := by
    unfold C
    simp [show (3981312 * k + 1705858) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 852929) = 5971968 * k + 2558788 := by
    unfold C
    simp [show (1990656 * k + 852929) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2558788) = 2985984 * k + 1279394 := by
    unfold C
    simp [show (5971968 * k + 2558788) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1279394) = 1492992 * k + 639697 := by
    unfold C
    simp [show (2985984 * k + 1279394) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 639697) = 4478976 * k + 1919092 := by
    unfold C
    simp [show (1492992 * k + 639697) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1919092) = 2239488 * k + 959546 := by
    unfold C
    simp [show (4478976 * k + 1919092) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 959546) = 1119744 * k + 479773 := by
    unfold C
    simp [show (2239488 * k + 959546) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 479773) = 3359232 * k + 1439320 := by
    unfold C
    simp [show (1119744 * k + 479773) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1439320) = 1679616 * k + 719660 := by
    unfold C
    simp [show (3359232 * k + 1439320) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 719660) = 839808 * k + 359830 := by
    unfold C
    simp [show (1679616 * k + 719660) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 359830) = 419904 * k + 179915 := by
    unfold C
    simp [show (839808 * k + 359830) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 179915) = 1259712 * k + 539746 := by
    unfold C
    simp [show (419904 * k + 179915) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 539746) = 629856 * k + 269873 := by
    unfold C
    simp [show (1259712 * k + 539746) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 269873) = 1889568 * k + 809620 := by
    unfold C
    simp [show (629856 * k + 269873) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 809620) = 944784 * k + 404810 := by
    unfold C
    simp [show (1889568 * k + 809620) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 404810) = 472392 * k + 202405 := by
    unfold C
    simp [show (944784 * k + 404810) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 202405) = 1417176 * k + 607216 := by
    unfold C
    simp [show (472392 * k + 202405) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 607216) = 708588 * k + 303608 := by
    unfold C
    simp [show (1417176 * k + 607216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 303608) = 354294 * k + 151804 := by
    unfold C
    simp [show (708588 * k + 303608) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151804) = 177147 * k + 75902 := by
    unfold C
    simp [show (354294 * k + 151804) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112319) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112319))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112359 : ∀ k : Nat,
    iterate (262144 * k + 112359) 29 = 177147 * k + 75929 ∧
      177147 * k + 75929 < 262144 * k + 112359 := by
  intro k
  have h1 : C (262144 * k + 112359) = 786432 * k + 337078 := by
    unfold C
    simp [show (262144 * k + 112359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 337078) = 393216 * k + 168539 := by
    unfold C
    simp [show (786432 * k + 337078) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 168539) = 1179648 * k + 505618 := by
    unfold C
    simp [show (393216 * k + 168539) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 505618) = 589824 * k + 252809 := by
    unfold C
    simp [show (1179648 * k + 505618) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 252809) = 1769472 * k + 758428 := by
    unfold C
    simp [show (589824 * k + 252809) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 758428) = 884736 * k + 379214 := by
    unfold C
    simp [show (1769472 * k + 758428) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 379214) = 442368 * k + 189607 := by
    unfold C
    simp [show (884736 * k + 379214) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 189607) = 1327104 * k + 568822 := by
    unfold C
    simp [show (442368 * k + 189607) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 568822) = 663552 * k + 284411 := by
    unfold C
    simp [show (1327104 * k + 568822) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 284411) = 1990656 * k + 853234 := by
    unfold C
    simp [show (663552 * k + 284411) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 853234) = 995328 * k + 426617 := by
    unfold C
    simp [show (1990656 * k + 853234) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 426617) = 2985984 * k + 1279852 := by
    unfold C
    simp [show (995328 * k + 426617) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1279852) = 1492992 * k + 639926 := by
    unfold C
    simp [show (2985984 * k + 1279852) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 639926) = 746496 * k + 319963 := by
    unfold C
    simp [show (1492992 * k + 639926) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 319963) = 2239488 * k + 959890 := by
    unfold C
    simp [show (746496 * k + 319963) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 959890) = 1119744 * k + 479945 := by
    unfold C
    simp [show (2239488 * k + 959890) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 479945) = 3359232 * k + 1439836 := by
    unfold C
    simp [show (1119744 * k + 479945) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1439836) = 1679616 * k + 719918 := by
    unfold C
    simp [show (3359232 * k + 1439836) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 719918) = 839808 * k + 359959 := by
    unfold C
    simp [show (1679616 * k + 719918) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 359959) = 2519424 * k + 1079878 := by
    unfold C
    simp [show (839808 * k + 359959) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1079878) = 1259712 * k + 539939 := by
    unfold C
    simp [show (2519424 * k + 1079878) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 539939) = 3779136 * k + 1619818 := by
    unfold C
    simp [show (1259712 * k + 539939) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1619818) = 1889568 * k + 809909 := by
    unfold C
    simp [show (3779136 * k + 1619818) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 809909) = 5668704 * k + 2429728 := by
    unfold C
    simp [show (1889568 * k + 809909) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2429728) = 2834352 * k + 1214864 := by
    unfold C
    simp [show (5668704 * k + 2429728) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1214864) = 1417176 * k + 607432 := by
    unfold C
    simp [show (2834352 * k + 1214864) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 607432) = 708588 * k + 303716 := by
    unfold C
    simp [show (1417176 * k + 607432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 303716) = 354294 * k + 151858 := by
    unfold C
    simp [show (708588 * k + 303716) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 151858) = 177147 * k + 75929 := by
    unfold C
    simp [show (354294 * k + 151858) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112359) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112359))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112495 : ∀ k : Nat,
    iterate (262144 * k + 112495) 29 = 177147 * k + 76021 ∧
      177147 * k + 76021 < 262144 * k + 112495 := by
  intro k
  have h1 : C (262144 * k + 112495) = 786432 * k + 337486 := by
    unfold C
    simp [show (262144 * k + 112495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 337486) = 393216 * k + 168743 := by
    unfold C
    simp [show (786432 * k + 337486) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 168743) = 1179648 * k + 506230 := by
    unfold C
    simp [show (393216 * k + 168743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 506230) = 589824 * k + 253115 := by
    unfold C
    simp [show (1179648 * k + 506230) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 253115) = 1769472 * k + 759346 := by
    unfold C
    simp [show (589824 * k + 253115) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 759346) = 884736 * k + 379673 := by
    unfold C
    simp [show (1769472 * k + 759346) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 379673) = 2654208 * k + 1139020 := by
    unfold C
    simp [show (884736 * k + 379673) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1139020) = 1327104 * k + 569510 := by
    unfold C
    simp [show (2654208 * k + 1139020) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 569510) = 663552 * k + 284755 := by
    unfold C
    simp [show (1327104 * k + 569510) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 284755) = 1990656 * k + 854266 := by
    unfold C
    simp [show (663552 * k + 284755) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 854266) = 995328 * k + 427133 := by
    unfold C
    simp [show (1990656 * k + 854266) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 427133) = 2985984 * k + 1281400 := by
    unfold C
    simp [show (995328 * k + 427133) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1281400) = 1492992 * k + 640700 := by
    unfold C
    simp [show (2985984 * k + 1281400) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 640700) = 746496 * k + 320350 := by
    unfold C
    simp [show (1492992 * k + 640700) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 320350) = 373248 * k + 160175 := by
    unfold C
    simp [show (746496 * k + 320350) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 160175) = 1119744 * k + 480526 := by
    unfold C
    simp [show (373248 * k + 160175) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 480526) = 559872 * k + 240263 := by
    unfold C
    simp [show (1119744 * k + 480526) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 240263) = 1679616 * k + 720790 := by
    unfold C
    simp [show (559872 * k + 240263) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 720790) = 839808 * k + 360395 := by
    unfold C
    simp [show (1679616 * k + 720790) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 360395) = 2519424 * k + 1081186 := by
    unfold C
    simp [show (839808 * k + 360395) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1081186) = 1259712 * k + 540593 := by
    unfold C
    simp [show (2519424 * k + 1081186) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 540593) = 3779136 * k + 1621780 := by
    unfold C
    simp [show (1259712 * k + 540593) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1621780) = 1889568 * k + 810890 := by
    unfold C
    simp [show (3779136 * k + 1621780) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 810890) = 944784 * k + 405445 := by
    unfold C
    simp [show (1889568 * k + 810890) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 405445) = 2834352 * k + 1216336 := by
    unfold C
    simp [show (944784 * k + 405445) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1216336) = 1417176 * k + 608168 := by
    unfold C
    simp [show (2834352 * k + 1216336) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 608168) = 708588 * k + 304084 := by
    unfold C
    simp [show (1417176 * k + 608168) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 304084) = 354294 * k + 152042 := by
    unfold C
    simp [show (708588 * k + 304084) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 152042) = 177147 * k + 76021 := by
    unfold C
    simp [show (354294 * k + 152042) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112495) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112495))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112607 : ∀ k : Nat,
    iterate (262144 * k + 112607) 29 = 177147 * k + 76097 ∧
      177147 * k + 76097 < 262144 * k + 112607 := by
  intro k
  have h1 : C (262144 * k + 112607) = 786432 * k + 337822 := by
    unfold C
    simp [show (262144 * k + 112607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 337822) = 393216 * k + 168911 := by
    unfold C
    simp [show (786432 * k + 337822) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 168911) = 1179648 * k + 506734 := by
    unfold C
    simp [show (393216 * k + 168911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 506734) = 589824 * k + 253367 := by
    unfold C
    simp [show (1179648 * k + 506734) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 253367) = 1769472 * k + 760102 := by
    unfold C
    simp [show (589824 * k + 253367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 760102) = 884736 * k + 380051 := by
    unfold C
    simp [show (1769472 * k + 760102) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 380051) = 2654208 * k + 1140154 := by
    unfold C
    simp [show (884736 * k + 380051) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1140154) = 1327104 * k + 570077 := by
    unfold C
    simp [show (2654208 * k + 1140154) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 570077) = 3981312 * k + 1710232 := by
    unfold C
    simp [show (1327104 * k + 570077) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1710232) = 1990656 * k + 855116 := by
    unfold C
    simp [show (3981312 * k + 1710232) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 855116) = 995328 * k + 427558 := by
    unfold C
    simp [show (1990656 * k + 855116) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 427558) = 497664 * k + 213779 := by
    unfold C
    simp [show (995328 * k + 427558) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 213779) = 1492992 * k + 641338 := by
    unfold C
    simp [show (497664 * k + 213779) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 641338) = 746496 * k + 320669 := by
    unfold C
    simp [show (1492992 * k + 641338) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 320669) = 2239488 * k + 962008 := by
    unfold C
    simp [show (746496 * k + 320669) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 962008) = 1119744 * k + 481004 := by
    unfold C
    simp [show (2239488 * k + 962008) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 481004) = 559872 * k + 240502 := by
    unfold C
    simp [show (1119744 * k + 481004) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 240502) = 279936 * k + 120251 := by
    unfold C
    simp [show (559872 * k + 240502) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 120251) = 839808 * k + 360754 := by
    unfold C
    simp [show (279936 * k + 120251) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 360754) = 419904 * k + 180377 := by
    unfold C
    simp [show (839808 * k + 360754) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 180377) = 1259712 * k + 541132 := by
    unfold C
    simp [show (419904 * k + 180377) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 541132) = 629856 * k + 270566 := by
    unfold C
    simp [show (1259712 * k + 541132) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 270566) = 314928 * k + 135283 := by
    unfold C
    simp [show (629856 * k + 270566) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 135283) = 944784 * k + 405850 := by
    unfold C
    simp [show (314928 * k + 135283) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 405850) = 472392 * k + 202925 := by
    unfold C
    simp [show (944784 * k + 405850) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 202925) = 1417176 * k + 608776 := by
    unfold C
    simp [show (472392 * k + 202925) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 608776) = 708588 * k + 304388 := by
    unfold C
    simp [show (1417176 * k + 608776) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 304388) = 354294 * k + 152194 := by
    unfold C
    simp [show (708588 * k + 304388) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 152194) = 177147 * k + 76097 := by
    unfold C
    simp [show (354294 * k + 152194) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112607) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112607))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112687 : ∀ k : Nat,
    iterate (262144 * k + 112687) 29 = 177147 * k + 76151 ∧
      177147 * k + 76151 < 262144 * k + 112687 := by
  intro k
  have h1 : C (262144 * k + 112687) = 786432 * k + 338062 := by
    unfold C
    simp [show (262144 * k + 112687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 338062) = 393216 * k + 169031 := by
    unfold C
    simp [show (786432 * k + 338062) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 169031) = 1179648 * k + 507094 := by
    unfold C
    simp [show (393216 * k + 169031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 507094) = 589824 * k + 253547 := by
    unfold C
    simp [show (1179648 * k + 507094) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 253547) = 1769472 * k + 760642 := by
    unfold C
    simp [show (589824 * k + 253547) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 760642) = 884736 * k + 380321 := by
    unfold C
    simp [show (1769472 * k + 760642) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 380321) = 2654208 * k + 1140964 := by
    unfold C
    simp [show (884736 * k + 380321) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1140964) = 1327104 * k + 570482 := by
    unfold C
    simp [show (2654208 * k + 1140964) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 570482) = 663552 * k + 285241 := by
    unfold C
    simp [show (1327104 * k + 570482) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 285241) = 1990656 * k + 855724 := by
    unfold C
    simp [show (663552 * k + 285241) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 855724) = 995328 * k + 427862 := by
    unfold C
    simp [show (1990656 * k + 855724) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 427862) = 497664 * k + 213931 := by
    unfold C
    simp [show (995328 * k + 427862) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 213931) = 1492992 * k + 641794 := by
    unfold C
    simp [show (497664 * k + 213931) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 641794) = 746496 * k + 320897 := by
    unfold C
    simp [show (1492992 * k + 641794) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 320897) = 2239488 * k + 962692 := by
    unfold C
    simp [show (746496 * k + 320897) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 962692) = 1119744 * k + 481346 := by
    unfold C
    simp [show (2239488 * k + 962692) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 481346) = 559872 * k + 240673 := by
    unfold C
    simp [show (1119744 * k + 481346) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 240673) = 1679616 * k + 722020 := by
    unfold C
    simp [show (559872 * k + 240673) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 722020) = 839808 * k + 361010 := by
    unfold C
    simp [show (1679616 * k + 722020) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 361010) = 419904 * k + 180505 := by
    unfold C
    simp [show (839808 * k + 361010) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 180505) = 1259712 * k + 541516 := by
    unfold C
    simp [show (419904 * k + 180505) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 541516) = 629856 * k + 270758 := by
    unfold C
    simp [show (1259712 * k + 541516) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 270758) = 314928 * k + 135379 := by
    unfold C
    simp [show (629856 * k + 270758) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 135379) = 944784 * k + 406138 := by
    unfold C
    simp [show (314928 * k + 135379) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 406138) = 472392 * k + 203069 := by
    unfold C
    simp [show (944784 * k + 406138) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 203069) = 1417176 * k + 609208 := by
    unfold C
    simp [show (472392 * k + 203069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 609208) = 708588 * k + 304604 := by
    unfold C
    simp [show (1417176 * k + 609208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 304604) = 354294 * k + 152302 := by
    unfold C
    simp [show (708588 * k + 304604) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 152302) = 177147 * k + 76151 := by
    unfold C
    simp [show (354294 * k + 152302) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112687) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112687))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112807 : ∀ k : Nat,
    iterate (262144 * k + 112807) 29 = 177147 * k + 76232 ∧
      177147 * k + 76232 < 262144 * k + 112807 := by
  intro k
  have h1 : C (262144 * k + 112807) = 786432 * k + 338422 := by
    unfold C
    simp [show (262144 * k + 112807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 338422) = 393216 * k + 169211 := by
    unfold C
    simp [show (786432 * k + 338422) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 169211) = 1179648 * k + 507634 := by
    unfold C
    simp [show (393216 * k + 169211) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 507634) = 589824 * k + 253817 := by
    unfold C
    simp [show (1179648 * k + 507634) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 253817) = 1769472 * k + 761452 := by
    unfold C
    simp [show (589824 * k + 253817) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 761452) = 884736 * k + 380726 := by
    unfold C
    simp [show (1769472 * k + 761452) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 380726) = 442368 * k + 190363 := by
    unfold C
    simp [show (884736 * k + 380726) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 190363) = 1327104 * k + 571090 := by
    unfold C
    simp [show (442368 * k + 190363) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 571090) = 663552 * k + 285545 := by
    unfold C
    simp [show (1327104 * k + 571090) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 285545) = 1990656 * k + 856636 := by
    unfold C
    simp [show (663552 * k + 285545) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 856636) = 995328 * k + 428318 := by
    unfold C
    simp [show (1990656 * k + 856636) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 428318) = 497664 * k + 214159 := by
    unfold C
    simp [show (995328 * k + 428318) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 214159) = 1492992 * k + 642478 := by
    unfold C
    simp [show (497664 * k + 214159) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 642478) = 746496 * k + 321239 := by
    unfold C
    simp [show (1492992 * k + 642478) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 321239) = 2239488 * k + 963718 := by
    unfold C
    simp [show (746496 * k + 321239) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 963718) = 1119744 * k + 481859 := by
    unfold C
    simp [show (2239488 * k + 963718) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 481859) = 3359232 * k + 1445578 := by
    unfold C
    simp [show (1119744 * k + 481859) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1445578) = 1679616 * k + 722789 := by
    unfold C
    simp [show (3359232 * k + 1445578) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 722789) = 5038848 * k + 2168368 := by
    unfold C
    simp [show (1679616 * k + 722789) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2168368) = 2519424 * k + 1084184 := by
    unfold C
    simp [show (5038848 * k + 2168368) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1084184) = 1259712 * k + 542092 := by
    unfold C
    simp [show (2519424 * k + 1084184) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 542092) = 629856 * k + 271046 := by
    unfold C
    simp [show (1259712 * k + 542092) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 271046) = 314928 * k + 135523 := by
    unfold C
    simp [show (629856 * k + 271046) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 135523) = 944784 * k + 406570 := by
    unfold C
    simp [show (314928 * k + 135523) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 406570) = 472392 * k + 203285 := by
    unfold C
    simp [show (944784 * k + 406570) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 203285) = 1417176 * k + 609856 := by
    unfold C
    simp [show (472392 * k + 203285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 609856) = 708588 * k + 304928 := by
    unfold C
    simp [show (1417176 * k + 609856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 304928) = 354294 * k + 152464 := by
    unfold C
    simp [show (708588 * k + 304928) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 152464) = 177147 * k + 76232 := by
    unfold C
    simp [show (354294 * k + 152464) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112807) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112807))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112847 : ∀ k : Nat,
    iterate (262144 * k + 112847) 29 = 177147 * k + 76259 ∧
      177147 * k + 76259 < 262144 * k + 112847 := by
  intro k
  have h1 : C (262144 * k + 112847) = 786432 * k + 338542 := by
    unfold C
    simp [show (262144 * k + 112847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 338542) = 393216 * k + 169271 := by
    unfold C
    simp [show (786432 * k + 338542) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 169271) = 1179648 * k + 507814 := by
    unfold C
    simp [show (393216 * k + 169271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 507814) = 589824 * k + 253907 := by
    unfold C
    simp [show (1179648 * k + 507814) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 253907) = 1769472 * k + 761722 := by
    unfold C
    simp [show (589824 * k + 253907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 761722) = 884736 * k + 380861 := by
    unfold C
    simp [show (1769472 * k + 761722) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 380861) = 2654208 * k + 1142584 := by
    unfold C
    simp [show (884736 * k + 380861) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1142584) = 1327104 * k + 571292 := by
    unfold C
    simp [show (2654208 * k + 1142584) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 571292) = 663552 * k + 285646 := by
    unfold C
    simp [show (1327104 * k + 571292) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 285646) = 331776 * k + 142823 := by
    unfold C
    simp [show (663552 * k + 285646) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 142823) = 995328 * k + 428470 := by
    unfold C
    simp [show (331776 * k + 142823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 428470) = 497664 * k + 214235 := by
    unfold C
    simp [show (995328 * k + 428470) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 214235) = 1492992 * k + 642706 := by
    unfold C
    simp [show (497664 * k + 214235) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 642706) = 746496 * k + 321353 := by
    unfold C
    simp [show (1492992 * k + 642706) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 321353) = 2239488 * k + 964060 := by
    unfold C
    simp [show (746496 * k + 321353) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 964060) = 1119744 * k + 482030 := by
    unfold C
    simp [show (2239488 * k + 964060) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 482030) = 559872 * k + 241015 := by
    unfold C
    simp [show (1119744 * k + 482030) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 241015) = 1679616 * k + 723046 := by
    unfold C
    simp [show (559872 * k + 241015) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 723046) = 839808 * k + 361523 := by
    unfold C
    simp [show (1679616 * k + 723046) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 361523) = 2519424 * k + 1084570 := by
    unfold C
    simp [show (839808 * k + 361523) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1084570) = 1259712 * k + 542285 := by
    unfold C
    simp [show (2519424 * k + 1084570) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 542285) = 3779136 * k + 1626856 := by
    unfold C
    simp [show (1259712 * k + 542285) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1626856) = 1889568 * k + 813428 := by
    unfold C
    simp [show (3779136 * k + 1626856) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 813428) = 944784 * k + 406714 := by
    unfold C
    simp [show (1889568 * k + 813428) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 406714) = 472392 * k + 203357 := by
    unfold C
    simp [show (944784 * k + 406714) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 203357) = 1417176 * k + 610072 := by
    unfold C
    simp [show (472392 * k + 203357) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 610072) = 708588 * k + 305036 := by
    unfold C
    simp [show (1417176 * k + 610072) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 305036) = 354294 * k + 152518 := by
    unfold C
    simp [show (708588 * k + 305036) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 152518) = 177147 * k + 76259 := by
    unfold C
    simp [show (354294 * k + 152518) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112847) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112847))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_112895 : ∀ k : Nat,
    iterate (262144 * k + 112895) 29 = 177147 * k + 76291 ∧
      177147 * k + 76291 < 262144 * k + 112895 := by
  intro k
  have h1 : C (262144 * k + 112895) = 786432 * k + 338686 := by
    unfold C
    simp [show (262144 * k + 112895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 338686) = 393216 * k + 169343 := by
    unfold C
    simp [show (786432 * k + 338686) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 169343) = 1179648 * k + 508030 := by
    unfold C
    simp [show (393216 * k + 169343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 508030) = 589824 * k + 254015 := by
    unfold C
    simp [show (1179648 * k + 508030) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 254015) = 1769472 * k + 762046 := by
    unfold C
    simp [show (589824 * k + 254015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 762046) = 884736 * k + 381023 := by
    unfold C
    simp [show (1769472 * k + 762046) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 381023) = 2654208 * k + 1143070 := by
    unfold C
    simp [show (884736 * k + 381023) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1143070) = 1327104 * k + 571535 := by
    unfold C
    simp [show (2654208 * k + 1143070) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 571535) = 3981312 * k + 1714606 := by
    unfold C
    simp [show (1327104 * k + 571535) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1714606) = 1990656 * k + 857303 := by
    unfold C
    simp [show (3981312 * k + 1714606) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 857303) = 5971968 * k + 2571910 := by
    unfold C
    simp [show (1990656 * k + 857303) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2571910) = 2985984 * k + 1285955 := by
    unfold C
    simp [show (5971968 * k + 2571910) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1285955) = 8957952 * k + 3857866 := by
    unfold C
    simp [show (2985984 * k + 1285955) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3857866) = 4478976 * k + 1928933 := by
    unfold C
    simp [show (8957952 * k + 3857866) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1928933) = 13436928 * k + 5786800 := by
    unfold C
    simp [show (4478976 * k + 1928933) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5786800) = 6718464 * k + 2893400 := by
    unfold C
    simp [show (13436928 * k + 5786800) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2893400) = 3359232 * k + 1446700 := by
    unfold C
    simp [show (6718464 * k + 2893400) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1446700) = 1679616 * k + 723350 := by
    unfold C
    simp [show (3359232 * k + 1446700) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 723350) = 839808 * k + 361675 := by
    unfold C
    simp [show (1679616 * k + 723350) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 361675) = 2519424 * k + 1085026 := by
    unfold C
    simp [show (839808 * k + 361675) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1085026) = 1259712 * k + 542513 := by
    unfold C
    simp [show (2519424 * k + 1085026) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 542513) = 3779136 * k + 1627540 := by
    unfold C
    simp [show (1259712 * k + 542513) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1627540) = 1889568 * k + 813770 := by
    unfold C
    simp [show (3779136 * k + 1627540) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 813770) = 944784 * k + 406885 := by
    unfold C
    simp [show (1889568 * k + 813770) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 406885) = 2834352 * k + 1220656 := by
    unfold C
    simp [show (944784 * k + 406885) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1220656) = 1417176 * k + 610328 := by
    unfold C
    simp [show (2834352 * k + 1220656) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 610328) = 708588 * k + 305164 := by
    unfold C
    simp [show (1417176 * k + 610328) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 305164) = 354294 * k + 152582 := by
    unfold C
    simp [show (708588 * k + 305164) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 152582) = 177147 * k + 76291 := by
    unfold C
    simp [show (354294 * k + 152582) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 112895) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 112895))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_113051 : ∀ k : Nat,
    iterate (262144 * k + 113051) 29 = 177147 * k + 76397 ∧
      177147 * k + 76397 < 262144 * k + 113051 := by
  intro k
  have h1 : C (262144 * k + 113051) = 786432 * k + 339154 := by
    unfold C
    simp [show (262144 * k + 113051) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 339154) = 393216 * k + 169577 := by
    unfold C
    simp [show (786432 * k + 339154) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 169577) = 1179648 * k + 508732 := by
    unfold C
    simp [show (393216 * k + 169577) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 508732) = 589824 * k + 254366 := by
    unfold C
    simp [show (1179648 * k + 508732) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 254366) = 294912 * k + 127183 := by
    unfold C
    simp [show (589824 * k + 254366) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 127183) = 884736 * k + 381550 := by
    unfold C
    simp [show (294912 * k + 127183) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 381550) = 442368 * k + 190775 := by
    unfold C
    simp [show (884736 * k + 381550) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 190775) = 1327104 * k + 572326 := by
    unfold C
    simp [show (442368 * k + 190775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 572326) = 663552 * k + 286163 := by
    unfold C
    simp [show (1327104 * k + 572326) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 286163) = 1990656 * k + 858490 := by
    unfold C
    simp [show (663552 * k + 286163) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 858490) = 995328 * k + 429245 := by
    unfold C
    simp [show (1990656 * k + 858490) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 429245) = 2985984 * k + 1287736 := by
    unfold C
    simp [show (995328 * k + 429245) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1287736) = 1492992 * k + 643868 := by
    unfold C
    simp [show (2985984 * k + 1287736) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 643868) = 746496 * k + 321934 := by
    unfold C
    simp [show (1492992 * k + 643868) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 321934) = 373248 * k + 160967 := by
    unfold C
    simp [show (746496 * k + 321934) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 160967) = 1119744 * k + 482902 := by
    unfold C
    simp [show (373248 * k + 160967) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 482902) = 559872 * k + 241451 := by
    unfold C
    simp [show (1119744 * k + 482902) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 241451) = 1679616 * k + 724354 := by
    unfold C
    simp [show (559872 * k + 241451) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 724354) = 839808 * k + 362177 := by
    unfold C
    simp [show (1679616 * k + 724354) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 362177) = 2519424 * k + 1086532 := by
    unfold C
    simp [show (839808 * k + 362177) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1086532) = 1259712 * k + 543266 := by
    unfold C
    simp [show (2519424 * k + 1086532) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 543266) = 629856 * k + 271633 := by
    unfold C
    simp [show (1259712 * k + 543266) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 271633) = 1889568 * k + 814900 := by
    unfold C
    simp [show (629856 * k + 271633) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 814900) = 944784 * k + 407450 := by
    unfold C
    simp [show (1889568 * k + 814900) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 407450) = 472392 * k + 203725 := by
    unfold C
    simp [show (944784 * k + 407450) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 203725) = 1417176 * k + 611176 := by
    unfold C
    simp [show (472392 * k + 203725) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 611176) = 708588 * k + 305588 := by
    unfold C
    simp [show (1417176 * k + 611176) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 305588) = 354294 * k + 152794 := by
    unfold C
    simp [show (708588 * k + 305588) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 152794) = 177147 * k + 76397 := by
    unfold C
    simp [show (354294 * k + 152794) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 113051) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 113051))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard022
