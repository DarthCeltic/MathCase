import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardV

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_32155 : ∀ k : Nat, iterate (32768 * k + 32155) 24 = 19683 * k + 19316 ∧ 19683 * k + 19316 < 32768 * k + 32155 := by
  intro k
  have h1 : C (32768 * k + 32155) = 98304 * k + 96466 := by
    unfold C
    simp [show (32768 * k + 32155) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 96466) = 49152 * k + 48233 := by
    unfold C
    simp [show (98304 * k + 96466) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 48233) = 147456 * k + 144700 := by
    unfold C
    simp [show (49152 * k + 48233) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 144700) = 73728 * k + 72350 := by
    unfold C
    simp [show (147456 * k + 144700) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 72350) = 36864 * k + 36175 := by
    unfold C
    simp [show (73728 * k + 72350) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 36175) = 110592 * k + 108526 := by
    unfold C
    simp [show (36864 * k + 36175) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 108526) = 55296 * k + 54263 := by
    unfold C
    simp [show (110592 * k + 108526) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 54263) = 165888 * k + 162790 := by
    unfold C
    simp [show (55296 * k + 54263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 162790) = 82944 * k + 81395 := by
    unfold C
    simp [show (165888 * k + 162790) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 81395) = 248832 * k + 244186 := by
    unfold C
    simp [show (82944 * k + 81395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 244186) = 124416 * k + 122093 := by
    unfold C
    simp [show (248832 * k + 244186) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 122093) = 373248 * k + 366280 := by
    unfold C
    simp [show (124416 * k + 122093) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 366280) = 186624 * k + 183140 := by
    unfold C
    simp [show (373248 * k + 366280) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 183140) = 93312 * k + 91570 := by
    unfold C
    simp [show (186624 * k + 183140) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 91570) = 46656 * k + 45785 := by
    unfold C
    simp [show (93312 * k + 91570) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 45785) = 139968 * k + 137356 := by
    unfold C
    simp [show (46656 * k + 45785) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 137356) = 69984 * k + 68678 := by
    unfold C
    simp [show (139968 * k + 137356) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 68678) = 34992 * k + 34339 := by
    unfold C
    simp [show (69984 * k + 68678) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 34339) = 104976 * k + 103018 := by
    unfold C
    simp [show (34992 * k + 34339) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 103018) = 52488 * k + 51509 := by
    unfold C
    simp [show (104976 * k + 103018) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 51509) = 157464 * k + 154528 := by
    unfold C
    simp [show (52488 * k + 51509) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 154528) = 78732 * k + 77264 := by
    unfold C
    simp [show (157464 * k + 154528) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 77264) = 39366 * k + 38632 := by
    unfold C
    simp [show (78732 * k + 77264) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 38632) = 19683 * k + 19316 := by
    unfold C
    simp [show (39366 * k + 38632) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 32155) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 32155)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_32239 : ∀ k : Nat, iterate (32768 * k + 32239) 24 = 19683 * k + 19366 ∧ 19683 * k + 19366 < 32768 * k + 32239 := by
  intro k
  have h1 : C (32768 * k + 32239) = 98304 * k + 96718 := by
    unfold C
    simp [show (32768 * k + 32239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 96718) = 49152 * k + 48359 := by
    unfold C
    simp [show (98304 * k + 96718) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 48359) = 147456 * k + 145078 := by
    unfold C
    simp [show (49152 * k + 48359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 145078) = 73728 * k + 72539 := by
    unfold C
    simp [show (147456 * k + 145078) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 72539) = 221184 * k + 217618 := by
    unfold C
    simp [show (73728 * k + 72539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 217618) = 110592 * k + 108809 := by
    unfold C
    simp [show (221184 * k + 217618) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 108809) = 331776 * k + 326428 := by
    unfold C
    simp [show (110592 * k + 108809) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 326428) = 165888 * k + 163214 := by
    unfold C
    simp [show (331776 * k + 326428) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 163214) = 82944 * k + 81607 := by
    unfold C
    simp [show (165888 * k + 163214) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 81607) = 248832 * k + 244822 := by
    unfold C
    simp [show (82944 * k + 81607) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 244822) = 124416 * k + 122411 := by
    unfold C
    simp [show (248832 * k + 244822) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 122411) = 373248 * k + 367234 := by
    unfold C
    simp [show (124416 * k + 122411) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 367234) = 186624 * k + 183617 := by
    unfold C
    simp [show (373248 * k + 367234) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 183617) = 559872 * k + 550852 := by
    unfold C
    simp [show (186624 * k + 183617) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 550852) = 279936 * k + 275426 := by
    unfold C
    simp [show (559872 * k + 550852) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 275426) = 139968 * k + 137713 := by
    unfold C
    simp [show (279936 * k + 275426) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 137713) = 419904 * k + 413140 := by
    unfold C
    simp [show (139968 * k + 137713) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 413140) = 209952 * k + 206570 := by
    unfold C
    simp [show (419904 * k + 413140) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 206570) = 104976 * k + 103285 := by
    unfold C
    simp [show (209952 * k + 206570) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 103285) = 314928 * k + 309856 := by
    unfold C
    simp [show (104976 * k + 103285) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 309856) = 157464 * k + 154928 := by
    unfold C
    simp [show (314928 * k + 309856) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 154928) = 78732 * k + 77464 := by
    unfold C
    simp [show (157464 * k + 154928) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 77464) = 39366 * k + 38732 := by
    unfold C
    simp [show (78732 * k + 77464) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 38732) = 19683 * k + 19366 := by
    unfold C
    simp [show (39366 * k + 38732) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 32239) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 32239)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_32575 : ∀ k : Nat, iterate (32768 * k + 32575) 24 = 19683 * k + 19568 ∧ 19683 * k + 19568 < 32768 * k + 32575 := by
  intro k
  have h1 : C (32768 * k + 32575) = 98304 * k + 97726 := by
    unfold C
    simp [show (32768 * k + 32575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 97726) = 49152 * k + 48863 := by
    unfold C
    simp [show (98304 * k + 97726) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 48863) = 147456 * k + 146590 := by
    unfold C
    simp [show (49152 * k + 48863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 146590) = 73728 * k + 73295 := by
    unfold C
    simp [show (147456 * k + 146590) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 73295) = 221184 * k + 219886 := by
    unfold C
    simp [show (73728 * k + 73295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 219886) = 110592 * k + 109943 := by
    unfold C
    simp [show (221184 * k + 219886) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 109943) = 331776 * k + 329830 := by
    unfold C
    simp [show (110592 * k + 109943) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 329830) = 165888 * k + 164915 := by
    unfold C
    simp [show (331776 * k + 329830) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 164915) = 497664 * k + 494746 := by
    unfold C
    simp [show (165888 * k + 164915) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 494746) = 248832 * k + 247373 := by
    unfold C
    simp [show (497664 * k + 494746) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 247373) = 746496 * k + 742120 := by
    unfold C
    simp [show (248832 * k + 247373) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 742120) = 373248 * k + 371060 := by
    unfold C
    simp [show (746496 * k + 742120) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 371060) = 186624 * k + 185530 := by
    unfold C
    simp [show (373248 * k + 371060) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 185530) = 93312 * k + 92765 := by
    unfold C
    simp [show (186624 * k + 185530) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 92765) = 279936 * k + 278296 := by
    unfold C
    simp [show (93312 * k + 92765) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 278296) = 139968 * k + 139148 := by
    unfold C
    simp [show (279936 * k + 278296) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 139148) = 69984 * k + 69574 := by
    unfold C
    simp [show (139968 * k + 139148) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 69574) = 34992 * k + 34787 := by
    unfold C
    simp [show (69984 * k + 69574) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 34787) = 104976 * k + 104362 := by
    unfold C
    simp [show (34992 * k + 34787) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 104362) = 52488 * k + 52181 := by
    unfold C
    simp [show (104976 * k + 104362) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 52181) = 157464 * k + 156544 := by
    unfold C
    simp [show (52488 * k + 52181) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 156544) = 78732 * k + 78272 := by
    unfold C
    simp [show (157464 * k + 156544) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 78272) = 39366 * k + 39136 := by
    unfold C
    simp [show (78732 * k + 78272) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 39136) = 19683 * k + 19568 := by
    unfold C
    simp [show (39366 * k + 39136) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 32575) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 32575)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_32603 : ∀ k : Nat, iterate (32768 * k + 32603) 24 = 19683 * k + 19585 ∧ 19683 * k + 19585 < 32768 * k + 32603 := by
  intro k
  have h1 : C (32768 * k + 32603) = 98304 * k + 97810 := by
    unfold C
    simp [show (32768 * k + 32603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 97810) = 49152 * k + 48905 := by
    unfold C
    simp [show (98304 * k + 97810) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 48905) = 147456 * k + 146716 := by
    unfold C
    simp [show (49152 * k + 48905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 146716) = 73728 * k + 73358 := by
    unfold C
    simp [show (147456 * k + 146716) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 73358) = 36864 * k + 36679 := by
    unfold C
    simp [show (73728 * k + 73358) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 36679) = 110592 * k + 110038 := by
    unfold C
    simp [show (36864 * k + 36679) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 110038) = 55296 * k + 55019 := by
    unfold C
    simp [show (110592 * k + 110038) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 55019) = 165888 * k + 165058 := by
    unfold C
    simp [show (55296 * k + 55019) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 165058) = 82944 * k + 82529 := by
    unfold C
    simp [show (165888 * k + 165058) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 82529) = 248832 * k + 247588 := by
    unfold C
    simp [show (82944 * k + 82529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 247588) = 124416 * k + 123794 := by
    unfold C
    simp [show (248832 * k + 247588) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 123794) = 62208 * k + 61897 := by
    unfold C
    simp [show (124416 * k + 123794) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 61897) = 186624 * k + 185692 := by
    unfold C
    simp [show (62208 * k + 61897) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 185692) = 93312 * k + 92846 := by
    unfold C
    simp [show (186624 * k + 185692) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 92846) = 46656 * k + 46423 := by
    unfold C
    simp [show (93312 * k + 92846) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 46423) = 139968 * k + 139270 := by
    unfold C
    simp [show (46656 * k + 46423) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 139270) = 69984 * k + 69635 := by
    unfold C
    simp [show (139968 * k + 139270) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 69635) = 209952 * k + 208906 := by
    unfold C
    simp [show (69984 * k + 69635) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 208906) = 104976 * k + 104453 := by
    unfold C
    simp [show (209952 * k + 208906) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 104453) = 314928 * k + 313360 := by
    unfold C
    simp [show (104976 * k + 104453) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 313360) = 157464 * k + 156680 := by
    unfold C
    simp [show (314928 * k + 313360) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 156680) = 78732 * k + 78340 := by
    unfold C
    simp [show (157464 * k + 156680) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 78340) = 39366 * k + 39170 := by
    unfold C
    simp [show (78732 * k + 78340) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 39170) = 19683 * k + 19585 := by
    unfold C
    simp [show (39366 * k + 39170) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 32603) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 32603)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_32155
#print axioms descent_mod32768_32239
#print axioms descent_mod32768_32575
#print axioms descent_mod32768_32603

end CollatzM15ShardV
