import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardM

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_17767 : ∀ k : Nat, iterate (32768 * k + 17767) 24 = 19683 * k + 10673 ∧ 19683 * k + 10673 < 32768 * k + 17767 := by
  intro k
  have h1 : C (32768 * k + 17767) = 98304 * k + 53302 := by
    unfold C
    simp [show (32768 * k + 17767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 53302) = 49152 * k + 26651 := by
    unfold C
    simp [show (98304 * k + 53302) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 26651) = 147456 * k + 79954 := by
    unfold C
    simp [show (49152 * k + 26651) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 79954) = 73728 * k + 39977 := by
    unfold C
    simp [show (147456 * k + 79954) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 39977) = 221184 * k + 119932 := by
    unfold C
    simp [show (73728 * k + 39977) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 119932) = 110592 * k + 59966 := by
    unfold C
    simp [show (221184 * k + 119932) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 59966) = 55296 * k + 29983 := by
    unfold C
    simp [show (110592 * k + 59966) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 29983) = 165888 * k + 89950 := by
    unfold C
    simp [show (55296 * k + 29983) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 89950) = 82944 * k + 44975 := by
    unfold C
    simp [show (165888 * k + 89950) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 44975) = 248832 * k + 134926 := by
    unfold C
    simp [show (82944 * k + 44975) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 134926) = 124416 * k + 67463 := by
    unfold C
    simp [show (248832 * k + 134926) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 67463) = 373248 * k + 202390 := by
    unfold C
    simp [show (124416 * k + 67463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 202390) = 186624 * k + 101195 := by
    unfold C
    simp [show (373248 * k + 202390) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 101195) = 559872 * k + 303586 := by
    unfold C
    simp [show (186624 * k + 101195) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 303586) = 279936 * k + 151793 := by
    unfold C
    simp [show (559872 * k + 303586) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 151793) = 839808 * k + 455380 := by
    unfold C
    simp [show (279936 * k + 151793) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 455380) = 419904 * k + 227690 := by
    unfold C
    simp [show (839808 * k + 455380) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 227690) = 209952 * k + 113845 := by
    unfold C
    simp [show (419904 * k + 227690) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 113845) = 629856 * k + 341536 := by
    unfold C
    simp [show (209952 * k + 113845) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 341536) = 314928 * k + 170768 := by
    unfold C
    simp [show (629856 * k + 341536) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 170768) = 157464 * k + 85384 := by
    unfold C
    simp [show (314928 * k + 170768) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 85384) = 78732 * k + 42692 := by
    unfold C
    simp [show (157464 * k + 85384) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 42692) = 39366 * k + 21346 := by
    unfold C
    simp [show (78732 * k + 42692) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 21346) = 19683 * k + 10673 := by
    unfold C
    simp [show (39366 * k + 21346) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 17767) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 17767)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_18011 : ∀ k : Nat, iterate (32768 * k + 18011) 24 = 19683 * k + 10820 ∧ 19683 * k + 10820 < 32768 * k + 18011 := by
  intro k
  have h1 : C (32768 * k + 18011) = 98304 * k + 54034 := by
    unfold C
    simp [show (32768 * k + 18011) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 54034) = 49152 * k + 27017 := by
    unfold C
    simp [show (98304 * k + 54034) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 27017) = 147456 * k + 81052 := by
    unfold C
    simp [show (49152 * k + 27017) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 81052) = 73728 * k + 40526 := by
    unfold C
    simp [show (147456 * k + 81052) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 40526) = 36864 * k + 20263 := by
    unfold C
    simp [show (73728 * k + 40526) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 20263) = 110592 * k + 60790 := by
    unfold C
    simp [show (36864 * k + 20263) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 60790) = 55296 * k + 30395 := by
    unfold C
    simp [show (110592 * k + 60790) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 30395) = 165888 * k + 91186 := by
    unfold C
    simp [show (55296 * k + 30395) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 91186) = 82944 * k + 45593 := by
    unfold C
    simp [show (165888 * k + 91186) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 45593) = 248832 * k + 136780 := by
    unfold C
    simp [show (82944 * k + 45593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 136780) = 124416 * k + 68390 := by
    unfold C
    simp [show (248832 * k + 136780) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 68390) = 62208 * k + 34195 := by
    unfold C
    simp [show (124416 * k + 68390) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 34195) = 186624 * k + 102586 := by
    unfold C
    simp [show (62208 * k + 34195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 102586) = 93312 * k + 51293 := by
    unfold C
    simp [show (186624 * k + 102586) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 51293) = 279936 * k + 153880 := by
    unfold C
    simp [show (93312 * k + 51293) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 153880) = 139968 * k + 76940 := by
    unfold C
    simp [show (279936 * k + 153880) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 76940) = 69984 * k + 38470 := by
    unfold C
    simp [show (139968 * k + 76940) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 38470) = 34992 * k + 19235 := by
    unfold C
    simp [show (69984 * k + 38470) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 19235) = 104976 * k + 57706 := by
    unfold C
    simp [show (34992 * k + 19235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 57706) = 52488 * k + 28853 := by
    unfold C
    simp [show (104976 * k + 57706) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 28853) = 157464 * k + 86560 := by
    unfold C
    simp [show (52488 * k + 28853) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 86560) = 78732 * k + 43280 := by
    unfold C
    simp [show (157464 * k + 86560) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 43280) = 39366 * k + 21640 := by
    unfold C
    simp [show (78732 * k + 43280) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 21640) = 19683 * k + 10820 := by
    unfold C
    simp [show (39366 * k + 21640) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 18011) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 18011)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_18639 : ∀ k : Nat, iterate (32768 * k + 18639) 24 = 19683 * k + 11197 ∧ 19683 * k + 11197 < 32768 * k + 18639 := by
  intro k
  have h1 : C (32768 * k + 18639) = 98304 * k + 55918 := by
    unfold C
    simp [show (32768 * k + 18639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 55918) = 49152 * k + 27959 := by
    unfold C
    simp [show (98304 * k + 55918) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 27959) = 147456 * k + 83878 := by
    unfold C
    simp [show (49152 * k + 27959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 83878) = 73728 * k + 41939 := by
    unfold C
    simp [show (147456 * k + 83878) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 41939) = 221184 * k + 125818 := by
    unfold C
    simp [show (73728 * k + 41939) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 125818) = 110592 * k + 62909 := by
    unfold C
    simp [show (221184 * k + 125818) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 62909) = 331776 * k + 188728 := by
    unfold C
    simp [show (110592 * k + 62909) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 188728) = 165888 * k + 94364 := by
    unfold C
    simp [show (331776 * k + 188728) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 94364) = 82944 * k + 47182 := by
    unfold C
    simp [show (165888 * k + 94364) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 47182) = 41472 * k + 23591 := by
    unfold C
    simp [show (82944 * k + 47182) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 23591) = 124416 * k + 70774 := by
    unfold C
    simp [show (41472 * k + 23591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 70774) = 62208 * k + 35387 := by
    unfold C
    simp [show (124416 * k + 70774) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 35387) = 186624 * k + 106162 := by
    unfold C
    simp [show (62208 * k + 35387) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 106162) = 93312 * k + 53081 := by
    unfold C
    simp [show (186624 * k + 106162) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 53081) = 279936 * k + 159244 := by
    unfold C
    simp [show (93312 * k + 53081) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 159244) = 139968 * k + 79622 := by
    unfold C
    simp [show (279936 * k + 159244) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 79622) = 69984 * k + 39811 := by
    unfold C
    simp [show (139968 * k + 79622) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 39811) = 209952 * k + 119434 := by
    unfold C
    simp [show (69984 * k + 39811) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 119434) = 104976 * k + 59717 := by
    unfold C
    simp [show (209952 * k + 119434) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 59717) = 314928 * k + 179152 := by
    unfold C
    simp [show (104976 * k + 59717) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 179152) = 157464 * k + 89576 := by
    unfold C
    simp [show (314928 * k + 179152) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 89576) = 78732 * k + 44788 := by
    unfold C
    simp [show (157464 * k + 89576) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 44788) = 39366 * k + 22394 := by
    unfold C
    simp [show (78732 * k + 44788) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 22394) = 19683 * k + 11197 := by
    unfold C
    simp [show (39366 * k + 22394) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 18639) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 18639)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_18751 : ∀ k : Nat, iterate (32768 * k + 18751) 24 = 19683 * k + 11264 ∧ 19683 * k + 11264 < 32768 * k + 18751 := by
  intro k
  have h1 : C (32768 * k + 18751) = 98304 * k + 56254 := by
    unfold C
    simp [show (32768 * k + 18751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 56254) = 49152 * k + 28127 := by
    unfold C
    simp [show (98304 * k + 56254) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 28127) = 147456 * k + 84382 := by
    unfold C
    simp [show (49152 * k + 28127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 84382) = 73728 * k + 42191 := by
    unfold C
    simp [show (147456 * k + 84382) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 42191) = 221184 * k + 126574 := by
    unfold C
    simp [show (73728 * k + 42191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 126574) = 110592 * k + 63287 := by
    unfold C
    simp [show (221184 * k + 126574) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 63287) = 331776 * k + 189862 := by
    unfold C
    simp [show (110592 * k + 63287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 189862) = 165888 * k + 94931 := by
    unfold C
    simp [show (331776 * k + 189862) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 94931) = 497664 * k + 284794 := by
    unfold C
    simp [show (165888 * k + 94931) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 284794) = 248832 * k + 142397 := by
    unfold C
    simp [show (497664 * k + 284794) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 142397) = 746496 * k + 427192 := by
    unfold C
    simp [show (248832 * k + 142397) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 427192) = 373248 * k + 213596 := by
    unfold C
    simp [show (746496 * k + 427192) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 213596) = 186624 * k + 106798 := by
    unfold C
    simp [show (373248 * k + 213596) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 106798) = 93312 * k + 53399 := by
    unfold C
    simp [show (186624 * k + 106798) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 53399) = 279936 * k + 160198 := by
    unfold C
    simp [show (93312 * k + 53399) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 160198) = 139968 * k + 80099 := by
    unfold C
    simp [show (279936 * k + 160198) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 80099) = 419904 * k + 240298 := by
    unfold C
    simp [show (139968 * k + 80099) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 240298) = 209952 * k + 120149 := by
    unfold C
    simp [show (419904 * k + 240298) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 120149) = 629856 * k + 360448 := by
    unfold C
    simp [show (209952 * k + 120149) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 360448) = 314928 * k + 180224 := by
    unfold C
    simp [show (629856 * k + 360448) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 180224) = 157464 * k + 90112 := by
    unfold C
    simp [show (314928 * k + 180224) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 90112) = 78732 * k + 45056 := by
    unfold C
    simp [show (157464 * k + 90112) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 45056) = 39366 * k + 22528 := by
    unfold C
    simp [show (78732 * k + 45056) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 22528) = 19683 * k + 11264 := by
    unfold C
    simp [show (39366 * k + 22528) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 18751) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 18751)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_18895 : ∀ k : Nat, iterate (32768 * k + 18895) 24 = 19683 * k + 11351 ∧ 19683 * k + 11351 < 32768 * k + 18895 := by
  intro k
  have h1 : C (32768 * k + 18895) = 98304 * k + 56686 := by
    unfold C
    simp [show (32768 * k + 18895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 56686) = 49152 * k + 28343 := by
    unfold C
    simp [show (98304 * k + 56686) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 28343) = 147456 * k + 85030 := by
    unfold C
    simp [show (49152 * k + 28343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 85030) = 73728 * k + 42515 := by
    unfold C
    simp [show (147456 * k + 85030) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 42515) = 221184 * k + 127546 := by
    unfold C
    simp [show (73728 * k + 42515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 127546) = 110592 * k + 63773 := by
    unfold C
    simp [show (221184 * k + 127546) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 63773) = 331776 * k + 191320 := by
    unfold C
    simp [show (110592 * k + 63773) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 191320) = 165888 * k + 95660 := by
    unfold C
    simp [show (331776 * k + 191320) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 95660) = 82944 * k + 47830 := by
    unfold C
    simp [show (165888 * k + 95660) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 47830) = 41472 * k + 23915 := by
    unfold C
    simp [show (82944 * k + 47830) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 23915) = 124416 * k + 71746 := by
    unfold C
    simp [show (41472 * k + 23915) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 71746) = 62208 * k + 35873 := by
    unfold C
    simp [show (124416 * k + 71746) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 35873) = 186624 * k + 107620 := by
    unfold C
    simp [show (62208 * k + 35873) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 107620) = 93312 * k + 53810 := by
    unfold C
    simp [show (186624 * k + 107620) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 53810) = 46656 * k + 26905 := by
    unfold C
    simp [show (93312 * k + 53810) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 26905) = 139968 * k + 80716 := by
    unfold C
    simp [show (46656 * k + 26905) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 80716) = 69984 * k + 40358 := by
    unfold C
    simp [show (139968 * k + 80716) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 40358) = 34992 * k + 20179 := by
    unfold C
    simp [show (69984 * k + 40358) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 20179) = 104976 * k + 60538 := by
    unfold C
    simp [show (34992 * k + 20179) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 60538) = 52488 * k + 30269 := by
    unfold C
    simp [show (104976 * k + 60538) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 30269) = 157464 * k + 90808 := by
    unfold C
    simp [show (52488 * k + 30269) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 90808) = 78732 * k + 45404 := by
    unfold C
    simp [show (157464 * k + 90808) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 45404) = 39366 * k + 22702 := by
    unfold C
    simp [show (78732 * k + 45404) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 22702) = 19683 * k + 11351 := by
    unfold C
    simp [show (39366 * k + 22702) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 18895) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 18895)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_19035 : ∀ k : Nat, iterate (32768 * k + 19035) 24 = 19683 * k + 11435 ∧ 19683 * k + 11435 < 32768 * k + 19035 := by
  intro k
  have h1 : C (32768 * k + 19035) = 98304 * k + 57106 := by
    unfold C
    simp [show (32768 * k + 19035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 57106) = 49152 * k + 28553 := by
    unfold C
    simp [show (98304 * k + 57106) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 28553) = 147456 * k + 85660 := by
    unfold C
    simp [show (49152 * k + 28553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 85660) = 73728 * k + 42830 := by
    unfold C
    simp [show (147456 * k + 85660) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 42830) = 36864 * k + 21415 := by
    unfold C
    simp [show (73728 * k + 42830) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 21415) = 110592 * k + 64246 := by
    unfold C
    simp [show (36864 * k + 21415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 64246) = 55296 * k + 32123 := by
    unfold C
    simp [show (110592 * k + 64246) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 32123) = 165888 * k + 96370 := by
    unfold C
    simp [show (55296 * k + 32123) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 96370) = 82944 * k + 48185 := by
    unfold C
    simp [show (165888 * k + 96370) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 48185) = 248832 * k + 144556 := by
    unfold C
    simp [show (82944 * k + 48185) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 144556) = 124416 * k + 72278 := by
    unfold C
    simp [show (248832 * k + 144556) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 72278) = 62208 * k + 36139 := by
    unfold C
    simp [show (124416 * k + 72278) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 36139) = 186624 * k + 108418 := by
    unfold C
    simp [show (62208 * k + 36139) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 108418) = 93312 * k + 54209 := by
    unfold C
    simp [show (186624 * k + 108418) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 54209) = 279936 * k + 162628 := by
    unfold C
    simp [show (93312 * k + 54209) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 162628) = 139968 * k + 81314 := by
    unfold C
    simp [show (279936 * k + 162628) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 81314) = 69984 * k + 40657 := by
    unfold C
    simp [show (139968 * k + 81314) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 40657) = 209952 * k + 121972 := by
    unfold C
    simp [show (69984 * k + 40657) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 121972) = 104976 * k + 60986 := by
    unfold C
    simp [show (209952 * k + 121972) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 60986) = 52488 * k + 30493 := by
    unfold C
    simp [show (104976 * k + 60986) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 30493) = 157464 * k + 91480 := by
    unfold C
    simp [show (52488 * k + 30493) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 91480) = 78732 * k + 45740 := by
    unfold C
    simp [show (157464 * k + 91480) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 45740) = 39366 * k + 22870 := by
    unfold C
    simp [show (78732 * k + 45740) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 22870) = 19683 * k + 11435 := by
    unfold C
    simp [show (39366 * k + 22870) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 19035) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 19035)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_19199 : ∀ k : Nat, iterate (32768 * k + 19199) 24 = 19683 * k + 11533 ∧ 19683 * k + 11533 < 32768 * k + 19199 := by
  intro k
  have h1 : C (32768 * k + 19199) = 98304 * k + 57598 := by
    unfold C
    simp [show (32768 * k + 19199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 57598) = 49152 * k + 28799 := by
    unfold C
    simp [show (98304 * k + 57598) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 28799) = 147456 * k + 86398 := by
    unfold C
    simp [show (49152 * k + 28799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 86398) = 73728 * k + 43199 := by
    unfold C
    simp [show (147456 * k + 86398) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 43199) = 221184 * k + 129598 := by
    unfold C
    simp [show (73728 * k + 43199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 129598) = 110592 * k + 64799 := by
    unfold C
    simp [show (221184 * k + 129598) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 64799) = 331776 * k + 194398 := by
    unfold C
    simp [show (110592 * k + 64799) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 194398) = 165888 * k + 97199 := by
    unfold C
    simp [show (331776 * k + 194398) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 97199) = 497664 * k + 291598 := by
    unfold C
    simp [show (165888 * k + 97199) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 291598) = 248832 * k + 145799 := by
    unfold C
    simp [show (497664 * k + 291598) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 145799) = 746496 * k + 437398 := by
    unfold C
    simp [show (248832 * k + 145799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 437398) = 373248 * k + 218699 := by
    unfold C
    simp [show (746496 * k + 437398) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 218699) = 1119744 * k + 656098 := by
    unfold C
    simp [show (373248 * k + 218699) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 656098) = 559872 * k + 328049 := by
    unfold C
    simp [show (1119744 * k + 656098) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 328049) = 1679616 * k + 984148 := by
    unfold C
    simp [show (559872 * k + 328049) % 2 ≠ 0 by omega]
    omega
  have h16 : C (1679616 * k + 984148) = 839808 * k + 492074 := by
    unfold C
    simp [show (1679616 * k + 984148) % 2 = 0 by omega]
    omega
  have h17 : C (839808 * k + 492074) = 419904 * k + 246037 := by
    unfold C
    simp [show (839808 * k + 492074) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 246037) = 1259712 * k + 738112 := by
    unfold C
    simp [show (419904 * k + 246037) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1259712 * k + 738112) = 629856 * k + 369056 := by
    unfold C
    simp [show (1259712 * k + 738112) % 2 = 0 by omega]
    omega
  have h20 : C (629856 * k + 369056) = 314928 * k + 184528 := by
    unfold C
    simp [show (629856 * k + 369056) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 184528) = 157464 * k + 92264 := by
    unfold C
    simp [show (314928 * k + 184528) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 92264) = 78732 * k + 46132 := by
    unfold C
    simp [show (157464 * k + 92264) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 46132) = 39366 * k + 23066 := by
    unfold C
    simp [show (78732 * k + 46132) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 23066) = 19683 * k + 11533 := by
    unfold C
    simp [show (39366 * k + 23066) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 19199) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 19199)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_19623 : ∀ k : Nat, iterate (32768 * k + 19623) 24 = 19683 * k + 11788 ∧ 19683 * k + 11788 < 32768 * k + 19623 := by
  intro k
  have h1 : C (32768 * k + 19623) = 98304 * k + 58870 := by
    unfold C
    simp [show (32768 * k + 19623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 58870) = 49152 * k + 29435 := by
    unfold C
    simp [show (98304 * k + 58870) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 29435) = 147456 * k + 88306 := by
    unfold C
    simp [show (49152 * k + 29435) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 88306) = 73728 * k + 44153 := by
    unfold C
    simp [show (147456 * k + 88306) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 44153) = 221184 * k + 132460 := by
    unfold C
    simp [show (73728 * k + 44153) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 132460) = 110592 * k + 66230 := by
    unfold C
    simp [show (221184 * k + 132460) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 66230) = 55296 * k + 33115 := by
    unfold C
    simp [show (110592 * k + 66230) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 33115) = 165888 * k + 99346 := by
    unfold C
    simp [show (55296 * k + 33115) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 99346) = 82944 * k + 49673 := by
    unfold C
    simp [show (165888 * k + 99346) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 49673) = 248832 * k + 149020 := by
    unfold C
    simp [show (82944 * k + 49673) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 149020) = 124416 * k + 74510 := by
    unfold C
    simp [show (248832 * k + 149020) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 74510) = 62208 * k + 37255 := by
    unfold C
    simp [show (124416 * k + 74510) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 37255) = 186624 * k + 111766 := by
    unfold C
    simp [show (62208 * k + 37255) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 111766) = 93312 * k + 55883 := by
    unfold C
    simp [show (186624 * k + 111766) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 55883) = 279936 * k + 167650 := by
    unfold C
    simp [show (93312 * k + 55883) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 167650) = 139968 * k + 83825 := by
    unfold C
    simp [show (279936 * k + 167650) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 83825) = 419904 * k + 251476 := by
    unfold C
    simp [show (139968 * k + 83825) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 251476) = 209952 * k + 125738 := by
    unfold C
    simp [show (419904 * k + 251476) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 125738) = 104976 * k + 62869 := by
    unfold C
    simp [show (209952 * k + 125738) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 62869) = 314928 * k + 188608 := by
    unfold C
    simp [show (104976 * k + 62869) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 188608) = 157464 * k + 94304 := by
    unfold C
    simp [show (314928 * k + 188608) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 94304) = 78732 * k + 47152 := by
    unfold C
    simp [show (157464 * k + 94304) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 47152) = 39366 * k + 23576 := by
    unfold C
    simp [show (78732 * k + 47152) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 23576) = 19683 * k + 11788 := by
    unfold C
    simp [show (39366 * k + 23576) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 19623) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 19623)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_17767
#print axioms descent_mod32768_18011
#print axioms descent_mod32768_18639
#print axioms descent_mod32768_18751
#print axioms descent_mod32768_18895
#print axioms descent_mod32768_19035
#print axioms descent_mod32768_19199
#print axioms descent_mod32768_19623

end CollatzM15ShardM
