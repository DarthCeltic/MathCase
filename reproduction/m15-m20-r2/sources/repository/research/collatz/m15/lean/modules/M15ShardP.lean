import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardP

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_22751 : ∀ k : Nat, iterate (32768 * k + 22751) 24 = 19683 * k + 13667 ∧ 19683 * k + 13667 < 32768 * k + 22751 := by
  intro k
  have h1 : C (32768 * k + 22751) = 98304 * k + 68254 := by
    unfold C
    simp [show (32768 * k + 22751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 68254) = 49152 * k + 34127 := by
    unfold C
    simp [show (98304 * k + 68254) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 34127) = 147456 * k + 102382 := by
    unfold C
    simp [show (49152 * k + 34127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 102382) = 73728 * k + 51191 := by
    unfold C
    simp [show (147456 * k + 102382) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 51191) = 221184 * k + 153574 := by
    unfold C
    simp [show (73728 * k + 51191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 153574) = 110592 * k + 76787 := by
    unfold C
    simp [show (221184 * k + 153574) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 76787) = 331776 * k + 230362 := by
    unfold C
    simp [show (110592 * k + 76787) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 230362) = 165888 * k + 115181 := by
    unfold C
    simp [show (331776 * k + 230362) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 115181) = 497664 * k + 345544 := by
    unfold C
    simp [show (165888 * k + 115181) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 345544) = 248832 * k + 172772 := by
    unfold C
    simp [show (497664 * k + 345544) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 172772) = 124416 * k + 86386 := by
    unfold C
    simp [show (248832 * k + 172772) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 86386) = 62208 * k + 43193 := by
    unfold C
    simp [show (124416 * k + 86386) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 43193) = 186624 * k + 129580 := by
    unfold C
    simp [show (62208 * k + 43193) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 129580) = 93312 * k + 64790 := by
    unfold C
    simp [show (186624 * k + 129580) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 64790) = 46656 * k + 32395 := by
    unfold C
    simp [show (93312 * k + 64790) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 32395) = 139968 * k + 97186 := by
    unfold C
    simp [show (46656 * k + 32395) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 97186) = 69984 * k + 48593 := by
    unfold C
    simp [show (139968 * k + 97186) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 48593) = 209952 * k + 145780 := by
    unfold C
    simp [show (69984 * k + 48593) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 145780) = 104976 * k + 72890 := by
    unfold C
    simp [show (209952 * k + 145780) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 72890) = 52488 * k + 36445 := by
    unfold C
    simp [show (104976 * k + 72890) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 36445) = 157464 * k + 109336 := by
    unfold C
    simp [show (52488 * k + 36445) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 109336) = 78732 * k + 54668 := by
    unfold C
    simp [show (157464 * k + 109336) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 54668) = 39366 * k + 27334 := by
    unfold C
    simp [show (78732 * k + 54668) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 27334) = 19683 * k + 13667 := by
    unfold C
    simp [show (39366 * k + 27334) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 22751) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 22751)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_22811 : ∀ k : Nat, iterate (32768 * k + 22811) 24 = 19683 * k + 13703 ∧ 19683 * k + 13703 < 32768 * k + 22811 := by
  intro k
  have h1 : C (32768 * k + 22811) = 98304 * k + 68434 := by
    unfold C
    simp [show (32768 * k + 22811) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 68434) = 49152 * k + 34217 := by
    unfold C
    simp [show (98304 * k + 68434) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 34217) = 147456 * k + 102652 := by
    unfold C
    simp [show (49152 * k + 34217) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 102652) = 73728 * k + 51326 := by
    unfold C
    simp [show (147456 * k + 102652) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 51326) = 36864 * k + 25663 := by
    unfold C
    simp [show (73728 * k + 51326) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 25663) = 110592 * k + 76990 := by
    unfold C
    simp [show (36864 * k + 25663) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 76990) = 55296 * k + 38495 := by
    unfold C
    simp [show (110592 * k + 76990) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 38495) = 165888 * k + 115486 := by
    unfold C
    simp [show (55296 * k + 38495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 115486) = 82944 * k + 57743 := by
    unfold C
    simp [show (165888 * k + 115486) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 57743) = 248832 * k + 173230 := by
    unfold C
    simp [show (82944 * k + 57743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 173230) = 124416 * k + 86615 := by
    unfold C
    simp [show (248832 * k + 173230) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 86615) = 373248 * k + 259846 := by
    unfold C
    simp [show (124416 * k + 86615) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 259846) = 186624 * k + 129923 := by
    unfold C
    simp [show (373248 * k + 259846) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 129923) = 559872 * k + 389770 := by
    unfold C
    simp [show (186624 * k + 129923) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 389770) = 279936 * k + 194885 := by
    unfold C
    simp [show (559872 * k + 389770) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 194885) = 839808 * k + 584656 := by
    unfold C
    simp [show (279936 * k + 194885) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 584656) = 419904 * k + 292328 := by
    unfold C
    simp [show (839808 * k + 584656) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 292328) = 209952 * k + 146164 := by
    unfold C
    simp [show (419904 * k + 292328) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 146164) = 104976 * k + 73082 := by
    unfold C
    simp [show (209952 * k + 146164) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 73082) = 52488 * k + 36541 := by
    unfold C
    simp [show (104976 * k + 73082) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 36541) = 157464 * k + 109624 := by
    unfold C
    simp [show (52488 * k + 36541) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 109624) = 78732 * k + 54812 := by
    unfold C
    simp [show (157464 * k + 109624) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 54812) = 39366 * k + 27406 := by
    unfold C
    simp [show (78732 * k + 54812) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 27406) = 19683 * k + 13703 := by
    unfold C
    simp [show (39366 * k + 27406) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 22811) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 22811)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_22911 : ∀ k : Nat, iterate (32768 * k + 22911) 24 = 19683 * k + 13763 ∧ 19683 * k + 13763 < 32768 * k + 22911 := by
  intro k
  have h1 : C (32768 * k + 22911) = 98304 * k + 68734 := by
    unfold C
    simp [show (32768 * k + 22911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 68734) = 49152 * k + 34367 := by
    unfold C
    simp [show (98304 * k + 68734) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 34367) = 147456 * k + 103102 := by
    unfold C
    simp [show (49152 * k + 34367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 103102) = 73728 * k + 51551 := by
    unfold C
    simp [show (147456 * k + 103102) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 51551) = 221184 * k + 154654 := by
    unfold C
    simp [show (73728 * k + 51551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 154654) = 110592 * k + 77327 := by
    unfold C
    simp [show (221184 * k + 154654) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 77327) = 331776 * k + 231982 := by
    unfold C
    simp [show (110592 * k + 77327) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 231982) = 165888 * k + 115991 := by
    unfold C
    simp [show (331776 * k + 231982) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 115991) = 497664 * k + 347974 := by
    unfold C
    simp [show (165888 * k + 115991) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 347974) = 248832 * k + 173987 := by
    unfold C
    simp [show (497664 * k + 347974) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 173987) = 746496 * k + 521962 := by
    unfold C
    simp [show (248832 * k + 173987) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 521962) = 373248 * k + 260981 := by
    unfold C
    simp [show (746496 * k + 521962) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 260981) = 1119744 * k + 782944 := by
    unfold C
    simp [show (373248 * k + 260981) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 782944) = 559872 * k + 391472 := by
    unfold C
    simp [show (1119744 * k + 782944) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 391472) = 279936 * k + 195736 := by
    unfold C
    simp [show (559872 * k + 391472) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 195736) = 139968 * k + 97868 := by
    unfold C
    simp [show (279936 * k + 195736) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 97868) = 69984 * k + 48934 := by
    unfold C
    simp [show (139968 * k + 97868) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 48934) = 34992 * k + 24467 := by
    unfold C
    simp [show (69984 * k + 48934) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 24467) = 104976 * k + 73402 := by
    unfold C
    simp [show (34992 * k + 24467) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 73402) = 52488 * k + 36701 := by
    unfold C
    simp [show (104976 * k + 73402) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 36701) = 157464 * k + 110104 := by
    unfold C
    simp [show (52488 * k + 36701) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 110104) = 78732 * k + 55052 := by
    unfold C
    simp [show (157464 * k + 110104) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 55052) = 39366 * k + 27526 := by
    unfold C
    simp [show (78732 * k + 55052) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 27526) = 19683 * k + 13763 := by
    unfold C
    simp [show (39366 * k + 27526) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 22911) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 22911)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_22939 : ∀ k : Nat, iterate (32768 * k + 22939) 24 = 19683 * k + 13780 ∧ 19683 * k + 13780 < 32768 * k + 22939 := by
  intro k
  have h1 : C (32768 * k + 22939) = 98304 * k + 68818 := by
    unfold C
    simp [show (32768 * k + 22939) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 68818) = 49152 * k + 34409 := by
    unfold C
    simp [show (98304 * k + 68818) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 34409) = 147456 * k + 103228 := by
    unfold C
    simp [show (49152 * k + 34409) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 103228) = 73728 * k + 51614 := by
    unfold C
    simp [show (147456 * k + 103228) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 51614) = 36864 * k + 25807 := by
    unfold C
    simp [show (73728 * k + 51614) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 25807) = 110592 * k + 77422 := by
    unfold C
    simp [show (36864 * k + 25807) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 77422) = 55296 * k + 38711 := by
    unfold C
    simp [show (110592 * k + 77422) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 38711) = 165888 * k + 116134 := by
    unfold C
    simp [show (55296 * k + 38711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 116134) = 82944 * k + 58067 := by
    unfold C
    simp [show (165888 * k + 116134) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 58067) = 248832 * k + 174202 := by
    unfold C
    simp [show (82944 * k + 58067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 174202) = 124416 * k + 87101 := by
    unfold C
    simp [show (248832 * k + 174202) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 87101) = 373248 * k + 261304 := by
    unfold C
    simp [show (124416 * k + 87101) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 261304) = 186624 * k + 130652 := by
    unfold C
    simp [show (373248 * k + 261304) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 130652) = 93312 * k + 65326 := by
    unfold C
    simp [show (186624 * k + 130652) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 65326) = 46656 * k + 32663 := by
    unfold C
    simp [show (93312 * k + 65326) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 32663) = 139968 * k + 97990 := by
    unfold C
    simp [show (46656 * k + 32663) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 97990) = 69984 * k + 48995 := by
    unfold C
    simp [show (139968 * k + 97990) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 48995) = 209952 * k + 146986 := by
    unfold C
    simp [show (69984 * k + 48995) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 146986) = 104976 * k + 73493 := by
    unfold C
    simp [show (209952 * k + 146986) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 73493) = 314928 * k + 220480 := by
    unfold C
    simp [show (104976 * k + 73493) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 220480) = 157464 * k + 110240 := by
    unfold C
    simp [show (314928 * k + 220480) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 110240) = 78732 * k + 55120 := by
    unfold C
    simp [show (157464 * k + 110240) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 55120) = 39366 * k + 27560 := by
    unfold C
    simp [show (78732 * k + 55120) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 27560) = 19683 * k + 13780 := by
    unfold C
    simp [show (39366 * k + 27560) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 22939) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 22939)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_23231 : ∀ k : Nat, iterate (32768 * k + 23231) 24 = 19683 * k + 13955 ∧ 19683 * k + 13955 < 32768 * k + 23231 := by
  intro k
  have h1 : C (32768 * k + 23231) = 98304 * k + 69694 := by
    unfold C
    simp [show (32768 * k + 23231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 69694) = 49152 * k + 34847 := by
    unfold C
    simp [show (98304 * k + 69694) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 34847) = 147456 * k + 104542 := by
    unfold C
    simp [show (49152 * k + 34847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 104542) = 73728 * k + 52271 := by
    unfold C
    simp [show (147456 * k + 104542) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 52271) = 221184 * k + 156814 := by
    unfold C
    simp [show (73728 * k + 52271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 156814) = 110592 * k + 78407 := by
    unfold C
    simp [show (221184 * k + 156814) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 78407) = 331776 * k + 235222 := by
    unfold C
    simp [show (110592 * k + 78407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 235222) = 165888 * k + 117611 := by
    unfold C
    simp [show (331776 * k + 235222) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 117611) = 497664 * k + 352834 := by
    unfold C
    simp [show (165888 * k + 117611) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 352834) = 248832 * k + 176417 := by
    unfold C
    simp [show (497664 * k + 352834) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 176417) = 746496 * k + 529252 := by
    unfold C
    simp [show (248832 * k + 176417) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 529252) = 373248 * k + 264626 := by
    unfold C
    simp [show (746496 * k + 529252) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 264626) = 186624 * k + 132313 := by
    unfold C
    simp [show (373248 * k + 264626) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 132313) = 559872 * k + 396940 := by
    unfold C
    simp [show (186624 * k + 132313) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 396940) = 279936 * k + 198470 := by
    unfold C
    simp [show (559872 * k + 396940) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 198470) = 139968 * k + 99235 := by
    unfold C
    simp [show (279936 * k + 198470) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 99235) = 419904 * k + 297706 := by
    unfold C
    simp [show (139968 * k + 99235) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 297706) = 209952 * k + 148853 := by
    unfold C
    simp [show (419904 * k + 297706) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 148853) = 629856 * k + 446560 := by
    unfold C
    simp [show (209952 * k + 148853) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 446560) = 314928 * k + 223280 := by
    unfold C
    simp [show (629856 * k + 446560) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 223280) = 157464 * k + 111640 := by
    unfold C
    simp [show (314928 * k + 223280) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 111640) = 78732 * k + 55820 := by
    unfold C
    simp [show (157464 * k + 111640) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 55820) = 39366 * k + 27910 := by
    unfold C
    simp [show (78732 * k + 55820) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 27910) = 19683 * k + 13955 := by
    unfold C
    simp [show (39366 * k + 27910) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 23231) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 23231)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_23359 : ∀ k : Nat, iterate (32768 * k + 23359) 24 = 19683 * k + 14032 ∧ 19683 * k + 14032 < 32768 * k + 23359 := by
  intro k
  have h1 : C (32768 * k + 23359) = 98304 * k + 70078 := by
    unfold C
    simp [show (32768 * k + 23359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 70078) = 49152 * k + 35039 := by
    unfold C
    simp [show (98304 * k + 70078) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 35039) = 147456 * k + 105118 := by
    unfold C
    simp [show (49152 * k + 35039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 105118) = 73728 * k + 52559 := by
    unfold C
    simp [show (147456 * k + 105118) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 52559) = 221184 * k + 157678 := by
    unfold C
    simp [show (73728 * k + 52559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 157678) = 110592 * k + 78839 := by
    unfold C
    simp [show (221184 * k + 157678) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 78839) = 331776 * k + 236518 := by
    unfold C
    simp [show (110592 * k + 78839) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 236518) = 165888 * k + 118259 := by
    unfold C
    simp [show (331776 * k + 236518) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 118259) = 497664 * k + 354778 := by
    unfold C
    simp [show (165888 * k + 118259) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 354778) = 248832 * k + 177389 := by
    unfold C
    simp [show (497664 * k + 354778) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 177389) = 746496 * k + 532168 := by
    unfold C
    simp [show (248832 * k + 177389) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 532168) = 373248 * k + 266084 := by
    unfold C
    simp [show (746496 * k + 532168) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 266084) = 186624 * k + 133042 := by
    unfold C
    simp [show (373248 * k + 266084) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 133042) = 93312 * k + 66521 := by
    unfold C
    simp [show (186624 * k + 133042) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 66521) = 279936 * k + 199564 := by
    unfold C
    simp [show (93312 * k + 66521) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 199564) = 139968 * k + 99782 := by
    unfold C
    simp [show (279936 * k + 199564) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 99782) = 69984 * k + 49891 := by
    unfold C
    simp [show (139968 * k + 99782) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 49891) = 209952 * k + 149674 := by
    unfold C
    simp [show (69984 * k + 49891) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 149674) = 104976 * k + 74837 := by
    unfold C
    simp [show (209952 * k + 149674) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 74837) = 314928 * k + 224512 := by
    unfold C
    simp [show (104976 * k + 74837) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 224512) = 157464 * k + 112256 := by
    unfold C
    simp [show (314928 * k + 224512) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 112256) = 78732 * k + 56128 := by
    unfold C
    simp [show (157464 * k + 112256) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 56128) = 39366 * k + 28064 := by
    unfold C
    simp [show (78732 * k + 56128) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 28064) = 19683 * k + 14032 := by
    unfold C
    simp [show (39366 * k + 28064) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 23359) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 23359)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_23399 : ∀ k : Nat, iterate (32768 * k + 23399) 24 = 19683 * k + 14056 ∧ 19683 * k + 14056 < 32768 * k + 23399 := by
  intro k
  have h1 : C (32768 * k + 23399) = 98304 * k + 70198 := by
    unfold C
    simp [show (32768 * k + 23399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 70198) = 49152 * k + 35099 := by
    unfold C
    simp [show (98304 * k + 70198) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 35099) = 147456 * k + 105298 := by
    unfold C
    simp [show (49152 * k + 35099) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 105298) = 73728 * k + 52649 := by
    unfold C
    simp [show (147456 * k + 105298) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 52649) = 221184 * k + 157948 := by
    unfold C
    simp [show (73728 * k + 52649) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 157948) = 110592 * k + 78974 := by
    unfold C
    simp [show (221184 * k + 157948) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 78974) = 55296 * k + 39487 := by
    unfold C
    simp [show (110592 * k + 78974) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 39487) = 165888 * k + 118462 := by
    unfold C
    simp [show (55296 * k + 39487) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 118462) = 82944 * k + 59231 := by
    unfold C
    simp [show (165888 * k + 118462) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 59231) = 248832 * k + 177694 := by
    unfold C
    simp [show (82944 * k + 59231) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 177694) = 124416 * k + 88847 := by
    unfold C
    simp [show (248832 * k + 177694) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 88847) = 373248 * k + 266542 := by
    unfold C
    simp [show (124416 * k + 88847) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 266542) = 186624 * k + 133271 := by
    unfold C
    simp [show (373248 * k + 266542) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 133271) = 559872 * k + 399814 := by
    unfold C
    simp [show (186624 * k + 133271) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 399814) = 279936 * k + 199907 := by
    unfold C
    simp [show (559872 * k + 399814) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 199907) = 839808 * k + 599722 := by
    unfold C
    simp [show (279936 * k + 199907) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 599722) = 419904 * k + 299861 := by
    unfold C
    simp [show (839808 * k + 599722) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 299861) = 1259712 * k + 899584 := by
    unfold C
    simp [show (419904 * k + 299861) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1259712 * k + 899584) = 629856 * k + 449792 := by
    unfold C
    simp [show (1259712 * k + 899584) % 2 = 0 by omega]
    omega
  have h20 : C (629856 * k + 449792) = 314928 * k + 224896 := by
    unfold C
    simp [show (629856 * k + 449792) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 224896) = 157464 * k + 112448 := by
    unfold C
    simp [show (314928 * k + 224896) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 112448) = 78732 * k + 56224 := by
    unfold C
    simp [show (157464 * k + 112448) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 56224) = 39366 * k + 28112 := by
    unfold C
    simp [show (78732 * k + 56224) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 28112) = 19683 * k + 14056 := by
    unfold C
    simp [show (39366 * k + 28112) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 23399) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 23399)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_23615 : ∀ k : Nat, iterate (32768 * k + 23615) 24 = 19683 * k + 14186 ∧ 19683 * k + 14186 < 32768 * k + 23615 := by
  intro k
  have h1 : C (32768 * k + 23615) = 98304 * k + 70846 := by
    unfold C
    simp [show (32768 * k + 23615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 70846) = 49152 * k + 35423 := by
    unfold C
    simp [show (98304 * k + 70846) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 35423) = 147456 * k + 106270 := by
    unfold C
    simp [show (49152 * k + 35423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 106270) = 73728 * k + 53135 := by
    unfold C
    simp [show (147456 * k + 106270) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 53135) = 221184 * k + 159406 := by
    unfold C
    simp [show (73728 * k + 53135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 159406) = 110592 * k + 79703 := by
    unfold C
    simp [show (221184 * k + 159406) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 79703) = 331776 * k + 239110 := by
    unfold C
    simp [show (110592 * k + 79703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 239110) = 165888 * k + 119555 := by
    unfold C
    simp [show (331776 * k + 239110) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 119555) = 497664 * k + 358666 := by
    unfold C
    simp [show (165888 * k + 119555) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 358666) = 248832 * k + 179333 := by
    unfold C
    simp [show (497664 * k + 358666) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 179333) = 746496 * k + 538000 := by
    unfold C
    simp [show (248832 * k + 179333) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 538000) = 373248 * k + 269000 := by
    unfold C
    simp [show (746496 * k + 538000) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 269000) = 186624 * k + 134500 := by
    unfold C
    simp [show (373248 * k + 269000) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 134500) = 93312 * k + 67250 := by
    unfold C
    simp [show (186624 * k + 134500) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 67250) = 46656 * k + 33625 := by
    unfold C
    simp [show (93312 * k + 67250) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 33625) = 139968 * k + 100876 := by
    unfold C
    simp [show (46656 * k + 33625) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 100876) = 69984 * k + 50438 := by
    unfold C
    simp [show (139968 * k + 100876) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 50438) = 34992 * k + 25219 := by
    unfold C
    simp [show (69984 * k + 50438) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 25219) = 104976 * k + 75658 := by
    unfold C
    simp [show (34992 * k + 25219) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 75658) = 52488 * k + 37829 := by
    unfold C
    simp [show (104976 * k + 75658) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 37829) = 157464 * k + 113488 := by
    unfold C
    simp [show (52488 * k + 37829) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 113488) = 78732 * k + 56744 := by
    unfold C
    simp [show (157464 * k + 113488) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 56744) = 39366 * k + 28372 := by
    unfold C
    simp [show (78732 * k + 56744) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 28372) = 19683 * k + 14186 := by
    unfold C
    simp [show (39366 * k + 28372) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 23615) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 23615)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_22751
#print axioms descent_mod32768_22811
#print axioms descent_mod32768_22911
#print axioms descent_mod32768_22939
#print axioms descent_mod32768_23231
#print axioms descent_mod32768_23359
#print axioms descent_mod32768_23399
#print axioms descent_mod32768_23615

end CollatzM15ShardP
