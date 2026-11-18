import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardT

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_28703 : ∀ k : Nat, iterate (32768 * k + 28703) 24 = 19683 * k + 17242 ∧ 19683 * k + 17242 < 32768 * k + 28703 := by
  intro k
  have h1 : C (32768 * k + 28703) = 98304 * k + 86110 := by
    unfold C
    simp [show (32768 * k + 28703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 86110) = 49152 * k + 43055 := by
    unfold C
    simp [show (98304 * k + 86110) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 43055) = 147456 * k + 129166 := by
    unfold C
    simp [show (49152 * k + 43055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 129166) = 73728 * k + 64583 := by
    unfold C
    simp [show (147456 * k + 129166) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 64583) = 221184 * k + 193750 := by
    unfold C
    simp [show (73728 * k + 64583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 193750) = 110592 * k + 96875 := by
    unfold C
    simp [show (221184 * k + 193750) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 96875) = 331776 * k + 290626 := by
    unfold C
    simp [show (110592 * k + 96875) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 290626) = 165888 * k + 145313 := by
    unfold C
    simp [show (331776 * k + 290626) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 145313) = 497664 * k + 435940 := by
    unfold C
    simp [show (165888 * k + 145313) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 435940) = 248832 * k + 217970 := by
    unfold C
    simp [show (497664 * k + 435940) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 217970) = 124416 * k + 108985 := by
    unfold C
    simp [show (248832 * k + 217970) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 108985) = 373248 * k + 326956 := by
    unfold C
    simp [show (124416 * k + 108985) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 326956) = 186624 * k + 163478 := by
    unfold C
    simp [show (373248 * k + 326956) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 163478) = 93312 * k + 81739 := by
    unfold C
    simp [show (186624 * k + 163478) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 81739) = 279936 * k + 245218 := by
    unfold C
    simp [show (93312 * k + 81739) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 245218) = 139968 * k + 122609 := by
    unfold C
    simp [show (279936 * k + 245218) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 122609) = 419904 * k + 367828 := by
    unfold C
    simp [show (139968 * k + 122609) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 367828) = 209952 * k + 183914 := by
    unfold C
    simp [show (419904 * k + 367828) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 183914) = 104976 * k + 91957 := by
    unfold C
    simp [show (209952 * k + 183914) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 91957) = 314928 * k + 275872 := by
    unfold C
    simp [show (104976 * k + 91957) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 275872) = 157464 * k + 137936 := by
    unfold C
    simp [show (314928 * k + 275872) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 137936) = 78732 * k + 68968 := by
    unfold C
    simp [show (157464 * k + 137936) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 68968) = 39366 * k + 34484 := by
    unfold C
    simp [show (78732 * k + 68968) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 34484) = 19683 * k + 17242 := by
    unfold C
    simp [show (39366 * k + 34484) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 28703) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 28703)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_28879 : ∀ k : Nat, iterate (32768 * k + 28879) 24 = 19683 * k + 17348 ∧ 19683 * k + 17348 < 32768 * k + 28879 := by
  intro k
  have h1 : C (32768 * k + 28879) = 98304 * k + 86638 := by
    unfold C
    simp [show (32768 * k + 28879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 86638) = 49152 * k + 43319 := by
    unfold C
    simp [show (98304 * k + 86638) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 43319) = 147456 * k + 129958 := by
    unfold C
    simp [show (49152 * k + 43319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 129958) = 73728 * k + 64979 := by
    unfold C
    simp [show (147456 * k + 129958) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 64979) = 221184 * k + 194938 := by
    unfold C
    simp [show (73728 * k + 64979) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 194938) = 110592 * k + 97469 := by
    unfold C
    simp [show (221184 * k + 194938) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 97469) = 331776 * k + 292408 := by
    unfold C
    simp [show (110592 * k + 97469) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 292408) = 165888 * k + 146204 := by
    unfold C
    simp [show (331776 * k + 292408) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 146204) = 82944 * k + 73102 := by
    unfold C
    simp [show (165888 * k + 146204) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 73102) = 41472 * k + 36551 := by
    unfold C
    simp [show (82944 * k + 73102) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 36551) = 124416 * k + 109654 := by
    unfold C
    simp [show (41472 * k + 36551) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 109654) = 62208 * k + 54827 := by
    unfold C
    simp [show (124416 * k + 109654) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 54827) = 186624 * k + 164482 := by
    unfold C
    simp [show (62208 * k + 54827) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 164482) = 93312 * k + 82241 := by
    unfold C
    simp [show (186624 * k + 164482) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 82241) = 279936 * k + 246724 := by
    unfold C
    simp [show (93312 * k + 82241) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 246724) = 139968 * k + 123362 := by
    unfold C
    simp [show (279936 * k + 246724) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 123362) = 69984 * k + 61681 := by
    unfold C
    simp [show (139968 * k + 123362) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 61681) = 209952 * k + 185044 := by
    unfold C
    simp [show (69984 * k + 61681) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 185044) = 104976 * k + 92522 := by
    unfold C
    simp [show (209952 * k + 185044) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 92522) = 52488 * k + 46261 := by
    unfold C
    simp [show (104976 * k + 92522) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 46261) = 157464 * k + 138784 := by
    unfold C
    simp [show (52488 * k + 46261) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 138784) = 78732 * k + 69392 := by
    unfold C
    simp [show (157464 * k + 138784) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 69392) = 39366 * k + 34696 := by
    unfold C
    simp [show (78732 * k + 69392) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 34696) = 19683 * k + 17348 := by
    unfold C
    simp [show (39366 * k + 34696) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 28879) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 28879)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_28999 : ∀ k : Nat, iterate (32768 * k + 28999) 24 = 19683 * k + 17420 ∧ 19683 * k + 17420 < 32768 * k + 28999 := by
  intro k
  have h1 : C (32768 * k + 28999) = 98304 * k + 86998 := by
    unfold C
    simp [show (32768 * k + 28999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 86998) = 49152 * k + 43499 := by
    unfold C
    simp [show (98304 * k + 86998) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 43499) = 147456 * k + 130498 := by
    unfold C
    simp [show (49152 * k + 43499) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 130498) = 73728 * k + 65249 := by
    unfold C
    simp [show (147456 * k + 130498) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 65249) = 221184 * k + 195748 := by
    unfold C
    simp [show (73728 * k + 65249) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 195748) = 110592 * k + 97874 := by
    unfold C
    simp [show (221184 * k + 195748) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 97874) = 55296 * k + 48937 := by
    unfold C
    simp [show (110592 * k + 97874) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 48937) = 165888 * k + 146812 := by
    unfold C
    simp [show (55296 * k + 48937) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 146812) = 82944 * k + 73406 := by
    unfold C
    simp [show (165888 * k + 146812) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 73406) = 41472 * k + 36703 := by
    unfold C
    simp [show (82944 * k + 73406) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 36703) = 124416 * k + 110110 := by
    unfold C
    simp [show (41472 * k + 36703) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 110110) = 62208 * k + 55055 := by
    unfold C
    simp [show (124416 * k + 110110) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 55055) = 186624 * k + 165166 := by
    unfold C
    simp [show (62208 * k + 55055) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 165166) = 93312 * k + 82583 := by
    unfold C
    simp [show (186624 * k + 165166) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 82583) = 279936 * k + 247750 := by
    unfold C
    simp [show (93312 * k + 82583) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 247750) = 139968 * k + 123875 := by
    unfold C
    simp [show (279936 * k + 247750) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 123875) = 419904 * k + 371626 := by
    unfold C
    simp [show (139968 * k + 123875) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 371626) = 209952 * k + 185813 := by
    unfold C
    simp [show (419904 * k + 371626) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 185813) = 629856 * k + 557440 := by
    unfold C
    simp [show (209952 * k + 185813) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 557440) = 314928 * k + 278720 := by
    unfold C
    simp [show (629856 * k + 557440) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 278720) = 157464 * k + 139360 := by
    unfold C
    simp [show (314928 * k + 278720) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 139360) = 78732 * k + 69680 := by
    unfold C
    simp [show (157464 * k + 139360) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 69680) = 39366 * k + 34840 := by
    unfold C
    simp [show (78732 * k + 69680) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 34840) = 19683 * k + 17420 := by
    unfold C
    simp [show (39366 * k + 34840) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 28999) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 28999)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_29467 : ∀ k : Nat, iterate (32768 * k + 29467) 24 = 19683 * k + 17701 ∧ 19683 * k + 17701 < 32768 * k + 29467 := by
  intro k
  have h1 : C (32768 * k + 29467) = 98304 * k + 88402 := by
    unfold C
    simp [show (32768 * k + 29467) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 88402) = 49152 * k + 44201 := by
    unfold C
    simp [show (98304 * k + 88402) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 44201) = 147456 * k + 132604 := by
    unfold C
    simp [show (49152 * k + 44201) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 132604) = 73728 * k + 66302 := by
    unfold C
    simp [show (147456 * k + 132604) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 66302) = 36864 * k + 33151 := by
    unfold C
    simp [show (73728 * k + 66302) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 33151) = 110592 * k + 99454 := by
    unfold C
    simp [show (36864 * k + 33151) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 99454) = 55296 * k + 49727 := by
    unfold C
    simp [show (110592 * k + 99454) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 49727) = 165888 * k + 149182 := by
    unfold C
    simp [show (55296 * k + 49727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 149182) = 82944 * k + 74591 := by
    unfold C
    simp [show (165888 * k + 149182) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 74591) = 248832 * k + 223774 := by
    unfold C
    simp [show (82944 * k + 74591) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 223774) = 124416 * k + 111887 := by
    unfold C
    simp [show (248832 * k + 223774) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 111887) = 373248 * k + 335662 := by
    unfold C
    simp [show (124416 * k + 111887) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 335662) = 186624 * k + 167831 := by
    unfold C
    simp [show (373248 * k + 335662) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 167831) = 559872 * k + 503494 := by
    unfold C
    simp [show (186624 * k + 167831) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 503494) = 279936 * k + 251747 := by
    unfold C
    simp [show (559872 * k + 503494) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 251747) = 839808 * k + 755242 := by
    unfold C
    simp [show (279936 * k + 251747) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 755242) = 419904 * k + 377621 := by
    unfold C
    simp [show (839808 * k + 755242) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 377621) = 1259712 * k + 1132864 := by
    unfold C
    simp [show (419904 * k + 377621) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1259712 * k + 1132864) = 629856 * k + 566432 := by
    unfold C
    simp [show (1259712 * k + 1132864) % 2 = 0 by omega]
    omega
  have h20 : C (629856 * k + 566432) = 314928 * k + 283216 := by
    unfold C
    simp [show (629856 * k + 566432) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 283216) = 157464 * k + 141608 := by
    unfold C
    simp [show (314928 * k + 283216) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 141608) = 78732 * k + 70804 := by
    unfold C
    simp [show (157464 * k + 141608) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 70804) = 39366 * k + 35402 := by
    unfold C
    simp [show (78732 * k + 70804) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 35402) = 19683 * k + 17701 := by
    unfold C
    simp [show (39366 * k + 35402) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 29467) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 29467)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_29743 : ∀ k : Nat, iterate (32768 * k + 29743) 24 = 19683 * k + 17867 ∧ 19683 * k + 17867 < 32768 * k + 29743 := by
  intro k
  have h1 : C (32768 * k + 29743) = 98304 * k + 89230 := by
    unfold C
    simp [show (32768 * k + 29743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 89230) = 49152 * k + 44615 := by
    unfold C
    simp [show (98304 * k + 89230) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 44615) = 147456 * k + 133846 := by
    unfold C
    simp [show (49152 * k + 44615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 133846) = 73728 * k + 66923 := by
    unfold C
    simp [show (147456 * k + 133846) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 66923) = 221184 * k + 200770 := by
    unfold C
    simp [show (73728 * k + 66923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 200770) = 110592 * k + 100385 := by
    unfold C
    simp [show (221184 * k + 200770) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 100385) = 331776 * k + 301156 := by
    unfold C
    simp [show (110592 * k + 100385) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 301156) = 165888 * k + 150578 := by
    unfold C
    simp [show (331776 * k + 301156) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 150578) = 82944 * k + 75289 := by
    unfold C
    simp [show (165888 * k + 150578) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 75289) = 248832 * k + 225868 := by
    unfold C
    simp [show (82944 * k + 75289) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 225868) = 124416 * k + 112934 := by
    unfold C
    simp [show (248832 * k + 225868) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 112934) = 62208 * k + 56467 := by
    unfold C
    simp [show (124416 * k + 112934) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 56467) = 186624 * k + 169402 := by
    unfold C
    simp [show (62208 * k + 56467) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 169402) = 93312 * k + 84701 := by
    unfold C
    simp [show (186624 * k + 169402) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 84701) = 279936 * k + 254104 := by
    unfold C
    simp [show (93312 * k + 84701) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 254104) = 139968 * k + 127052 := by
    unfold C
    simp [show (279936 * k + 254104) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 127052) = 69984 * k + 63526 := by
    unfold C
    simp [show (139968 * k + 127052) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 63526) = 34992 * k + 31763 := by
    unfold C
    simp [show (69984 * k + 63526) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 31763) = 104976 * k + 95290 := by
    unfold C
    simp [show (34992 * k + 31763) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 95290) = 52488 * k + 47645 := by
    unfold C
    simp [show (104976 * k + 95290) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 47645) = 157464 * k + 142936 := by
    unfold C
    simp [show (52488 * k + 47645) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 142936) = 78732 * k + 71468 := by
    unfold C
    simp [show (157464 * k + 142936) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 71468) = 39366 * k + 35734 := by
    unfold C
    simp [show (78732 * k + 71468) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 35734) = 19683 * k + 17867 := by
    unfold C
    simp [show (39366 * k + 35734) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 29743) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 29743)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_29863 : ∀ k : Nat, iterate (32768 * k + 29863) 24 = 19683 * k + 17939 ∧ 19683 * k + 17939 < 32768 * k + 29863 := by
  intro k
  have h1 : C (32768 * k + 29863) = 98304 * k + 89590 := by
    unfold C
    simp [show (32768 * k + 29863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 89590) = 49152 * k + 44795 := by
    unfold C
    simp [show (98304 * k + 89590) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 44795) = 147456 * k + 134386 := by
    unfold C
    simp [show (49152 * k + 44795) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 134386) = 73728 * k + 67193 := by
    unfold C
    simp [show (147456 * k + 134386) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 67193) = 221184 * k + 201580 := by
    unfold C
    simp [show (73728 * k + 67193) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 201580) = 110592 * k + 100790 := by
    unfold C
    simp [show (221184 * k + 201580) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 100790) = 55296 * k + 50395 := by
    unfold C
    simp [show (110592 * k + 100790) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 50395) = 165888 * k + 151186 := by
    unfold C
    simp [show (55296 * k + 50395) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 151186) = 82944 * k + 75593 := by
    unfold C
    simp [show (165888 * k + 151186) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 75593) = 248832 * k + 226780 := by
    unfold C
    simp [show (82944 * k + 75593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 226780) = 124416 * k + 113390 := by
    unfold C
    simp [show (248832 * k + 226780) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 113390) = 62208 * k + 56695 := by
    unfold C
    simp [show (124416 * k + 113390) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 56695) = 186624 * k + 170086 := by
    unfold C
    simp [show (62208 * k + 56695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 170086) = 93312 * k + 85043 := by
    unfold C
    simp [show (186624 * k + 170086) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 85043) = 279936 * k + 255130 := by
    unfold C
    simp [show (93312 * k + 85043) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 255130) = 139968 * k + 127565 := by
    unfold C
    simp [show (279936 * k + 255130) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 127565) = 419904 * k + 382696 := by
    unfold C
    simp [show (139968 * k + 127565) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 382696) = 209952 * k + 191348 := by
    unfold C
    simp [show (419904 * k + 382696) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 191348) = 104976 * k + 95674 := by
    unfold C
    simp [show (209952 * k + 191348) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 95674) = 52488 * k + 47837 := by
    unfold C
    simp [show (104976 * k + 95674) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 47837) = 157464 * k + 143512 := by
    unfold C
    simp [show (52488 * k + 47837) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 143512) = 78732 * k + 71756 := by
    unfold C
    simp [show (157464 * k + 143512) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 71756) = 39366 * k + 35878 := by
    unfold C
    simp [show (78732 * k + 71756) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 35878) = 19683 * k + 17939 := by
    unfold C
    simp [show (39366 * k + 35878) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 29863) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 29863)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_30311 : ∀ k : Nat, iterate (32768 * k + 30311) 24 = 19683 * k + 18208 ∧ 19683 * k + 18208 < 32768 * k + 30311 := by
  intro k
  have h1 : C (32768 * k + 30311) = 98304 * k + 90934 := by
    unfold C
    simp [show (32768 * k + 30311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 90934) = 49152 * k + 45467 := by
    unfold C
    simp [show (98304 * k + 90934) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 45467) = 147456 * k + 136402 := by
    unfold C
    simp [show (49152 * k + 45467) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 136402) = 73728 * k + 68201 := by
    unfold C
    simp [show (147456 * k + 136402) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 68201) = 221184 * k + 204604 := by
    unfold C
    simp [show (73728 * k + 68201) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 204604) = 110592 * k + 102302 := by
    unfold C
    simp [show (221184 * k + 204604) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 102302) = 55296 * k + 51151 := by
    unfold C
    simp [show (110592 * k + 102302) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 51151) = 165888 * k + 153454 := by
    unfold C
    simp [show (55296 * k + 51151) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 153454) = 82944 * k + 76727 := by
    unfold C
    simp [show (165888 * k + 153454) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 76727) = 248832 * k + 230182 := by
    unfold C
    simp [show (82944 * k + 76727) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 230182) = 124416 * k + 115091 := by
    unfold C
    simp [show (248832 * k + 230182) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 115091) = 373248 * k + 345274 := by
    unfold C
    simp [show (124416 * k + 115091) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 345274) = 186624 * k + 172637 := by
    unfold C
    simp [show (373248 * k + 345274) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 172637) = 559872 * k + 517912 := by
    unfold C
    simp [show (186624 * k + 172637) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 517912) = 279936 * k + 258956 := by
    unfold C
    simp [show (559872 * k + 517912) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 258956) = 139968 * k + 129478 := by
    unfold C
    simp [show (279936 * k + 258956) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 129478) = 69984 * k + 64739 := by
    unfold C
    simp [show (139968 * k + 129478) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 64739) = 209952 * k + 194218 := by
    unfold C
    simp [show (69984 * k + 64739) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 194218) = 104976 * k + 97109 := by
    unfold C
    simp [show (209952 * k + 194218) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 97109) = 314928 * k + 291328 := by
    unfold C
    simp [show (104976 * k + 97109) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 291328) = 157464 * k + 145664 := by
    unfold C
    simp [show (314928 * k + 291328) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 145664) = 78732 * k + 72832 := by
    unfold C
    simp [show (157464 * k + 145664) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 72832) = 39366 * k + 36416 := by
    unfold C
    simp [show (78732 * k + 72832) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 36416) = 19683 * k + 18208 := by
    unfold C
    simp [show (39366 * k + 36416) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 30311) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 30311)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_30591 : ∀ k : Nat, iterate (32768 * k + 30591) 24 = 19683 * k + 18376 ∧ 19683 * k + 18376 < 32768 * k + 30591 := by
  intro k
  have h1 : C (32768 * k + 30591) = 98304 * k + 91774 := by
    unfold C
    simp [show (32768 * k + 30591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 91774) = 49152 * k + 45887 := by
    unfold C
    simp [show (98304 * k + 91774) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 45887) = 147456 * k + 137662 := by
    unfold C
    simp [show (49152 * k + 45887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 137662) = 73728 * k + 68831 := by
    unfold C
    simp [show (147456 * k + 137662) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 68831) = 221184 * k + 206494 := by
    unfold C
    simp [show (73728 * k + 68831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 206494) = 110592 * k + 103247 := by
    unfold C
    simp [show (221184 * k + 206494) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 103247) = 331776 * k + 309742 := by
    unfold C
    simp [show (110592 * k + 103247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 309742) = 165888 * k + 154871 := by
    unfold C
    simp [show (331776 * k + 309742) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 154871) = 497664 * k + 464614 := by
    unfold C
    simp [show (165888 * k + 154871) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 464614) = 248832 * k + 232307 := by
    unfold C
    simp [show (497664 * k + 464614) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 232307) = 746496 * k + 696922 := by
    unfold C
    simp [show (248832 * k + 232307) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 696922) = 373248 * k + 348461 := by
    unfold C
    simp [show (746496 * k + 696922) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 348461) = 1119744 * k + 1045384 := by
    unfold C
    simp [show (373248 * k + 348461) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 1045384) = 559872 * k + 522692 := by
    unfold C
    simp [show (1119744 * k + 1045384) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 522692) = 279936 * k + 261346 := by
    unfold C
    simp [show (559872 * k + 522692) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 261346) = 139968 * k + 130673 := by
    unfold C
    simp [show (279936 * k + 261346) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 130673) = 419904 * k + 392020 := by
    unfold C
    simp [show (139968 * k + 130673) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 392020) = 209952 * k + 196010 := by
    unfold C
    simp [show (419904 * k + 392020) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 196010) = 104976 * k + 98005 := by
    unfold C
    simp [show (209952 * k + 196010) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 98005) = 314928 * k + 294016 := by
    unfold C
    simp [show (104976 * k + 98005) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 294016) = 157464 * k + 147008 := by
    unfold C
    simp [show (314928 * k + 294016) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 147008) = 78732 * k + 73504 := by
    unfold C
    simp [show (157464 * k + 147008) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 73504) = 39366 * k + 36752 := by
    unfold C
    simp [show (78732 * k + 73504) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 36752) = 19683 * k + 18376 := by
    unfold C
    simp [show (39366 * k + 36752) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 30591) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 30591)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_28703
#print axioms descent_mod32768_28879
#print axioms descent_mod32768_28999
#print axioms descent_mod32768_29467
#print axioms descent_mod32768_29743
#print axioms descent_mod32768_29863
#print axioms descent_mod32768_30311
#print axioms descent_mod32768_30591

end CollatzM15ShardT
